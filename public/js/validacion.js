$(function(){
	$('.select2').select2({
		width: '100%'
	});

	$('#region').change(function(){
		// Buscar las comunas segun la region que selecciones
		if ($(this).val() != ''){
			data = {
                options: {
                    url: `./votacion/getComunas`,
                    type: 'post'
                },
                data: {
                    i_idregion : $(this).val(),
                },
                appendTo: 'body'
            }

            ajaxHTTP(data)
			.then(res => {
            	if (res.length > 0){
            		comunas = '<option value="">Seleccione ...</option>'
            		$.each(res, function(item,value){
            			comunas += `<option value="${value.i_idcomuna}">${value.v_nombre}</option>`
            		})

            		$('#comuna').empty().append(comunas)
            		$('#comuna').select2('destroy').select2({width: '100%'});
            	}
            })
			.catch(err =>{
				alert(err)
			})
		}else{
			$('#comuna').empty().append('<option value="">Seleccione ...</option>')
		}
	})



	$('#votar').click(function(){
		// validaciones
		$('#mensaje').empty()
		var name = validarNull('nombres', 'El campo Nombre y Apellido se encuentra vacio.')
		var alias = validarAlias('alias', 'El campo Alias debe contener mas de 5 caracteres y incluir al menos un numero.')
		var rut = validarRut('rut')
		var email = validarMail('email')
		var region = validarNull('region', 'Debe seleccionar una Region.')
		var comuna = validarNull('comuna', 'Debe seleccionar una Comuna.')
		var candidato = validarNull('candidato', 'Debe seleccionar un candidato.')
		var nosotros = validarNosotros('nosotros')

		if (name && alias && rut && email && region && comuna && candidato && nosotros){
			data = {
                options: {
                    url: `./votacion/registrarVoto`,
                    type: 'post'
                },
                data: {
                    v_nombres : name ,
                    v_alias : alias ,
                    v_rut : rut ,
                    v_email : email ,
                    i_idregion : region ,
                    i_idcomuna : comuna ,
                    i_idcandidato : candidato ,
                    v_nosotros : nosotros.join(',') 
                },
                appendTo: 'body'
            }

			ajaxHTTP(data)
			.then(res => {

            	if (res.registro == 'success'){
            		$('#nombres').val('')
            		$('#alias').val('')
            		$('#rut').val('')
            		$('#email').val('')
            		$('#region').val('').trigger('change')
            		$('#candidato').val('').trigger('change')

            		$('#comuna').empty().append('<option value="">Seleccione ...</option>')

            		if(res.votos.length > 0){
            			html = ''
            			$.each(res.votos, function(item,value){
            				html += `
	            				<tr>
									<td>${value.v_nombres}</td>
									<td>${value.v_alias}</td>
									<td>${value.v_rut}</td>
									<td>${value.v_nosotros}</td>
									<td>${value.t_creacion}</td>
									<td>${value.v_nombre_region}</td>
									<td>${value.v_nombre_comuna}</td>
									<td>${value.v_nombres_candidato}</td>
								</tr>`
            			})

            			$('tbody').empty().append(html)

            		}

            	}else if (res.registro == 'danger'){
            		$('#mensaje').empty().append('Este rut ya ha realizado su voto.')
            	}
            })
			.catch(err =>{
				console.log(err)
			})
		}
	})
})



// ******************************************************
// Validaciones para cada campo del formulario
// ******************************************************


const validarNosotros = (identificador) => {
	$('#mensaje').append('<div id="msgNosotros"></div>')
	$(`label[for="${identificador}"]`).removeClass('text-danger')

	var checkboxesMarcados = $('input[name="nosotros"]:checked').length;

    // Validar que al menos dos checkboxes estén marcados
    if (checkboxesMarcados < 2) {
      	$(`label[for="${identificador}"]`).addClass('text-danger')
		$('#msgNosotros').empty().append('Debe seleccionar al menos 2 opciones de como se entero.')
      	return false;
    }

    $('#msgNosotros').empty()
    var valoresSeleccionados = $('input[name="nosotros"]:checked').map(function() {
      return $(this).val();
    }).get(); 
    return valoresSeleccionados
}

const validarNull = (identificador,mensaje) => {
	$('#mensaje').append(`<div id="msg${identificador}"></div>`)
	$(`label[for="${identificador}"]`).removeClass('text-danger')

	if ($(`#${identificador}`).val() == '' || $(`#${identificador}`).val() == undefined){
		
		$(`label[for="${identificador}"]`).addClass('text-danger')
		$(`#msg${identificador}`).empty().append(mensaje)
		return false

	}

	$(`#msg${identificador}`).empty()
	return $(`#${identificador}`).val()
}


const validarAlias = (identificador,mensaje) => {
	$('#mensaje').append('<div id="msgAlias"></div>')
	$(`label[for="${identificador}"]`).removeClass('text-danger')

	var alias = $(`#${identificador}`).val()
	var regexNumero = /\d/

    // Validar la longitud del campo (más de 5 caracteres) y que contenga al menos un numero
    if (alias.length <= 5 || !regexNumero.test(alias)) {
      	$(`label[for="${identificador}"]`).addClass('text-danger')
		$('#msgAlias').empty().append(mensaje)
     	return false
    }

    $('#msgAlias').empty()
    return $(`#${identificador}`).val()
}


const validarMail = (identificador) => {
	$('#mensaje').append('<div id="msgMail"></div>')
	$(`label[for="${identificador}"]`).removeClass('text-danger')

	var email = $(`#${identificador}`).val()

	var regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    if (!regexEmail.test(email)) {
      	$(`label[for="${identificador}"]`).addClass('text-danger')
		$('#msgMail').empty().append('El formato de Email es incorrecto.')
      	return false
    }

    $('#msgMail').empty()
    return $(`#${identificador}`).val()
}

const validarRut = (identificador) => {
	$('#mensaje').append('<div id="msgRut"></div>')
	$(`label[for="${identificador}"]`).removeClass('text-danger')

	rut = $(`#${identificador}`).val()
	
	var regexRut = /^(\d{1,3}(?:\.\d{3})*)\-([\dkK])$/;
    
    if (!regexRut.test(rut)) {
      	$(`label[for="${identificador}"]`).addClass('text-danger')
		$('#msgRut').empty().append('El formato del rut es invalido.')
      	return false;
    }

    // Si el RUT tiene un formato válido, también podemos verificar el dígito verificador
    var rutLimpio = rut.replace(/[\.-]/g, ''); // Eliminamos puntos y guiones del RUT
    var dv = rutLimpio.slice(-1); // Obtenemos el dígito verificador
    var rutNumerico = parseInt(rutLimpio.slice(0, -1), 10); // Obtenemos el número del RUT

    if (calcularDigitoVerificador(rutNumerico).toUpperCase() !== dv.toUpperCase()) {
      	$(`label[for="${identificador}"]`).addClass('text-danger')
		$('#msgRut').empty().append('El RUT ingresado no es válido.')
      	return false;
    }

    $('#msgRut').empty()
    return $(`#${identificador}`).val()
} 

const calcularDigitoVerificador = rut => {
  	var suma = 0;
  	var multiplicador = 2;

  	while (rut > 0) {
    	suma += (rut % 10) * multiplicador;
    	rut = Math.floor(rut / 10);
    	multiplicador = multiplicador === 7 ? 2 : multiplicador + 1;
  	}

  	var resto = suma % 11;
  	return resto === 0 ? '0' : resto === 1 ? 'K' : (11 - resto).toString();
}


// ******************************************************
// Funcion para hacer las peticiones con AJAX
// ******************************************************

const ajaxHTTP = datos => {
	return new Promise((resolve,reject) => {
		$.ajax({
		    url			: datos.options.url,
		    type 		: datos.options.type,
		    dataType 	: 'json',
		    data 		: datos.data,
		    beforeSend : () => {
		    	// Mostrar un loading mientras se ejecuta la funcion.
                if (datos.appendTo != undefined){
                    if (datos.appendTo == 'body'){
                        $(`${datos.appendTo}`).append(`
                            <div class="modal in" id="loadingModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" style="display: block;background:rgba(0, 0, 0, 0.85);">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <center>
                                <h1 style="color: #fff;margin-top: 60px;font-size: 3em;font-weight: bold;">Cargando ...</h1>
                                </center>
                            </div>
                        </div>
                        `)
                    }
                }
		    }
	    })
	    .done((data)=>{
	    	$('#loadingModal').remove()
            $(`.loadingModal-${datos.appendTo}`).remove()
	    	resolve(data)
	    })
	    .fail((err)=>{
	    	$('#loadingModal').remove()
            $(`.loadingModal-${datos.appendTo}`).remove()
	    	reject(err)
	    })
	})
}
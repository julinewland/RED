import { validator } from "sequelize/types/lib/utils/validator-extras";

window.onload = function () {

var registracion = document.querySelector (".registracion");
registracion.onsubmit = function (aprobar) {

var nombre = document.getElementById ('nombre').value;
var email = document.getElementById ('email').value;
var fechaNacim = document.getElementById ('fechaNacim').value;
var contraseña = document.getElementById ('contr').value;
var pregunta = document.getElementById ('pregun').value;
var respuesta = document.getElementById ('respuesta').value;
var cantidadLengu = document.getElementById ('cantidadLengu');
  
if (nombre == "" || email == "" || fechaNacim == "" || contraseña == "" || pregunta == "" || respuesta == ""|| cantidadLengu == "")
{
    validar.preventDefault();
   // document.querySelector ("") .innerHTML= 
// setTimeout (funcion (){
 //   document.querySelector ("").style.display "" }, 3000)  
})

else {
    registracion.submit ()
}
}

}

}
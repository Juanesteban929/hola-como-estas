/Autor: Juan Esteban Moncayo/
/*const nombre = 'Juan esteban moncayo' ;
var tipo_doc = '1109543618' ;
let edad = 15;
console.log ('Hola '+nombre+' . Tu número de documento es: ' +tipo_doc+' . Tienes: '+edad);


let anyos = '15';
let otro = parseInt(anyos);
let comparacion = edad===anyos;
console.log (comparacion);
console.log (edad+anyos);
console.log (edad+otro);
console.log (otro>=edad);*/



//20-6-2006//

let suma = 0;
suma = suma + 20;
console.log(suma);
suma = suma + 0;
console.log(suma);
suma = suma + 6;
console.log(suma);
suma = suma + 2;
console.log(suma);
suma = suma + 0;
console.log(suma);
suma = suma + 0;
console.log(suma);
suma = suma + 6;
console.log(suma);

//creaer un programa que permita realizar operaciones ingresadas//

let nom = prompt("Ingresa tu nombre.");
let num1 = parseInt(prompt("Hola "+nom+" Ingresa un número"));
let num2 = parseInt(prompt("Ingresa otro número"));
let operacion = prompt("Elige que operacion quieres realizar: Sum

//creaer un programa que permita realizar operaciones ingresadas//

let nom = prompt("Ingresa tu nombre.");
let num1 = parseInt(prompt("Hola "+nom+" Ingresa un número"));
let num2 = parseInt(prompt("Ingresa otro número"));
let operacion = prompt("Elige que operacion quieres realizar: Suma, Resta, Divison, Multiplicacion");

if (operacion == "Suma") {
    let resul= num1 + num2;
    alert("El resultado es "+resul);
} 
    else if (operacion == "Resta") {
    let resul= num1 - num2;
    alert("El resultado es "+resul);
}
    else if (operacion == "Division") {
    let resul= num1 / num2;
    alert("El resultado es "+resul);
    }
        else if (operacion == "Multiplicacion") {
        let resul= num1 * num2;
        alert("El resultado es "+resul);
        }
            else {
                alert("Has ingresado un dato incorrecto");
            }

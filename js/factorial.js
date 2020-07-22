var x = parseInt(prompt("Ingresa un numero"));
var mensaje;
factorial(x);
function factorial(x) {
    if (x <= 0) {
        return mensaje = "no se puede sacar el factorial";
    }
    else {
        var result = x;
        for (var i = x - 1; i >= 1; i--) {
            result = result * i;
        }
        return mensaje = "El factorial de tu numero es " + result;
    }
}
document.write(mensaje);

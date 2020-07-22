var si_no;
var total;
var edad;
cuota(edad = prompt("Ingresa tu edad"));
function cuota(edad) {
    if (edad >= 65) {
        total = (800 * .40);
        return total;
    }
    if (edad >= 21) {
        si_no = prompt("tus padres tiene menbrecia");
        decision(si_no);
        function decision(si_no) {
            //no son socios
            if (si_no === "no") {
                total = (800 * .25);
                return total;
            }
            else {
                //si son socios
                total = (800 * .45);
                return total;
            }
        }
    }
}
document.write('Total a pagar: ' + total.toString());

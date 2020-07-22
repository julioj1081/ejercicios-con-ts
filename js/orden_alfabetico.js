var nombres = ["fernandez solano mendoza ", "viquez silva andres", "fernandez alvarado solano"];
var orden_alfa = nombres.sort();
document.write(orden_alfa.toString());
/////////////////////////////////////////////////////////////////////////////////////////////////////
var numbers = [4, 2, 5, 1, 3];
numbers.sort(function (a, b) {
    return a - b;
});
numbers.forEach(function (element) { return document.write(element + " "); });

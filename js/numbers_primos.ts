/*var cont:number = 1;
var cont2:number = 0;
var bandera:number = 0;

let x:any = prompt("Ingresa un numero");

 while(cont<=x){
        while(cont2 < cont){
        //residuo si da 0 no es un numero primo
        //si no lo es
        if(cont % cont2 == 0 && cont2 !=1 && cont2 != cont){
            bandera = 1;
        }
        cont2++;
    }
    
    if(bandera == 0){
        document.write(cont2+" ");
    }else{
        bandera = 0;
    }
    cont++;
    cont2 = 0;
}
 */

var n1;
n1 = parseInt(prompt("introduce un numero"));
var i=2;
var primo:boolean = true;

do{
    if(n1%i== 0){
        primo= false;
    }
    i++;
}while(i<n1);
if(primo == true){
    document.write("El numero "+n1+" es primo");
}else{
    document.write("El numero no es primo");
}



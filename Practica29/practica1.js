    var contador = 0;
    var coloresPosibles = ['black','blue','red','white','gold'];
    var azar = Math.round (Math.random() * coloresPosibles.length - 1);
    var colorEscogido = coloresPosibles[azar];
    var condicion_juego = false;
    var colorUsuario = "";
    var si_existe = false;
   
function juego(){

     do{
         contador = contador + 1;
       colorUsuario =  prompt("Intenta adivinar el color que estoy pensando, estos son los posibles "+coloresPosibles.sort());
         check();
        
    }while(condicion_juego == false);
}

function check(){
    si_existe = false;
    for(var i = 0; i<coloresPosibles.length;i++){
        
        if(colorUsuario == coloresPosibles[i] ){
            
            si_existe = true;
            
        }
    }
    if(si_existe == false){
        
        confirm("Su color no esta entre los disponibles, desea intentarlo otra vez?");
        
        
        
    }
    if(colorUsuario < colorEscogido && si_existe == true){
        
        alert("No has acertado, el color alfabeticamente es mayor");
        
    }
     if(colorUsuario > colorEscogido && si_existe == true){
        
        alert("No has acertado, el color alfabeticamente es menor");
    }
     if(colorUsuario == colorEscogido && si_existe == true){
        
         myBody=document.getElementsByTagName("body")[0];
         myBody.style.background=colorEscogido;
         alert("¡Has acertado!, has realizado "+contador+" intentos");
         condicion_juego = true;
    }
    
}
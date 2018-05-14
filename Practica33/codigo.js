function actioncheck(){

    var primerDato = "";
   var segundoDato = "";
    if(document.getElementById("same").checked){
       primerDato = document.getElementById("shippingName").value;
       segundoDato = document.getElementById("shippingZip").value;
       document.getElementById("billingName").value = primerDato;
       document.getElementById("billingZip").value = segundoDato;
       }else{
        
        document.getElementById("billingName").value = "";
       document.getElementById("billingZip").value = "";
       }
}
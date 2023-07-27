function accionParaCuandoEllaDigaQueSi(){
    alert('Ahora ya somos enamorados <3')
}

function mueveElBoton(){
    width = window.innerWidth;
    height = window.innerHeight;

    newWidth = (Math.random() * width);

    newHeigth = (Math.random() * height);

    document.getElementById('btnNo').style.position = "absolute";
    document.getElementById('btnNo').style.left = newWidth + "px";
    document.getElementById('btnNo').style.top = newHeigth + "px";
}
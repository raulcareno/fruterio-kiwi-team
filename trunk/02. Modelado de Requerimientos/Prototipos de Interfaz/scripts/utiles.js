
//lbl es el id del elemento inmediato anterior al campo q recibe la fecha
function fechaHoy(lbl){
    date=new Date();
    mes=date.getMonth() + 1;
    if(date.getDate()<10){
        dia='0' + date.getDate();
    }else{
        dia=date.getDate();
    }
    anio=date.getFullYear();
    fecha= mes + '/' + dia + '/' + anio ;
    $('#' + lbl + '+ input').attr('value', fecha);
}

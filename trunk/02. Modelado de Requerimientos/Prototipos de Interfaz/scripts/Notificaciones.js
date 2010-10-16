/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function notificar(exito, fracaso,bool)
{
    if(bool){
        jQuery.noticeAdd({
            text:exito,
            stay:false,
            type:'exito'
        })
    }else{
        jQuery.noticeAdd({
            text:fracaso,
            stay:true,
            type:'error'
        })
    }
}

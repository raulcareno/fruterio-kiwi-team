/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//ajax Indicator!!!
function showAjaxIndicator(data)
{

    if(data.status == "begin")
        {
            $('#ajaxIndicator').show();
            $('input, select').attr('disabled',true);
        }else if(data.status == "success"){
            $('#ajaxIndicator').hide();
            $('input, select').attr('disabled',false);
            documentoCargado();
            setPopUp();
        }
        

}
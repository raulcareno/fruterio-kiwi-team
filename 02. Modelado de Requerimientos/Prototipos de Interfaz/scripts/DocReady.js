$(document).ready(function()
    {
        setPopUp();
        documentoCargado();
    });










//muestra el objeto oculto con el id ingresado por parametro
function mostrar(id)
{
    $('#' + id).animate({
        'height':'show'
    }, 'slow', 'swing');
}


function documentoCargado()
{
    
   
    

    
     //+++++++Componentes q empiezan ocultos+++++++++++++++++++
        $('.avanzado, .oculta').hide();

        //+++++++Tratamiento de los bones de expansion++++++++++
        //+++++++actuan sobre el componente inmediato+++++++++++
        $('.exp')
        .click(function(){
            $(this)
            .next()
            .animate({
                'height': 'toggle'
            },{
                'duration':'slow'
            },'swing');
        })
        .toggle(function(){
            $('.exp img').attr('src', '../images/icons/003_40.png');
        },function(){
            $('.exp img').attr('src', '../images/icons/003_39.png');
        })
        .addClass('click');


        //+++++++Chexbox q expande y contrae un componente "#cliente"++++++++++
        $("#tipo").click(function(){
            if($(this).attr('checked'))
            {
                $('#cliente').animate({
                    'height': 'show'
                }, 'slow','swing');
            }else{
                $('#cliente').animate({
                    'height': 'hide'
                }, 'slow','swing');
            }
        })


       
        //tratamiento del objeto close, ubicado siempre dentro de un h1 q hace de cabecera de un popup
        $('h1 #close')
        .css({
            'position':'absolute',
            'right':15,
            'top':10
        })// Posiciono el objeto close a la derecha del h1 donde se encuentra
        .hover(
            function(){
                $('#close img').attr('src', '../../resources/images/icons/001a_37.png');
            },
            function(){
                $('#close img').attr('src', '../../resources/images/icons/001_37.png');
            }
            )//hover de la imagen dentro de close
        .addClass('click')//agrego la clase "click" a los obj de la clase close
        .click(function(){
            removeLightbox();
        }); //close cierra el lightbox
        $('<img height="16px" width="16px" src="../../resources/images/icons/001_37.png" />')
        .appendTo('#close');//Agrego un icono a loos componentes de clase Close


//    //tratamiendo de datepickers
    $('.datepick').datepicker({
        width:40
    });
}
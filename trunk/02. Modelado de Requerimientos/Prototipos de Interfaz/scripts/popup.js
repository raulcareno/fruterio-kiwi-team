function mostrarPopUp(id) {
    var h = ($(window).height());
    var w = ($(window).width());
    if($('#blackSheet').length==0){
    $('<div id="blackSheet"></div>').css({
        'height':h,
        'width':w
    }).appendTo('body');}
    $("#"+id).fadeIn('slow');
}
function setPopUp(){
    //Esconder el popup
   
    $(".pop").hide();
    //Consigue valores de la ventana del navegador
    var top = ($(window).height() - $('.pop').height()) / 2;
    var left = ($(window).width() - $('.pop').width()) / 2;

    $('.pop')
    .css({
        'top': top + $(document).scrollTop(),
        'left': left,
        'position': 'absolute'
    });

    setTimeout("mostrar()",1500);
    //Función para cerrar el popup
    $(".pop input[type='submit']").click(function (event){
        $('.pop').fadeOut('slow');
        $(".pop input[type='text']").val(' ');
        $('#blackSheet').remove();
        event.preventDefault();
        
    });


    
}
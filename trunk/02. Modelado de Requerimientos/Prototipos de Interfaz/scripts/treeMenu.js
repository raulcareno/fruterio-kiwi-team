function setMenuTree(tit) {
  $('#menuTree ul')
    .hide()
    .prev('span')
    .before('<span></span>')
    .prev()
    .addClass('handle closed')
    .click(function(){
      // plus/minus handle click
      $(this)
        .toggleClass('closed opened')
        .nextAll('ul')
        .toggle();
    });
    marcarMenu(tit);
}

function marcarMenu(tit){
    $("a:contains('" + tit + "')").parent().parent().css('display','block').prev().prev().removeClass('closed').addClass('opened');
    $("a:contains('" + tit + "')").parent().parent().parent().parent().css('display','block').prev().prev().removeClass('closed').addClass('opened');
    $("a:contains('" + tit + "')").addClass('activo');
}
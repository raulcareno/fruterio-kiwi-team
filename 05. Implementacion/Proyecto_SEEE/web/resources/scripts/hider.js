function mostrar_ocultar(hide)
{
    if (document.layers)
    {
        document.contenido.visibility = hide ? 'hide' : 'show';
    }
    else
    {
        var g = document.all ? document.all.contenido :
        document.getElementById('hideable');
        g.style.visibility = hide ? 'hidden' : 'visible';
    }
}

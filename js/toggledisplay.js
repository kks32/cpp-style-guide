function toggledisplay(elementID)
{
    (function(style) {
        style.display = style.display === 'none' ? '' : 'none';
    })(document.getElementById(elementID+"__body").style);
}

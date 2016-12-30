var lastw;

function openwindow(addr, callback)
{
    lastw = window.open(addr, '_blank', 'modal=yes');
    lastw.addEventListener('load', function(w) {callback(lastw);});
}

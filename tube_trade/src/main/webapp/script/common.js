//open sized window
function openWindow(sHref, strWidth, strHeight) {
    var strLeft = (screen.availWidth - strWidth) / 2;
    var strTop = (screen.availHeight - strHeight) / 2;
    var strRef = "";
    strRef = strRef + "width=" + strWidth + "px,height=" + strHeight + "px,";
    strRef = strRef + "left=" + strLeft + "px,top=" + strTop + "px,";
    strRef = strRef + "resizable=yes,scrollbars=yes,status=yes,toolbar=no,systemmenu=no,location=no,borderSize=thin";//channelmode,fullscreen
    var openerobj = window.open(sHref, 'newwin', strRef, false);
    openerobj.focus();
}

function openWindowWithName(sHref, strWidth, strHeight, sName) {

    var strLeft = (screen.availWidth - strWidth) / 2;
    var strTop = (screen.availHeight - strHeight) / 2;
    var strRef = "";
    strRef = strRef + "width=" + strWidth + "px,height=" + strHeight + "px,";
    strRef = strRef + "left=" + strLeft + "px,top=" + strTop + "px,";
    strRef = strRef + "resizable=no,scrollbars=yes,status=yes,toolbar=no,systemmenu=no,location=no,borderSize=thin";//channelmode,fullscreen

    window.open(sHref, sName, strRef, false);
}

function refreshOpener() {
    //opener.location.href=sHref;
    opener.location.reload();
    window.close();
}
function printSection(){
    var printid = window.open("");
    printid.document.write(document.getElementById('print').innerHTML);
    printid.stop();
    printid.print();
    printid.close();
    /* var getFullContent = document.body.innerHTML;
    var printid = document.getElementById(id).innerHTML;

    document.body.innerHTML = printid;
    window.print();
    document.body.innerHTML = getFullContent; */
    /* var printId= document.getElementById('print');
    var printArea = window.open();

    printArea.document.write(printId.innerHTML);
    printArea.document.close();
    printArea.focus();
    printArea.print();
    printArea.close(); */
}
/* function printpart () {
    var printwin = window.open("");
    printwin.document.write(document.getElementById("toprint").innerHTML);
    printwin.stop();
    printwin.print();
    printwin.close();
  } */
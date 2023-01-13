function printSection(){
    var printid = window.open("");
    printid.document.write(document.getElementById('print').innerHTML);
    printid.stop();
    printid.print();
    printid.close();
}
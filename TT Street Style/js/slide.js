
type="text/javascript"
var img1 = new Image();
img1.src ="image/haloqueen.jpg";

var img2 = new Image();
img2.src ="image/vsn.jpg";

var img3 = new Image();
img3.src ="image/thenganhang.jpg";

var step = 1
function slideit(){
    document.images.slide.src=eval("img"+step+".src");
    if(step<3) step++
    else step=1;
    setTimeout("slideit()",1000);
}

var movePixels = 10;
var delayMs = 50;
var catTimer = null;

function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft > (window.innerWidth-img.width)) {
    img.style.left = '0px';
  } else if (currentLeft == 300){
    stopCatWalk();
    img.src = "http://www.gifbin.com/bin/20052777.gif";
    catTimer = window.setInterval(catWalk, 300);
  } else if (currentLeft == 330){
    img.src = "http://www.anniemation.com/clip_art/images/cat-walk.gif";
    movePixels = 10;
  }
}
var test = 0;

function startCatWalk() {
  if(catTimer === null){
    catTimer = window.setInterval(catWalk, delayMs);
  }
}

function speedWalk() {
  movePixels = movePixels + 3;
}

function stopCatWalk() {
  movePixels = 5;
  if (catTimer) {
    clearInterval( catTimer );
    catTimer = null;
  }
}



var image_tracker = 'blackCat';
function change(){
  var image = document.getElementById('catWalk');
  if(image_tracker == 'blackCat'){
    image.src = "http://www.gifbin.com/bin/20052777.gif";
    image_tracker = 'greyCat';
  } else {
    image.src = "http://www.anniemation.com/clip_art/images/cat-walk.gif";
    image_tracker = 'blackCat'; 
    } 
}


document.getElementById('start-button').addEventListener('click', startCatWalk);
document.getElementById('speed-button').addEventListener('click', speedWalk);
document.getElementById('stop-button').addEventListener('click', stopCatWalk)




var dollarToPound = 0.5465
var poundToDollar = 1.8296

var dollarAmount = 1000
function convertToPound(num){
  var convert = num*dollarToPound;
  console.log('$' + num + 'is P' + convert.toFixed(2));
}
convertToPound(700);

function convertToDollar(num){
  var convert = num*poundToDollar;
  console.log('P'+num+'is $'+convert.toFixed(2));
}
convertToDollar(800);
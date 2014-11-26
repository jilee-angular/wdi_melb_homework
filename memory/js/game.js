var cards = ['a', 'a', 'b', 'b', 'c', 'c', 'd', 'd'];

_.each(cards, function(card){

  // create a new card
  var $card = $('<div>').addClass('card-container')

  var $flipper = $('<div>').addClass('flipper');
  var $front = $('<div>').addClass('front');
  var $back = $('<div>').addClass('back').html(card);

  $flipper.append($front);
  $flipper.append($back);
  $card.append($flipper);

  // append to the game div
  $('#game').append($card);
});

$('.flipper').on('click', function() {
  $showLength = $('.showing').length;
  arr = [];
  arr.push($('.showing').eq(0).text());

  if ($showLength >= 0 && $showLength < 2 && $(this).text() === arr[0] ) {
    $letter = arr[0];
    $( "div:contains('a')" ).css('backface-visibility', 'visible').find('.front').hide();
    $( "div:contains('a')" ).removeClass('showing');
    return;
  }

  if ($showLength >= 2){
    return;
  }


  var $card = $(this);

    $card.addClass('showing');
    $card.find('.back').css('backface-visibility', 'visible'); 
    $card.find('.front').hide();

    setTimeout(function(){
      $card.find('.back').css('backface-visibility', 'hidden');
      $card.find('.front').show();
      $card.removeClass('showing');
    }, 2000);
    
});



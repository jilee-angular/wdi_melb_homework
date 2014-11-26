var $guessBox = $('#guessBox');
var $lettersUsed = $('#lettersUsed');
var $enterLetter = $('#enterLetter');
var $guessesLeft = $('#guessesLeft');

var $guessedLetters = $('#guessedLetters');


// word object
var word = {
  secretWord: '',

  wordList: ['pudding', 'cake', 'chocolate', 'cheesecake', 'bagel', 'donut', 'pie', 'icecream'], 

  setSecretWord: function() {
    word.secretWord = _.sample(word.wordList)
  }, 
};


// player object
var player = {
  MAX_GUESSES: 8,

  guessedLetters: [],

  makeGuess: function() {  
    guess = $letterField.val();
    player.guessedLetters.push(guess);
  }, 
}

$(document).ready(function(){
  // start a new game
  word.setSecretWord();
  counter = 0;
  letters = word.secretWord.split('')

  // reset game
  $('#resetButton').on('click', function(){
    window.location.reload();
    })
  // give up
  $('#giveUpButton').on('click', function(){
    alert("Answer is: " + word.secretWord);
    alert("Better luck next time.");
    window.location.reload();
  });
});


// button function
$enterLetter.on('click', function(){
  
  $letterField = $('#letterField');

  _.find(letters, function(letter){
    if (letter === $letterField.val()) {
      var $listItemElem = $('<span>').html($letterField.val()+ "  ");
      $guessedLetters.append($listItemElem);
    } 
  })

  $('#guessesLeft').html(function(i, value) { return + value - 1});
})

var $answerBtn = $('#answerBtn');
$answerBtn.on('click', function(){
  $answerBox = $('#answerBox');
    if ($('#answerTry').val() == word.secretWord) {
      conclude = $('<p>').html("Winner!");
      $answerBox.append(conclude);
    } else if(counter < 2) {
      conclude = $('<p>').html("Try again");
      counter += 1;
    } else if(counter >= 2) {
      conclude = $('<p>').html("The correct answer is: " + word.secretWord);
      alert("Game Over");
      window.location.reload();
    }

})





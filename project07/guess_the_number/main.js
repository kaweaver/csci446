var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var winningValue;

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  $("form#defeatForm").hide();
  $("form#playAgainForm").hide();
  $("p#guessHigher").hide();
  $("p#guessLower").hide();
  generateRandom();
  $("input#playAgainButton").click(function(){
    $("form#playAgainForm").slideToggle(1000, function(){
      generateRandom();
      $("form#guessTheNumber").slideToggle(1000);
    });
  });

  $("input#nameButton").click(function(){
    var enteredName = $("input#nameToEnter").val()
    clearHighScores();
    highScores.push([guessesLeft, enteredName]);
    populateHighScores(highScores);
    $("form#defeatForm").slideToggle(1000, function(){
      $("p#victoryText").hide();
      $("form#playAgainForm").slideToggle();
    });
    
  });
$('input#btnGuess').click(function(){
  var guessValue = parseInt($("input#guess").val(), 10);
  if(guessValue === winningValue){
    $("form#guessTheNumber").slideToggle(1000, function(){
      $("form#defeatForm").slideToggle(1000);
    });
  }else{
    clearScores();
    guessesLeft--;
    updateScore(guessesLeft);
    if(guessesLeft === 0){
      $("form#guessTheNumber").slideToggle(1000);
      $("p#victoryText").show();
      $("form#playAgainForm").slideToggle(1000);
    }else{
      checkHigherOrLower(guessValue);
    }
  }
});
});

function generateRandom(){
  winningValue = Math.floor(Math.random()*101);
}

function checkHigherOrLower(guessNumber){
  if(winningValue > guessNumber){
    if($("p#guessHigher").is(":hidden")){
      $("p#guessHigher").slideToggle(1000);
    }
    if($("p#guessLower").is(":visible")){
      $("p#guessLower").slideToggle(1000);
    }
  }else{
    if($("p#guessLower").is(":hidden")){
      $("p#guessLower").slideToggle(1000);
    }
    if($("p#guessHigher").is(":visible")){
      $("p#guessHigher").slideToggle(1000);
    }
  }
}

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function clearHighScores(){
  $('div#highScores').text('');
}
function clearScores(){
  $('span#guessesLeft').text('');
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}

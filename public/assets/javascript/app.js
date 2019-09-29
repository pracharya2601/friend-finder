//on click game start
$(document).on("click", "#start", function() {
  game.start();
});

var main = $("#quiz");

var questions = [
  {
    question: "'Linux' is an example of ",
    answers: ["Software", "Application", "Operating System", "Browser"],
    correctAnswer: "Operating System"
  },
  {
    question: "What is the best selling desktop computer of all time?",
    answers: ["Commodore 64", "IBM PC", "Apple II", "Atari 800"],
    correctAnswer: "Commodore 64"
  },
  {
    question: "Who launch the very first website?",
    answers: ["Standford", "Xerox", "CERN", "MIT"],
    correctAnswer: "CERN" // hosted by Berners-Lee, he is a british scientist.
  },
  {
    question: "What was the first cell phone ever to carry a build-in-camera?",
    answers: ["Nokia 7650", "Kyocera VP-210", "Sharp J-SH04", "None of the above"],
    correctAnswer: "Kyocera VP-210"
  },
  {
    question: "Which of these is no a programming language?",
    answers: ["Scratch", "Phonos", "Blocky", "Python"],
    correctAnswer: "Phonos"
  },
  {
    question:"A database search is called a ....?",
    answers: ["Question", "Query", "Inquest", "Request"],
    correctAnswer: "Query"
  },

  {
    question: "What is programming variable?",
    answers: ["String and Numbers", "Decimal and Integers", "Variables and Input", "Words and Letters"],
    correctAnswer: "String and Numbers"
  },
  {
    question:"Which one programming language is exclusively used for artificial intelligence?",
    answers: ["C", "Java", "J2EE", "Prolog"],
    correctAnswer: "Prolog"
  }

];

var timer;

var game = {
  correct: 0,
  incorrect: 0,
  counter: 120,

  countdown: function() {
    game.counter--;
    $("#counter-number").html(game.counter);
    if (game.counter === 0) {
      console.log("time finished");
      game.done();
    }
  },

  start: function() {
    timer = setInterval(game.countdown, 1 * 1000);

    $("#content-time").prepend(
      "<h2>Time Remaining: <span id='counter-number'>120</span> Seconds</h2>"
    );

    $("#start").remove();

    for (var i = 0; i < questions.length; i++) {
      main.append("<h2>" + questions[i].question + "</h2>");
      for (var j = 0; j < questions[i].answers.length; j++) {
        main.append("<input type='radio' name='question-" + i +
          "' value='" + questions[i].answers[j] + "''>" + questions[i].answers[j]);
      }
    }

    main.append("<button id='done'>Done</button>");
  },

  done: function() {
    var inputs = main.children("input:checked");
    for (var i = 0; i < inputs.length; i++) {
      if ($(inputs[i]).val() === questions[i].correctAnswer) {
        game.correct++;
      } else {
        game.incorrect++;
      }
    }
    this.result();
  },

  result: function() {
    clearInterval(timer);

    $("#content-time h2").remove();

    main.html("<h2>All Done!</h2>");
    main.append("<h3>Correct Answers: " + this.correct + "</h3>");
    main.append("<h3>Incorrect Answers: " + this.incorrect + "</h3>");
  }
};


$(document).on("click", "#done", function() {
  game.done();
}); // game finished

$( document ).ready(function() {

    // This makes the go back to survey navbar blinking
    function blinker() {
        $("#goBack").fadeOut(200);
        $("#goBack").fadeIn(200);
    }
    setInterval(blinker, 400);

    var allFriends = {};
    var newFriend = {};
    $("#newSearch").hide();
    $("#imgMatch").hide();
    $(".returningMember").hide();

    // This is when the user clicks the submit button for the survey page
    $("#submit1").on("click", function() {
        var link = "";
        var answeredQuestions = 0;
        newFriend = {
            name: $("#icon_prefix_name").val(),
            photo: $("#icon_prefix_photo").val(),
            scores: [$("#q1").val(), $("#q2").val(), $("#q3").val(), $("#q4").val(), $("#q5").val(), $("#q6").val(), $("#q7").val(), $("#q8").val(), $("#q9").val(), $("#q10").val()]
        }
        // This checks to make sure every question is answered and the link is valid
        for (var i = 0; i < 10; i++) {
            // This checks to make sure the link is valid
            if (/^(http|https|ftp):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/i.test($("#icon_prefix_photo").val())) {
                link = "valid";
            } else {
                alert("Sorry, but that is an invalid URL, please enter a valid link");
                break;
            }
            if (newFriend.scores[i] === null || newFriend.name === "" || newFriend.photo === "") {
                alert("Sorry, but you didn't answer a question.  Also make sure you entered your name and a link to a photo.");
                break;
            }
            answeredQuestions += 1;
        }
        
        // If all conditions are met, then this will run
        if (answeredQuestions === 10 && link === "valid") {
            $.post("/api", newFriend).done(function(data) {
                // alert("Adding you to all the friends.  Welcome friend!  Now I'll search for someon e with similar tastes.");
                // This opens the results page to display the best search
                window.location = "results";
            });
        }
    });

    // This runs when the results page is loaded.  It loads once the user submits a survey.
    if (top.location.pathname === '/results')
    {
        getAllFriendsInfo();
    }

    // This loads all of the info for the existing friends from the api
    function getAllFriendsInfo () {
        $.get("/api", function(data) {
            allFriends = data;
            newFriend = data[(data.length - 1)];
            totalFriends = data.length;
            checkOtherFriendsScores();
        });
    }

    // This function will go through all of the friends in the api, and add a score to an array for each friend.
    // The lowest score in the array is the closest match to the user.
    function checkOtherFriendsScores() {
        var scoreArray = [];

        // This will go through every friend except the last one, since the user is the last person in allFriends
        for (var i = 0; i < (allFriends.length - 1); i++) {
            var diff = 0;
                // This calculates the difference of each question's score and adds the difference
                diff += Math.abs(allFriends[i].friend_q1 + newFriend.friend_q1);
                diff += Math.abs(allFriends[i].friend_q2 + newFriend.friend_q2);
                diff += Math.abs(allFriends[i].friend_q3 + newFriend.friend_q3);
                diff += Math.abs(allFriends[i].friend_q4 + newFriend.friend_q4);
                diff += Math.abs(allFriends[i].friend_q5 + newFriend.friend_q5);
                diff += Math.abs(allFriends[i].friend_q6 + newFriend.friend_q6);
                diff += Math.abs(allFriends[i].friend_q7 + newFriend.friend_q7);
                diff += Math.abs(allFriends[i].friend_q8 + newFriend.friend_q8);
                diff += Math.abs(allFriends[i].friend_q9 + newFriend.friend_q9);
                diff += Math.abs(allFriends[i].friend_q10 + newFriend.friend_q10);
            
            // This pushes the total difference score into an array
            // The lowest score in the array is the person (allFriends[]) they are best matched with
            scoreArray.push(diff);
        }

        indexofSmallestNumber();

        // This will determine the position in the array of the lowest score.  That position is the closest match from the friend api.
        function indexofSmallestNumber() {
            var min = scoreArray[0];
            var minIndex = 0;
            for (var i = 0; i < scoreArray.length; i++) {
                if (scoreArray[i] < min) {
                    minIndex = i;
                    min = scoreArray[i];
                }
            }

            $("#match").text(allFriends[minIndex].friend_name);
            $("#userName").text(allFriends[(allFriends.length-1)].friend_name);
            $("#imgMatch").show();
            $("#imgMatch").attr("src", allFriends[minIndex].friend_photo);
        }
    }
});

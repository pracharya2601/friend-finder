
// This is for the MySQL connection
var connection = require("../routing/connection.js");

module.exports = function(app) {

    // This will post (add) to the new array
    app.post("/api", function(req, res) {
        console.log(req.body.scores[0]);
        var queryString = "INSERT INTO friends (name, photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt) VALUES ('";
        queryString += req.body.name + "', '" + req.body.photo + "', '" + req.body.scores[0] + "', '";
        queryString += req.body.scores[1] + "', '" + req.body.scores[2] + "', '" + req.body.scores[3] + "', '";
        queryString += req.body.scores[4] + "', '" + req.body.scores[5] + "', '" + req.body.scores[6] + "', '";
        queryString += req.body.scores[7] + "', '" + req.body.scores[8] + "', '" + req.body.scores[9] + "')";
        console.log(queryString);
        connection.query(queryString, function(err, result) {
            if (err) {
                throw err;
            }
            return res.json(result);
        });
    });

        // friendArray.push(newFriend);
        // res.json(newFriend);

}
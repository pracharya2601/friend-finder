var mysql = require("mysql");
var connection;

if (process.env.friend_finder) {
  connection = mysql.createConnection(process.env.friend_finder);
} else {
  connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "friendfinder_db"
});
}

// Make connection
connection.connect(function(err) {
   if (err) {
     console.error("Error connecting: " + err.stack);
     return;
   }
   console.log("Connected as id " + connection.threadId);
  });
 
// Export connection for routing
module.exports = connection;
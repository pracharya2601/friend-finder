var express = require('express');
var app = express();
var methodOverride = require('method-override')

app.use(methodOverride('_method'))

var bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())

app.use(express.static("public"));

var mysql      = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  database : 'books_db'
});
 
connection.connect();

app.get('/books', function(req, res){
	connection.query('SELECT * FROM books ORDER BY id DESC', function (error, results, fields) {
	  if (error) res.send(error)
	  else res.json(results);
	});
});
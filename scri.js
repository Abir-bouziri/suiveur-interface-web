const express = require('express');
const mysql= require('mysql2');
const app = express();
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('C:/Users/bouzi/Documents/maker/views'));
const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: 'root',
  database: 'test',
});

// Connect to the database
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err);
    return;
  }
  console.log('Connected to database');
});
// Define a route to fetch and display data
app.get('/data', (req, res) => {
  // Perform SQL query to fetch data
  connection.query('SELECT * FROM test.makerlabs INNER JOIN test.robots ON test.makerlabs.id = test.robots.idrobots where test.makerlabs.id=1', (err, results) => {
    if (err) {
      console.error('Error executing SQL query:', err);
      res.status(500).send('Internal Server Error');
      return;
    }
    console.log(results);
    // Render EJS template and pass data
    res.render('index', { data : results});
})});

// Set the view engine to EJS
app.set('view engine', 'ejs');

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

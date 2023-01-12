// npm init -y
// npm i express
// npm i path

// DEPENDENCIES
const express = require("express");
// Import and require mysql2
const mysql = require('mysql2');
const htmlRoutes = require("./routes/htmlRoutes");
const sequelize = require("sequelize");
const inquirer = require("inquirer"); // @8.2.4

const app = express();
const PORT = process.env.PORT || 3001;

// MIDDLEWARE
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/", htmlRoutes);

// CUSTOM MIDDLEWARE
app.use((req, res, next) => {
  console.log(`${req.method} request received for endpoint ${req.url}.`);
  next();
});

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // TODO: Add MySQL password
    password: 'root',
    database: 'family_db'
  },
  console.log(`Connected to the family_db database.`)
);

// Query database
db.query('SELECT * FROM immediateFam', (err, results) => {
  console.log(results);
});

// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

// LISTENER
app.listen(PORT, () => {
  console.log(`App listening at http://localhost:${PORT} 🚀`);
});

// open sever in integrated server, enter 'node server'

// to deploy on heroku:
// heroku login
// heroku create -a (name)
// git push heroku main
// heroku open
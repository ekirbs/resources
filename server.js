// npm init -y
// npm i express
// npm i path

// DEPENDENCIES
const express = require("express");
const htmlRoutes = require("./routes/htmlRoutes");

const app = express();
const PORT = process.env.PORT || 3001;

// MIDDLEWARE
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use("/", htmlRoutes);


app.use((req, res, next) => {
  console.log(`${req.method} request received for endpoint ${req.url}.`);
  next();
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
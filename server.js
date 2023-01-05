// npm init -y
// npm i express
// npm i path

// DEPENDENCIES
const express = require("express");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 3001;

// MIDDLEWARE
app.use(express.static("public"));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use((req, res, next) => {
  console.log(`${req.method} request received for endpoint ${req.url}.`);
  next();
});

app.get("/", (req, res) => {
  console.log("GET /");
  res.sendFile(path.joiin(__dirname, "/public/index.html"));
});

// LISTENER
app.listen(PORT, () => {
  console.log(`App listening at http://localhost:${PORT} 🚀`);
});
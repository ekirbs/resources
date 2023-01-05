const router = require("express").Router();
const path = require("path");

// ROUTING
router.get("/", (req, res) => {
  console.log("GET /");
  res.sendFile(path.join(__dirname, "../public/index.html"));
});

router.get('*', (req, res) =>
  res.sendFile(path.join(__dirname, '../public/pages/404.html'))
);

module.exports = router;
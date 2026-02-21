const express = require("express");
const app = express();
const fake_db = "fake db. just go with it"

app.get("/", (req, res) => {
  res.send("Hello Automata Girl 🦸🏻‍♀️");
});

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`listening on port http://localhost:${port}`);
});

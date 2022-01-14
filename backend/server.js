const express = require("express");
const app = express();
const cors = require("cors");
const port = 5000;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());

app.get("/a", (req, res) => {
  console.log("reqq");
  res.json({ user: 'tobi' })
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});

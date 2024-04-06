const express = require("express");
const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
  res.send(req.headers);
});

app.listen(PORT, () => {
  console.log(`Listening for requests on port ${PORT}.`);
});

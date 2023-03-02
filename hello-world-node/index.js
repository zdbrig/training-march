const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

const message = process.env.MESSAGE || 'Hello, world!';

app.get('/', (req, res) => {
  res.send(message);
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});

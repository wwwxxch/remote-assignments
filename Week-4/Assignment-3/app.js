const express = require('express');

const app = express();
const port = 5000;

app.use(express.static('./public'));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const loginRoute = require('./routes/login');
app.use('/', loginRoute);

// --------------------------------------------------------
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}...`);
});

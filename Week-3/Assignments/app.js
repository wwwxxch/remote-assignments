const express = require('express');
const cookieParser = require('cookie-parser');

const app = express();
const port = 3000;

app.set('view engine', 'pug');

// static assests
app.use(express.static('./public'));

// parse form data
app.use(express.urlencoded({ extended: false }));
// parse cookie
app.use(cookieParser());

const nameRoutes = require('./routes/myname');
app.use('/', nameRoutes);
const dataRoutes = require('./routes/naturalsum');
app.use('/data', dataRoutes);

// ------------------------------------------------------------

app.all('*', (req, res) => {
  res.status(404).send('resource not found (404)');
});

app.listen(port, () => {
  console.log(`server is listening on port ${port}`);
});

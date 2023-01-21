const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.send('Hello World!');
});

router.get('/myName', (req, res) => {
  const nameval = req.cookies.namecookie;
  res.render('inputName', { nameinpug: nameval });
});

router.get('/trackName', (req, res) => {
  res.cookie('namecookie', req.query.name);
  res.redirect('/myName');
});

router.post('/clearName', (req, res) => {
  res.clearCookie('namecookie');
  res.redirect('/myName');
});

module.exports = router;

const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  const inputNum = req.query.number;
  const targetNum = Number(inputNum);
  if (!inputNum) {
    res.send("Lack of Parameter");
  } else if (Number.isInteger(targetNum) === false || targetNum <= 0) {
    res.send("Wrong Parameter");
  } else {
    const intSum = (1 + targetNum) * targetNum / 2;
    res.send(intSum.toString());
  };
});

module.exports = router;

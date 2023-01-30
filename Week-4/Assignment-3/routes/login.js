const express = require('express');
const router = express.Router();
const {
  getUser,
  chkmail,
  chkpair,
  createUser,
  checkOld,
  checkNew
} = require('../models/database');

router.post('/', async (req, res, next) => {
  try {
    // check signin(OLD) info input
    const { oldemail } = req.body;
    const { oldpwd } = req.body;
    let oldresult;
    if (oldemail !== undefined) {
      oldresult = await checkOld(oldemail, oldpwd);
    }
    // check signup(NEW) info input
    const { newname } = req.body;
    const { newemail } = req.body;
    const { newpwd } = req.body;
    let newresult;
    if (newemail !== undefined) {
      newresult = await checkNew(newname, newemail, newpwd);
    }

    // send response for signin(OLD) input
    if (oldresult && oldresult !== "found") {
      return res.send(oldresult);
    } else if (oldresult === "found") {
      return res.send("/member.html");
    // send response for signup(NEW) input
    } else if (newresult && newresult !== "new") {
      return res.send(newresult);
    } else if (newresult === "new") {
      return res.send("/member.html");
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;

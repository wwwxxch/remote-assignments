const mysql = require('mysql2');
const path = require('path');
const dotenv = require('dotenv');
dotenv.config({ path: path.resolve(__dirname, '../config/.env') });
// dotenv.config();

const pool = mysql.createPool({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE
}).promise();

// =====================================================================
async function chkmail (mail) {
  const [row] = await pool.query(`
    SELECT email
    FROM user
    WHERE email = ?
  `, [mail]);
  return row[0]; // row[0] = { "email": "<mail>" }
};

async function chkpair (mail, pwd) {
  const [row] = await pool.query(`
    SELECT email, password
    FROM user
    WHERE email = ? AND password = ?
  `, [mail, pwd]);
  return row[0]; // row[0] = { "email": "<mail>", "password": "<pwd>" }
};

async function getUser (sysid) {
  const [row] = await pool.query(`
      SELECT * 
      FROM user
      WHERE id = ?
      `, [sysid]);
  return row[0];
};

async function createUser (name, mail, pwd) {
  const [result] = await pool.query(`
    INSERT INTO user (name, email, password)
    VALUES (?, ?, ?)
  `, [name, mail, pwd]);
  const newsysid = result.insertId;
  return getUser(newsysid);
};

async function checkOld (input_mail, input_pwd) {
  const upd_inmail = input_mail.trim();
  const upd_inpwd = input_pwd.trim();
  const getmail = await chkmail(upd_inmail);
  const getpair = await chkpair(upd_inmail, upd_inpwd);
  let returnval = null;

  if (!upd_inmail || !upd_inpwd ||
      upd_inmail.length === 0 || upd_inpwd.length === 0) {
    returnval = "blank";
  } else if (/\s/.test(input_mail) || /\s/.test(input_pwd)) {
    returnval = "spaceinstr";
  } else if (getmail === undefined) {
    returnval = "notindb";
  } else if (getpair === undefined) {
    returnval = "pwdwrong";
  } else {
    returnval = "found";
  }
  return returnval;
}

async function checkNew (input_name, input_mail, input_pwd) {
  const upd_inname = input_name.trim();
  const upd_inmail = input_mail.trim();
  const upd_inpwd = input_pwd.trim();
  const getmail = await chkmail(upd_inmail);
  let returnval = null;

  // name & email & password cannot be blank
  if (!upd_inmail || !upd_inpwd || !upd_inname ||
      upd_inmail.length === 0 || upd_inpwd.length === 0 || upd_inname.length === 0) {
    returnval = "blank";
  // check if there's space in input mail or password
  } else if (/\s/.test(input_mail) || /\s/.test(input_pwd)) {
    returnval = "spaceinstr";
  // check if this mail has been exsited in database
  } else if (getmail === undefined) {
    createUser(upd_inname, upd_inmail, upd_inpwd);
    returnval = "new";
  } else {
    returnval = "tosignin";
  }
  return returnval;
}

module.exports = {
  chkmail,
  chkpair,
  getUser,
  createUser,
  checkOld,
  checkNew
};

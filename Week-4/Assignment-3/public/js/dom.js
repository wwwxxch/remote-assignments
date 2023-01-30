// -------------------------------------------------------------------
// Show SignIn form or SignUp form
const showmsg = document.getElementById('reminder');
const signinClick = document.querySelector(".show-signin");
const signupClick = document.querySelector(".show-signup");
const signindiv = document.getElementById('sign-in');
const signupdiv = document.getElementById('sign-up');

signinClick.addEventListener('click', () => {
  // show SignIn(OLD) form & hide SignUp(NEW) form
  signindiv.style.display = "block";
  signupdiv.style.display = "none";
  document.getElementById('instruction').innerText = "SIGN-IN";
  showmsg.innerText = "";
});
signupClick.addEventListener('click', () => {
  // show SignUp(NEW) form & hide SignIn(OLD) form
  signupdiv.style.display = "block";
  signindiv.style.display = "none";
  document.getElementById('instruction').innerText = "SIGN-UP";
  showmsg.innerText = "";
});

// -------------------------------------------------------------------
// Submit email & password by SignIn or SignUp form
const oldClick = document.querySelector(".oldsubmit");
const newClick = document.querySelector(".newsubmit");

function clickfunc (typ) {
  // pass input value via json format
  let params;
  if (typ === "old") {
    const inputval_olde = document.querySelector('.oldemail').value;
    const inputval_oldp = document.querySelector('.oldpwd').value;
    params = { oldemail: inputval_olde, oldpwd: inputval_oldp };
  } else if (typ === "new") {
    const inputval_newn = document.querySelector('.newname').value;
    const inputval_newe = document.querySelector('.newemail').value;
    const inputval_newp = document.querySelector('.newpwd').value;
    params = { newname: inputval_newn, newemail: inputval_newe, newpwd: inputval_newp };
  };

  const xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      const serverres = xhr.responseText;

      // **SignIn (OLD) - action based on server response
      if (typ === "old") {
        // case 1 blank
        if (serverres === "blank") {
          showmsg.innerText = 'E-mail and Password cannot be blank. Please try again.';
        // case 2 space in input str
        } else if (serverres === "spaceinstr") {
          showmsg.innerText = 'Space is not allowed in email and password. Please try again.';
        // case 3 email not in database
        } else if (serverres === "notindb") {
          showmsg.innerText = 'Your email has not been registered. Please click SignUp.';
        // case 4 pwd wrong
        } else if (serverres === "pwdwrong") {
          showmsg.innerText = 'Your email and password do not match. Please try again.';
        // case 5 email pwd matched in database
        } else if (serverres.includes("member")) {
          alert("Login Successful!");
          location.replace(`${serverres}`);
        }

      // **SignUp (NEW) - action based on server response
      } else if (typ === "new") {
        // case 1 blank
        if (serverres === "blank") {
          showmsg.innerText = 'All fields are required. Please try again.';
        // case 2 space in input str
        } else if (serverres === "spaceinstr") {
          showmsg.innerText = 'Space is not allowed in email and password. Please try again.';
        // case 3 new email
        } else if (serverres.includes("member")) {
          alert("Signup Successful!");
          location.replace(`${serverres}`);
        // case 4 email founded in database
        } else if (serverres === "tosignin") {
          showmsg.innerText = 'Your email has been registered. Please click SignIn.';
        };
      }
    }
  };
  xhr.open('POST', '/');
  xhr.setRequestHeader('Content-Type', 'application/json');
  xhr.send(JSON.stringify(params));
}

oldClick.addEventListener("click", (e) => {
  e.preventDefault();
  clickfunc("old");
  document.querySelector('.oldemail').value = "";
  document.querySelector('.oldpwd').value = "";
});
newClick.addEventListener("click", (e) => {
  e.preventDefault();
  clickfunc("new");
  document.querySelector('.newemail').value = "";
  document.querySelector('.newpwd').value = "";
});

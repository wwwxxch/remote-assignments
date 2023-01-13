// Change text by clicking
const chgtext = document.getElementById("welcome");
chgtext.addEventListener("click", () => {
  chgtext.textContent = "Have a Good Time!";
});

// Show hidden boxes
const btnClick = document.querySelector('.button');
btnClick.addEventListener('click', () => {
  const hiddenBox = document.querySelectorAll('.hidegrandparent');
  for (let i = 0; i < hiddenBox.length; i++) {
    if (hiddenBox[i].style.display === "" || hiddenBox[i].style.display === "none") {
      hiddenBox[i].style.display = 'flex';
    } else {
      hiddenBox[i].style.display = 'none';
    }
  }  
});


/*
Complete the functions below to make AJAX call to a URL by GET method,
and show the response data on the page. You may render UI with any style.
*/
const prodList = document.getElementById('product-list');

function ajax (src, callback) {
  const xhr = new XMLHttpRequest();
  xhr.open('GET', src);
  xhr.onload = () => {
    if (xhr.status === 200) {
      // console.log("chk in ajax - xhr.responseText");
      // console.log(xhr.responseText);
      const wholedata = JSON.parse(xhr.responseText);
      // console.log("chk in ajax - wholedata");
      // console.log(wholedata);
      wholedata.map(callback);
    };
  };
  xhr.send();
};

function render (data) {
  // console.log("chk in render");
  // console.log(data);
  const section = document.createElement('section');
  prodList.appendChild(section);
  section.innerHTML = `
    <h2>${data.name}</h2>
    <p><b>$${data.price}</b></p>
    <p>${data.description}<p>`;
};

ajax(
  'https://appworks-school.github.io/Remote-Assignment-Data/products',
  function (response) {
    render(response);
  }
);
// you should get product information in JSON format and render data in the page

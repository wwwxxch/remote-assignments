function ajax (src, callback) {
  /*
  $.ajax({
    url: src,
    method: 'GET',
    success: (result) => {
      const wholedata = JSON.parse(result);
      wholedata.map(callback);
    }
  });
  */
  $.get(src, (data) => {
    const wholedata = JSON.parse(data);
    wholedata.map(callback);
  });
};

function render (data) {
  $('#product-list').append(`
    <h2>${data.name}</h2>
    <p><b>$${data.price}</b></p>
    <p>${data.description}<p>
  `);
};

ajax(
  'https://appworks-school.github.io/Remote-Assignment-Data/products',
  function (response) {
    render(response);
  }
);

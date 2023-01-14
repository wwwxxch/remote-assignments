function avg (data) {
  // let len = Object.values(data)[0];
  const prodarr = Object.values(data)[1];
  let pricesum = 0;
  let outputavg = 0;
  for (let i = 0; i < prodarr.length; i++) {
    pricesum += Object.values(prodarr[i])[1];
  };
  outputavg = pricesum / (prodarr.length);
  return outputavg;
};

console.log(
  avg({
    size: 3,
    products: [
      {
        name: 'Product 1',
        price: 100
      },
      {
        name: 'Product 2',
        price: 700
      },
      {
        name: 'Product 3',
        price: 250
      }
    ]
  })
); // should print the average price of all products

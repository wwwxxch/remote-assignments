// ====================================================================================
// A. Complete the function below to show a delayed result in the consoel.
function delayedResult (n1, n2, delayTime, callback) {
  let plural = "s";
  if (delayTime === 1000 || delayTime === 0) {
    plural = "";
  };
  const output = `${n1 + n2} (${n1}+${n2}) will be shown in the console after ${delayTime / 1000} second${plural}`;
  setTimeout(() => callback(output), delayTime);
}

delayedResult(4, 5, 3000, function (result) {
  console.log(result);
}); // 9 (4+5) will be shown in the console after 3 seconds

delayedResult(-5, 10, 2000, function (result) {
  console.log(result);
}); // 5 (-5+10) will be shown in the console after 2 seconds

// ====================================================================================
// B. To implement delayedResult again using  promise  this  time. It should look like:
function delayedResultPromise (n1, n2, delayTime) {
  let plural = "s";
  if (delayTime === 1000 || delayTime === 0) {
    plural = "";
  };
  const output = `${n1 + n2} (${n1}+${n2}) will be shown in the console after ${delayTime / 1000} second${plural}`;
  const promiseoutput = new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(output);
    }, delayTime);
  });
  return promiseoutput;
}

delayedResultPromise(4, 5, 3000).then(console.log);
// 9 (4+5) will be shown in the console after 3 seconds

// ====================================================================================
// C. To implement it using async/await this time.
async function main () {
  // your code here, you should call delayedResultPromise here and get the result using async/await.
  await delayedResultPromise(4, 8, 3000).then(console.log);
  await delayedResultPromise(-5, 9, 2000).then(console.log);
};

main(); // result will be shown in the console after <delayTime> seconds

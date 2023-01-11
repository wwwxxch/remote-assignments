function count(input) {
  /* first try */
  /*
  let arr = [[],[]];
  for (let i = 0; i < input.length; i++) {
    if (arr[0].includes(input[i])) {
      arr[1][arr[0].indexOf(input[i])] += 1;
    } else {
      arr[0].push(input[i]);
      arr[1].push(1);
    }
  }
  let outputobj = {};
  for (let j = 0; j < arr[0].length; j++) {
    outputobj[`${arr[0][j]}`] = arr[1][j];
  }
  return outputobj;
  */
  
  /*input.sort();*/

  /* final */
  let outputobj = {};
  for (let i = 0; i < input.length; i++) {
    if (input[i] in outputobj) {
      outputobj[`${input[i]}`] += 1;
    } else {
      outputobj[`${input[i]}`] = 1;
    }
  }
  return outputobj;
}

let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));
// should print {a:3, b:1, c:2, x:1}


function groupByKey(input) {
  let outputobj = {};
  for (let i = 0; i < input.length; i++) {
    if (input[i].key in outputobj) {
      outputobj[`${input[i].key}`] += input[i].value;
    } else {
      outputobj[`${input[i].key}`] = input[i].value;
    }
  }
  return outputobj;
}

let input2 = [
    { key: "a", value: 3 },
    { key: "b", value: 1 },
    { key: "c", value: 2 },
    { key: "a", value: 3 },
    { key: "c", value: 5 },
];

console.log(groupByKey(input2));
// should print {a:6, b:1, c:7}

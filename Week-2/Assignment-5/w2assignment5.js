function binarySearchPosition (numbers, target) {
  let startpos = 0;
  let endpos = numbers.length-1;
    
  if (numbers[startpos] > numbers[endpos]) {
    return -1;
  }
    
  while (startpos <= endpos) {
    let midpos = Math.ceil((startpos + endpos) / 2);
    
    if (target < numbers[startpos] || target > numbers[endpos]){
      return -1;
      break;
    } else if (numbers[midpos] < target) {
      startpos = midpos + 1;
    } else if (target < numbers[midpos]) {
      endpos = midpos - 1;
    } else {
      return midpos;
    } 
  }   
}

console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); 
// should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); 
// should print 3

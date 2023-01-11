function binarySearchPosition (numbers, target) {
    let startval = numbers[0];
    let endval = numbers[numbers.length-1];
    
    let mid = startval + (endval - startval)/2;

}

console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); // should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); // should print 3


//countAandB: count how many 'a' and 'b' letters are in the given input and return the total number.
//toNumber: convert English letters to numbers, let 'a' to be 1, 'b' to be 2, and so on.

function countAandB(input){
	//code
	var tot = 0;
	for (var i=0; i<input.length; i++){
		if (input[i] === 'a' || input[i] === 'b'){
			tot = tot +1;
		}
	}
	return(tot)
}

function toNumber(input){
	//code
	var newarr = [];
	var newele;
	for (var i=0; i<input.length; i++){
		newele = input[i].charCodeAt(0)-96;
		newarr.push(newele);
	}
	return(newarr)
}

let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input1));
console.log(toNumber(input1));

let input2 = ['e', 'd', 'c', 'd', 'e'];
console.log(countAandB(input2));
console.log(toNumber(input2));
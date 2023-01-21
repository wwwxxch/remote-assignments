/*
 Given an array of integers, return indices of the two numbers such that they add up to a
 specific target. You may assume that each input would have exactly one solution, and you
 may not use the same element twice.
*/

// 1
/*
function twoSum (nums, target) {
  for (let i = 0; i < nums.length; i++) {
    const temptarget = target - nums[i];
    if (nums.indexOf(temptarget) !== -1 &&
        nums.indexOf(temptarget) !== i) {
      return [i, nums.indexOf(temptarget)];
    }
  }
}
*/

// 2
/*
function twoSum (nums, target) {
  for (let i = 0; i < nums.length; i++) {
    for (let j = 1; j < nums.length; j++) {
      if (nums[j] === target - nums[i] && i !== j) {
        return [i, j];
      }
    }
  }
}
*/
// 3
/*
function twoSum (nums, target) {
  for (let i = 0; i < nums.length; i++) {
    const temptarget = target - nums[i];
    const chk = nums.findIndex((item) => item === temptarget);
    if (chk != null && chk !== -1 && i !== chk) {
      return [i, chk];
    }
  }
}
*/

// 4

function twoSum (nums, target) {
  let startpos = 0;
  let endpos = nums.length - 1;
  const sortarr = [...nums];
  const temp = sortarr.sort((a, b) => a - b);
  while (startpos <= endpos) {
    if (sortarr[startpos] + sortarr[endpos] < target) {
      // console.log("case1", startpos, endpos, sortarr[startpos], sortarr[endpos]);
      startpos += 1;
    } else if (target < sortarr[startpos] + sortarr[endpos]) {
      // console.log("case2", startpos, endpos, sortarr[startpos], sortarr[endpos]);
      endpos -= 1;
    } else if (sortarr[startpos] !== sortarr[endpos]) {
      // console.log("case3", startpos, endpos, sortarr[startpos], sortarr[endpos]);
      // return [(nums.indexOf(sortarr[startpos])), (nums.indexOf(sortarr[endpos]))];
      console.log([(nums.indexOf(sortarr[startpos])), (nums.indexOf(sortarr[endpos]))]);
      break;
    } else if (sortarr[startpos] === sortarr[endpos]) {
      // console.log("case4", startpos, endpos, sortarr[startpos], sortarr[endpos]);
      // return [(nums.indexOf(sortarr[startpos])), (nums.lastIndexOf(sortarr[endpos]))];
      console.log([(nums.indexOf(sortarr[startpos])), (nums.lastIndexOf(sortarr[endpos]))]);
      break;
    }
  }
}

// console.log(twoSum([2, 7, 11, 15], 9));
// console.log(twoSum([-1, -2, -3, -4, -5], -8));
// console.log(twoSum([0, 4, 3, 0], 0));

twoSum([2, 7, 11, 15], 9);
// Should returns [0, 1]

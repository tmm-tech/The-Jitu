//*********************************************************************************************/
// 1.Write a JS program to remove duplicate items from an array(ignore case sensitive)
//array containing a list of fibers 
let fibers = ['Potatoes', 'Carrots', 'Cassava', 'ONION', 'Potatoes', 'onion', 'carrots'];
//the first part of the code is to convert all the items  in the array to lowercase
let unique = fibers.map(x => x.toLowerCase()).filter((item, index, inputArray) => {
    //check if the items in the array are duplicate and returns only unique items in the array
    return inputArray.indexOf(item) === index;
});
console.log(unique);
//*********************************************************************************************/
//Write a JavaScript function to find an array contains a specific element.
function contains(array, items) {
    return array.indexOf(items) !== -1;
}
const array = ['History', 'Apple', 150, 365, 12, 0, null, true];
let type = 'History';
console.log("Hello it is " + contains(array, type) + " that " + type + " is in the array"); //if  the item is in the array it will display true else it will display false; 

//*********************************************************************************************/
//3.Compact.Write a method that clears array from all unnecessary elements, like alse, undefined, empty strings,zero,null
function cleanArray(my_array) {
    return my_array.filter(Boolean);
}
const types = ['Winter', 'Spring', 150, 365, null, false, undefined, ""];
console.log(cleanArray(types));

//*********************************************************************************************/
//4.Write a function to reverse the words a string
function Words_Reverse(sentence) {
    let reversed_string = sentence.split(" ").reverse().join(" ");
    return reversed_string;
}
let myText = "do re mi fa so la ti do";
console.log("Music Notes: " + Words_Reverse(myText));
//*********************************************************************************************/
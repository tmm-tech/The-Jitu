// 1. Will the below two functions output the same results? Explain your answer.

function foo1() {

return {bar: "hello"};//this will display the property bar with value "hello"

}

function foo2() {

Return {bar: "hello"};//SyntaxError: Unexpected token '{' wont display the same output since it has a syntax error as javascript is case sensitive.

}
console.log(typeof(foo1()));
console.log(typeof(foo2()));

//****************************************************************

// 2. Write a simple function that returns a Boolean indicating whether a string is a palindrome (a word, phrase, number, or other sequence of symbols or elements, whose meaning may be interpreted the same way in either forward or reverse direction). Hint: ignore spaces
// // Example “alula” forwards and backwards is the same.

// // “race car” forwards and backwards is the same.

function palindrome(statement){
    //remove any spaces between the text
 statement=statement.replace(/\s/g,'');// /\s/g is an expression that matches whitespaces 
 //reverse th statement
 const reverse=statement.split('').reverse().join('');
 return statement===reverse;
}
console.log(palindrome("alula")); //display true if the statement is reversed or not.
console.log(palindrome("race car"));//displays true even if the statement is true

console.log(palindrome("the quick brown fox jumped over the lazy dog"));
//****************************************************************
// // 3. Using a Prompt allow user to enter numbers separated by commas then print the sum of the numbers. 
const numbers=prompt('Enter a list of numbers and seperate with a comma:');
const array=numbers.split(",");
console.log(array);
/* example displayed [
  '1',  '2', '3',
  '4',  '5', '6',
  '7',  '8', '9',
  '10'
]*/
let add=0;

for (let j = 0; j < array.length; j++) {
     add+=parseInt(array[j]);
    
 }
console.log("Sum: "+add);
//****************************************************************
// 4. Create a function that, given a DOM Element on the page, will visit the element itself and all of its descendents (not just its immediate children). For each element visited, the function should pass that element to a provided callback function.
// The arguments to the function should be:
//a DOM element
let dom_element = document.getElementById("todo");
//dom_element is a DOM element that represents the starting point of te iteration to check if there any other elements contained inside the main
//the functiom(child) will call the intial element and display it this is the first element that is to be first visited in this case is #todo
ChildCallback(dom_element,function(child){
console.log(child);
});
//callback function that takes the dom_element as a function
function ChildCallback(dom,children){
    //the first element to be visited
    children(dom);
    //declares the first element to be visited as the the first element child. 
    dom=dom.firstElementChild;
    //iterates inside the the first child to check if there any other elements inside the firstElementChild it will stop looping if query is false there is no element inside
    while (dom) {
        //the function is called again and repeats the process to check if there is an element inside the DOM Element
        ChildCallback(dom,children);
        // after the recursive the call it declares the  current dom element as the next sibling element and continues with the iteration. 
        dom=dom.nextElementSibling;
        //if the recursive function no longer contains any child element it will go back to the parent elementto check if there is any other element 
    }
}
//****************************************************************

//  1.Write a JavaScript function that receives a number as a parameter and logs whether it is even or odd. 
function evenorodd(value) {
    //checks if the value when divided by 2 the remainder is 0 if it is 0 the number is even else odd
    if (value % 2 == 0) {
        return "even";
    } else {
        return "odd";
    }
}
console.log("-------------------------------------------------");
console.log("1.Write a JavaScript function that receives a number as a parameter and logs whether it is even or odd.")
    //request the user to insert a number
const num = prompt("Enter a number: ");
// calling the function 
const result = evenorodd(num);
//return the response
console.log("Number " + num + " is an " + result + " number.");
console.log("-------------------------------------------------");




//2.Write a JavaScript function that accepts a string as a parameter and find the longest word within the string.
function longestword(string) {
    //split thestring into array
    let stringlength = string.split(" ");
    // sorts the array of strings by length in descending order and return the longest string.
    return stringlength.sort((a, b) => b.length - a.length)[0];
}
console.log("2.Write a JavaScript function that accepts a string as a parameter and find the longest word within the string.")
    //call the function to run a string and identify the longest word in the string
const longest_in_string = longestword("Web Development Tutorial");
console.log("Web Development Tutorial");
//return response
console.log("The longest word in the above statement is: " + longest_in_string);
console.log("-------------------------------------------------");





//3.Write a JavaScript function to get the last element of an array and the number of items in the array. 
console.log("3.Write a JavaScript function to get the last element of an array and the number of items in the array.")
const car_brands = ["Ford", "BMW", "Honda", "Mercedes-Benz", "Chevrolet", "Porsche", "Audi", "Toyota", "Volkswagen", "Nissan", "Bentley", "Lexus", "Jeep", "Kia", "Hyundai Motor Company", "Tesla", "Cadillac", "Dodge", "Mazda", "Chrysler", "Mini", "Ferrari", "Land Rover", "Aston Martin","Lamborghini","Maserati","Subaru","Jaguar","Ford Mustang","Bugatti","Alfa Romeo","Buick","Rolls-Royce","Acura","Aston Martin","Volvo","McLaren","Mistubishi","Lincoln","GMC","Infiniti","Saab","Pontiac","Peugeot","Genesis","Suzuki","Citroen","Fiat","Lotus","Maybach","Renault","Mercury","Oldsmobile","Scion","Daewoo","Daimler","Skoda","Mack","Opel","Datsun","Holden","Smart","Alpine","DS","Navistar","Nissan Nismo","Pagani","Ariel","Rover","Vauxhall","Tata","Paccar","Isuzu","Abarth","Hummer","SEAT","Karma","Lucid","Saleen","Studebaker","Western Star","Dacia","Hennessey","Geo","Daihatsu","Fisker","Hino","Scania","Sterling","Packard","Great Wall","Eicher","RAM","Noble","Polestar","VinFast","SsangYong","Jetta","Vencer","Rivian"]
//displays the last item in the array
console.log("The last car brand in the array is: "+ car_brands[car_brands.length-1]);
//displayt the total number of items in the array
console.log("Total Number of items in the list: "+ car_brands.length);




    //4.Write a JavaScript function that will insert the property “published_on” in the below object. The value of the property should be the current date generated using the Date object.
console.log("-------------------------------------------------");
console.log("4.Write a JavaScript function that will insert the property “published_on” in the below object. The value of the property should be the current date generated using the Date object.");
const reader = {
        author: 'Suzanne Collins',
        title:  'Mockingjay: The Final Book of The Hunger Games', 
        readingStatus: false
    }
    //uses the browsers timezone and displays the date as a full text
reader.published_on=new Date();
console.log(reader);
console.log("-------------------------------------------------");
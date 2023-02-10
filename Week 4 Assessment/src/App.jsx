import React,{useState} from "react";
import "./App.css";
import movielist from "./movielist"
import search from "./search"
function App() {
  const movie_list=[
    "Die Hard",
    "Aliens",
    "Seven Samurai",
    "The Wild Bunch",
    "Police Story",
    "Enter the Dragon",
    "Mad Max 2:The Road Warrior",
    "Hard Boiled",
    "Terminator 2:Judgment Day",
    "Raiders of the Lost Ark"
];
 const[movies,setMovies]=new useState(movie_list);
 const[searcht,setSearch]=new useState("");
 const filterSearch=(even)=>{
setSearch(even.target.value);
setMovies(movies.filter((movies)=>
    movies.toLowerCase().includes(searcht.toLowerCase())
)
);
};
     return (
    <div className="App">
    <h1>Movie Search</h1>
    <search  filterSearch={filterSearch} searcht={searcht}/>
    <movielist movies={movies}/>
    </div>
  );
}

export default App;



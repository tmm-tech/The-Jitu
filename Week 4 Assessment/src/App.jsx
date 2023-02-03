import React,{useState} from "react";
import "./App.css";

function App() {
    const[movieList,SetMovieList]=useState([
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
    ]);
   const filterSearch=(e)=>{
const movies=e.target.value;
const filterlist=[...movie_list];
filterlist=filterlist.filter((movie)=>{
    return movie.toLowerCase().indexOf(movies.toLowerCase()) !== -1;
    });
    SetMovieList(filterlist)
   };
  return (
    <div className="App">
    <h1>Movie Search</h1>
    <div className="InputSearch">
     <input type="text" className='task-search' placeholder='Search..' onChange={filterSearch} />
    </div>
    <div className='InputDisplay'>
     <ul>
     {movieList.map((item,index)=>(
        <li key={index}>{item}</li>
     ))}
     </ul>
    </div>
    
    </div>
  );
}

export default App;

import React from 'react'

function movielist({movies}) {
  return (
    <div className='InputDisplay'>
     <ul>
     {movies.map((item)=>(
        <li key={item}>{item}</li>
     ))}
     </ul>
    </div>
  )
}

export default movielist

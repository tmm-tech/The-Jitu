import React from 'react'

function search(props) {
  
  return (
    <div className="InputSearch">
    <input type="text" className='task-search' placeholder='Search..' value={props.search} onChange={filterSearch} />
   </div>
  )
}

export default search

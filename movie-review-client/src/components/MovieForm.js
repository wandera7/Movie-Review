import React, { useState } from 'react'

function  MovieForm({onAdd}){
  const [movieForm,setMovieForm]=useState({
    name:'',
    desc:'',
    image:'',
    genre:1
  })
  function handleChange(e){
    setMovieForm({...movieForm,[e.target.name]:e.target.value})
  }

  function handleSubmit(e){
    e.preventDefault();
    fetch("http://localhost:9292/movies", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body:JSON.stringify({
        name:movieForm.name,
        desc:movieForm.desc,
        image:movieForm.image,
        genre:movieForm.genre,
        likes:0
      })
  })
  .then((res)=>res.json())
  .then((data)=>{
    onAdd(data)
    setMovieForm({...movieForm,name:'',image:'',desc:'',genre:1})
  })
}



  

  )
}

export default MovieForm

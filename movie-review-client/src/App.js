import React, { useEffect } from 'react'
import { useState } from 'react'
import './App.css'
import MovieGrid from './components/Grid'
import Header from './components/Header'
import MovieForm from './components/MovieForm'

function App() {
  const [movies,setMovies]=useState([])
  const [showForm,setShowForm]=useState(false)
  useEffect(()=>{
    fetch(`http://localhost:9292/movies`)
    .then((res)=>res.json())
    .then((data)=>{
      console.log(data)
      setMovies(data)})
  },[])

  function handleClick() {
    setShowForm((showForm) => !showForm)
  }
  //Adds movie object
  function handleAddMovieReview(reviewObj){
    setMovies((prevValue)=>{
      return [...prevValue,reviewObj]
    })
  }
  //Deletes movie object
  function handleDeleteMovieReview(id){
    const updatedMovieReviews=movies.filter((movie)=>movie.id !==id)
    setMovies(updatedMovieReviews)
  }


  return (
    <>
    <Header/>
    {showForm?<MovieForm onAdd={handleAddMovieReview} />:null}
    <button className="addbtn" onClick={handleClick}>{showForm?'Close Form':'New  Review Form'}</button>
    <MovieGrid onDelete={handleDeleteMovieReview} onUpdate={handleUpdateMovieReview} movies={movies}/>
    </>
  );
}

export default App;

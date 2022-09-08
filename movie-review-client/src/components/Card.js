import * as React from 'react';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import { Stack,IconButton,Tooltip } from '@mui/material';
import DeleteIcon from '@mui/icons-material/Delete';
import ThumbUpIcon from '@mui/icons-material/ThumbUp';

function MovieCard(){
  const {id,name,desc,image_url,likes}=movie
  const[words,setWords]=React.useState(true)
  const [likeCount,setLikeCount]=React.useState(likes)
  const [styleLike,setStyleLike]=React.useState(false)


    function handleLike(){
        setStyleLike(!styleLike)
        setLikeCount((likes)=>likes+1)
        fetch(`http://localhost:9292/movies/${id}`,{
          method:'PATCH',
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            likes:likeCount

        })})
        .then((res)=>res.json())
        .then((data)=>onUpdate(data))
    }
    function handleDelete(){
        fetch(`http://localhost:9292/movies/${id}`,{
          method:'DELETE'
        })
        .then((res)=>res.json())
        .then(()=>onDelete(id))
    }















    return(
        <div>

        </div>
    )
}
export default MovieCard

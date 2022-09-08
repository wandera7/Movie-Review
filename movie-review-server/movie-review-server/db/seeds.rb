Genre.destroy_all
Movie.destroy_all


action = Genre.create(name:"action")
comedy= Genre.create(name:"comedy")
animation=Genre.create(name:"animation")
crime=Genre.create(name:"crime")

bad=Movie.create(name:"John Wick",likes:4,desc:" In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",image_url:"https://www.cheatsheet.com/wp-content/uploads/2021/02/Keanu-Reeves1.jpg")
equal=Movie.create(name:"Equalizer",likes:6,desc:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",image_url:"https://m.media-amazon.com/images/M/MV5BMTQ2MzE2NTk0NF5BMl5BanBnXkFtZTgwOTM3NTk1MjE@._V1_.jpg")
joker=Movie.create(name:"Joker",likes:5 ,desc:" Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",image_url:"https://i.pinimg.com/originals/99/f8/70/99f8702093bd74454c4636a33f558c4a.png")
stars=Movie.create(name:"Star Wars",likes:3,desc:" All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",image_url:"https://www.digitalartsonline.co.uk/cmsdata/slideshow/3662115/star-wars-last-jedi-poster.jpg")
godfather=Movie.create(name:"Godfather",likes:7,desc:"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.",image_url:"https://penji.co/wp-content/uploads/2019/09/The_Godfather-iconic-movie-posters.jpg")
heat=Movie.create(name:"The Heat",likes:2,desc:"No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.",image_url:"https://static.independent.co.uk/2021/03/24/16/heat_ver3.jpg?quality=75&width=640&auto=webp")
disrupted=Movie.create(name:"Disrupted",likes:4,desc:"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will.",image_url:"https://cdn.flickeringmyth.com/wp-content/uploads/2020/02/Disrupted-poster.jpg")
untouchables=Movie.create(name:"The Untouchables",likes:5,desc:" Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",image_url:"https://m.media-amazon.com/images/I/51+RH8+tAcL._AC_.jpg")
bolt=Movie.create(name:"Bolt",likes:7,desc:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",image_url:"https://imgix.ranker.com/user_node_img/23/448198/original/448198-photo-u13?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375")
luca=Movie.create(name:"Luca",likes:3,desc:" Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",image_url:"https://featuredanimation.com/wp-content/uploads/2021/06/Luca-waving-half-under-water-Pixar-Movie-Poster-2021.jpg")
archer=Movie.create(name:"Archer",likes:8,desc:"To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.",image_url:"https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg?ts=1636999411")
after=Movie.create(name:"After",likes:6,desc:"Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",image_url:"https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180")

action.movies << bad
action.movies << equal
action.movies << archer
action.movies << stars

crime.movies << joker
crime.movies << godfather
crime.movies << untouchables
crime.movies << disrupted

comedy.movies << after
comedy.movies << heat
animation.movies << bolt
animation.movies << luca




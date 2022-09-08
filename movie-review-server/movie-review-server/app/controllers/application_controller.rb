class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/movies' do
    movies=Movie.all
    movies.to_json(include: :genre)
  end
  delete '/movies/:id' do
    movie=Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end
  patch '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.update(
      likes: params[:likes]
    )
    movie.to_json
  end
  post '/movies' do
    movie=Movie.create(name: params[:name],
      desc: params[:desc],
      likes: params[:likes],
      genre_id: params[:genre],
      image_url: params[:image]
    )
    movie.to_json
  end

end

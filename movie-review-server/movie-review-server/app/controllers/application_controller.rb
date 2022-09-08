class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/movies' do
    movies=Movie.all
    movies.to_json(include: :genre)
  end
  

end

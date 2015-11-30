require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'songs_db'
)

get '/' do
  @songs = Song.all
  erb :index
end

get '/songs/new' do
  erb :new
end

post '/songs/create' do
  song = Song.new(params[:song])
  if song.save
    redirect '/'
  else
    erb :new
  end
end

get '/destroy' do
  all_the_things = Song.all
  all_the_things.each do |something|
    something.destroy
  end
  return Song.all.to_json
end

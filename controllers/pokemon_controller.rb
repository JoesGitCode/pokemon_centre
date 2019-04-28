require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
also_reload('./models/*')

get '/pokemon' do
  @pokemon = Pokemon.show_all()
  erb(:"pokemon/index")
end

get '/pokemon/new' do
  @vets = Vet.show_all()
  erb(:"pokemon/new")
end

post '/pokemon' do
  Pokemon.new(params).save()
  redirect to '/pokemon'
end

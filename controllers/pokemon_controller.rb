require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
also_reload('./models/*')
require("pry")

get '/pokemon' do
  @pokemon = Pokemon.show_all()
  erb(:"pokemon/index")
end

get '/pokemon/new' do
  @vets = Vet.show_all()
  erb(:"pokemon/new")
end

get '/pokemon/added' do
  erb(:"pokemon/added")
end

post '/pokemon' do
  Pokemon.new(params).save()
  redirect to '/pokemon'
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params['id'])
  @vets = Vet.show_all()
  erb (:"pokemon/edit")
end

post '/pokemon/:id' do
  # binding.pry
  pokemon = Pokemon.new(params)
  pokemon.update
  redirect to "/pokemon/#{params['id']}"
end

post '/pokemon/:id/delete' do
  pokemon = Pokemon.find(params['id'])
  pokemon.delete
  redirect to '/pokemon'
end


get '/pokemon/:id' do
  @pokemon = Pokemon.find(params['id'])
  erb(:"pokemon/show")
end

# get '/pokemon/:id/heal' do
#   @pokemon = Pokemon.find(params['id'])
#   erb(:"pokemon/heal")
# end

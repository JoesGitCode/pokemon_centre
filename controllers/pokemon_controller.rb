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

get '/pokemon/added' do
  erb(:"pokemon/added")
end

post '/pokemon' do
  Pokemon.new(params).save()
  redirect to '/pokemon/added'
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params['id'])
  @vets = Vet.show_all()
  erb (:"pokemon/edit")
end

post '/pokemon/:id/delete' do
  pokemon = Pokemon.find(params['id'])
  pokemon.delete
  redirect to '/pokemon'
end

post '/pokemon/:id/edit' do
  pokemon = Pokemon.find(params['id'])
  pokemon.update
  pokemon.save
  redirect to '/pokemon'
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params['id'])
  erb(:"pokemon/show")
end

require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
also_reload('./models/*')

get '/pokemon' do
  @pokemon = Pokemon.show_all()
  erb(:"pokemon/index")
end

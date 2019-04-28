require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/pokemon_controller.rb')
require_relative('controllers/vet_controller.rb')
also_reload('./models/*')

get '/' do
  # @pokemon = Pokemon.show_all()
  erb(:index)
end

require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/vet.rb')
also_reload('../models/*')

get '/vets' do
  @vets = Vet.show_all()
  erb(:"vets/index")
end

get '/vets/new' do
  erb(:"vets/new")
end

get '/vets/:id' do
  
end

post '/vets' do
  Vet.new(params).save()
  redirect to '/vets'
end

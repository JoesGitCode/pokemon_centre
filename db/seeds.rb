require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
require('pry-byebug')

pokemon1 = Pokemon.new({"name" => "diglett", "type" => "ground", "vet_id" => 1})
pokemon1.save()

vet1 = Vet.new({"name" => "joy"})
vet1.save()

# binding.pry
nil

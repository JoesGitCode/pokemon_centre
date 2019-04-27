require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
require('pry-byebug')

# Pokemon.delete_all()
Vet.delete_all()

vet1 = Vet.new({"name" => "joy"})
vet1.save()
# p Vet.show_all()

pokemon1 = Pokemon.new({"name" => "diglett", "type" => "ground"})
pokemon2 = Pokemon.new({"name" => "psyduck", "type" => "water"})
pokemon1.delete()
pokemon1.save()
pokemon2.save()
pokemon2.delete()
# Pokemon.show_all()


# binding.pry
nil

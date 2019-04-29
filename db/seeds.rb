require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')
require('pry-byebug')

# Pokemon.delete_all()
Vet.delete_all()

vet1 = Vet.new({"name" => "joy viridian"})
vet2 = Vet.new({"name" => "joy pewter"})
# vet1.name = "Nurse Joy"
# vet1.update()
vet1.save()
vet2.save()
# p Vet.show_all()

pokemon1 = Pokemon.new({"name" => "diglett", "type" => "ground", "vet_id" => vet1.id})
pokemon2 = Pokemon.new({"name" => "psyduck", "type" => "water", "vet_id" => vet2.id})
# pokemon1.delete()
pokemon2.save()
# pokemon2.delete()
# pokemon1.name = "bulbasaur"
# pokemon1.update()
pokemon1.save()

Pokemon.delete_by_id(55)
# Pokemon.show_all()


# binding.pry
nil

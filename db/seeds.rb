require_relative('../models/pokemon.rb')
require_relative('../models/vet.rb')

Pokemon.delete_all()
Vet.delete_all()

vet1 = Vet.new({"name" => "Joy Viridian"})
vet2 = Vet.new({"name" => "Joy Pewter"})
# vet1.name = "Nurse Joy"
# vet1.update()
vet1.save()
vet2.save()
# p Vet.show_all()

pokemon1 = Pokemon.new({"name" => "Bulbasar", "type" => "Grass", "date_caught" => 5, "treatment_notes" => "Frozen", "vet_id" => vet1.id})
pokemon2 = Pokemon.new({"name" => "Squirtle", "type" => "Water", "date_caught" => 3, "treatment_notes" => "Paralyzed", "vet_id" => vet1.id})
pokemon3 = Pokemon.new({"name" => "Charmander", "type" => "Fire", "date_caught" => 7, "treatment_notes" => "Asleep", "vet_id" => vet1.id})
pokemon4 = Pokemon.new({"name" => "Pikachu", "type" => "Electric", "date_caught" => 2, "treatment_notes" => "Poisoned", "vet_id" => vet2.id})
pokemon5 = Pokemon.new({"name" => "Alakazam", "type" => "Psychic", "date_caught" => 6, "treatment_notes" => "Frozen", "vet_id" => vet2.id})
pokemon6 = Pokemon.new({"name" => "Diglett", "type" => "Ground", "date_caught" => 6, "treatment_notes" => "Poisoned", "vet_id" => vet1.id})
pokemon7 = Pokemon.new({"name" => "Psyduck", "type" => "Water", "date_caught" => 9, "treatment_notes" => "Alseep", "vet_id" => vet2.id})
# pokemon1.delete()
pokemon1.save()
pokemon2.save()
pokemon3.save()
pokemon4.save()
pokemon5.save()
pokemon6.save()
pokemon7.save()
# pokemon2.delete()
# pokemon1.name = "bulbasaur"
# pokemon1.update()


# Pokemon.delete_by_id(55)
# Pokemon.show_all()
# Pokemon.find(58)

# p vet1.show_pokemons()


# binding.pry
nil

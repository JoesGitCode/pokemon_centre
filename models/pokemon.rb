require_relative('../db/sql_runner.rb')

class Pokemon

  attr_reader :id, :vet_id
  attr_accessor :name, :type, :date_caught, :treatment_notes

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @date_caught = options['date_caught'].to_i
    @treatment_notes = options['treatment_notes']
    @vet_id = options['vet_id'].to_i if options['vet_id']
  end

  def save()
    sql = "INSERT INTO pokemons (name, type, date_caught, treatment_notes, vet_id)
    VALUES ($1, $2, $3, $4, $5) RETURNING id"
    values = [@name, @type, @date_caught, @treatment_notes, @vet_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM pokemons WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.show_all()
    sql = "SELECT * FROM pokemons"
    pokemon_data = SqlRunner.run(sql)
    pokemons = map_items(pokemon_data)
    return pokemons
  end

  def self.map_items(pokemon_data)
    return pokemon_data.map { |pokemon| Pokemon.new(pokemon) }
  end

  def self.delete_all
    sql = "DELETE FROM pokemons"
    results = SqlRunner.run(sql)
  end

end

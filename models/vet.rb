class Vet

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO vets (name) VALUES ($1) RETURNING id"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def update()
    sql = "UPDATE vets SET name = $1 WHERE id = $2"
    values = [@name]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM vets WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.show_all()
    sql = "SELECT * FROM vets"
    vet_data = SqlRunner.run(sql)
    vets = map_items(vet_data)
    return vets
  end

  def self.map_items(vet_data)
    return vet_data.map { |vet| Vet.new(vet) }
  end

  def self.delete_all()
    sql = "DELETE FROM vets"
    SqlRunner.run(sql)
  end
end

class Pokemon

  attr_reader :id
  attr_accessor :name, :type, :date_caught, :treatment_notes

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @type = options['type']
    @date_caught = options['date_caught'].to_i
    @treatment_notes = options['treatment_notes']
  end

end

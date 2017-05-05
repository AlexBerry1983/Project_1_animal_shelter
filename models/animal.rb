require_relative('./owner')
require_relative

class Animal

  attr_reader :id, :name, :type, :admission_date, :adoptable, :owner_id

  def initialize(params)
    @id = params['id'].to_i if params['id']
    @name = params['name']
    @type = params['type']
    @admission_date = params['admission_date']
    @adoptable = params['adoptable']
    @owner_id = params['owner_id'].to_i
  end

  def save
    sql = "INSERT INTO animals (name, type, admission_date, adoptable, owner_id) VALUES ('#{@name}', '#{@type}', '#{@admission_date}', '#{@adoptable}', #{@owner_id}) RETURNING id;"
    animal_hash = SqlRunner.run(sql).first
    @id = animal_hash[:id].to_i
  end


end
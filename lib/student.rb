class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade :id

  def initialize(name, grade, id = nill)
    @id = id
    @name = name
    @grade = grade
  end

end

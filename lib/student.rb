class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-sql
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      )
      sql
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-sql
      DROP TABLE students
      sql
    DB[:conn].execute(sql)
  end

end

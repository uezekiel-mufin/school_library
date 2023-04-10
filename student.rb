require_relative 'person'

class Student < Person
  def initialize(classroom)
    super(id, name, age, parent_permission, @classroom)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

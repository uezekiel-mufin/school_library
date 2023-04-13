require_relative 'person'

class Student < Person
  attr_accessor :classroom, :parent_permission

  def initialize(age, name, classroom, parent_permission)
    super(name, age)

    @classroom = classroom

    @parent_permission = parent_permission
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_classroom=(classroom)
    @classroom = classroom

    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

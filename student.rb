require_relative 'person'

class Student < Person

  attr_accessor :classroom

  def initialize(id, age, name, classroom, parent_permission)
    super(name, age, id)
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


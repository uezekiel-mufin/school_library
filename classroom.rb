require_relative 'student'
require_relative 'person'

class Classroom
  attr_accessor :label

  attr_reader :students

  def initialize(label)
    @label = label

    @students = []
  end

  def add_student(student)
    @students.push(student)

    student.classroom = self
  end
end

person1 = Person.new('james', 20)

jss1 = Classroom.new('jss1')

student1 = Student.new(jss1)

puts student1.inspect

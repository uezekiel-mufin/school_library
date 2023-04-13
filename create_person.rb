require_relative 'teacher'

require_relative 'student'

def create_person
  print 'Enter name:'

  name = gets.chomp

  print 'Enter age:'

  age = gets.chomp

  print 'Enter id:'

  id = gets.chomp.to_i

  puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'

  person_type = gets.chomp.to_i

  person_switch(person_type, name, age, id)
end

def person_switch(choice, name, age, id)
  case choice

  when 1

    print 'Parent permission? [Y/N]:'

    parent_permission = gets.chomp.downcase == 'y'

    print 'Enter classroom:'

    classroom = gets.chomp

    new_student = Student.new(id, age, name, classroom, parent_permission)

    @people << new_student

    puts 'New Student created'

  when 2

    print 'Enter specialization:'

    specialization = gets.chomp

    new_teacher = Teacher.new(id, age, name, specialization)

    @people << new_teacher

    puts 'New Teacher created'

  else

    puts 'Invalid option'

  end
end

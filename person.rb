class Nameable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def correct_name
    raise NotImplementedError, 'Subclass must implement correct_name method'
  end
end

class Person < Nameable
  attr_accessor :name, :age

  def initialize(age, name)
    super(name)

    @name = name
    @age = age
  end

  def can_use_services?
    if is_of_age? || @parent_permission

      true

    else

      false

    end
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super(nameable.name)

    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 10)
  end
end

person = Person.new(22, 'maximilianus')

puts person.correct_name # "maximilianus"

capitalized_person = CapitalizeDecorator.new(person)

puts capitalized_person.correct_name # "Maximilianus"

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

puts capitalized_trimmed_person.correct_name # "Maximilian"

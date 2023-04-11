class Nameable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def correct_name
    raise NotImplementedError, 'Kindly Implement correct_name method to return the correct name'
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

class CapitalizeDecorator < Nameable
  def correct_name
    @nameable.capitalize
  end
end

class TrimmerDecorator < Nameable
  def correct_name
    if @nameable.length > 10
      @nameable[0..9]
    else
      @nameable
    end
  end
end

person = Person.new(22, 'maximilianus')

person.correct_name

capitalized_person = CapitalizeDecorator.new(person)

capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

capitalized_trimmed_person.correct_name

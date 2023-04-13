require_relative 'rental'

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
  attr_accessor :name, :rental, :age, :generated_id, :id

  def initialize(name, age)
    super(name)

    @name = name

    @age = age

    @generated_id = []

    @id = generate_unique_number

    @rental = []
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

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def generate_unique_number
    number = rand(1..1000)
    number = rand(1..1000) while @generated_id.include?(number)

    @generated_id << number

    number
  end

  private

  def of_age?
    @age >= 18
  end
end

class BaseDecorator < Nameable
  def initialize(nameable)
    super

    @nameable = nameable
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    if @nameable.correct_name.length > 10

      @nameable.correct_name[0..9]

    else

      @nameable.correct_name

    end
  end
end

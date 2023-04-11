
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

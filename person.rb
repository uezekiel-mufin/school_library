class Person
  attr_accessor :name, :age

  def initialize(id, age, name = 'unknown', parent_permission: true)
    @id = id
    @name = name
    @parent_permission = parent_permission
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

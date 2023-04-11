class Person

  attr_accessor :name, :age



  def initialize(age, name='')

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


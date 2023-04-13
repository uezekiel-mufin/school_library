require_relative 'person'

class Teacher < Person
  def initialize(id, age, name, specialization)
    super(name, age, id)

    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

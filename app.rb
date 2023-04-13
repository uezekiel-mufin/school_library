require_relative 'create_book'

require_relative 'create_person'

require_relative 'list_books'

require_relative 'list_people'

require_relative 'list_rental_by_id'

require_relative 'create_rental'

require_relative 'switch'

puts 'Welcome to School Library'

puts 'Please choose an option by entering a number:'

class App
  def initialize(list_options)
    @books = []

    @people = []

    @rentals = []

    @list_options = list_options
  end

  def run
    @list_options.each do |option|
      puts option
    end

    choice = gets.chomp.to_i

    case choice

    when 1, 2, 3

      switch(choice)

    when 4, 5, 6, 7

      switch_rental(choice)

    end
  end
end

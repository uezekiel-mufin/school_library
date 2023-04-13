require_relative 'create_book'
require_relative 'create_person'
require_relative 'list_books'
require_relative 'list_people'
require_relative 'list_rental_by_id'
require_relative 'create_rental'

list_options = ['1 - List all books', '2 - List all people', '3 - Create a person', '4 - Create a book',

                '5 - Create a rental', '6 - List all rentals for a given person id', '7 - Exit']

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

    switch(choice)
  end

  def switch(choice)
    case choice
    when 1
      list_books(@books)
      run
    when 2
      list_people(@people)
      run
    when 3
      create_person
      run
    when 4
      create_book
      run
    when 5
      create_rental
      run
    when 6
      list_rentals_for_person
      run
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'Invalid choice, choose a valid number'
      run
    end
  end
end

library = App.new(list_options)
library.run

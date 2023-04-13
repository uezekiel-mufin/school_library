require_relative 'rental'

def create_rental
  puts 'Select a book from the following list by number'

  @books.each_with_index do |book, index|
    puts "#{index}) Title: #{book.title}, Author: #{book.author}"
  end

  selected_book_index = gets.chomp

  selected_book = @books[selected_book_index.to_i]

  puts 'Select a Person from the following list by number (not id)'

  @people.each_with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end

  selected_person_index = gets.chomp

  selected_person = @people[selected_person_index.to_i]

  puts 'Enter date:'

  date = gets.chomp

  rental = Rental.new(date, selected_book, selected_person)

  puts 'Rental created', rental
end

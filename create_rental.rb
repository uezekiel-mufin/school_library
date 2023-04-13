require_relative 'rental'

def create_rental
  puts 'Enter book title:'

  title = gets.chomp

  puts 'Enter person name:'

  name = gets.chomp

  book = @books.find { |b| b.title == title }

  person = @people.find { |p| p.name == name }

  if book.nil? and person.nil?

    puts 'Book and Person not found'

    return

  elsif person.nil?

    puts 'Person not found'

    return

  elsif book.nil?

    puts 'Book not found'

  end

  puts 'Enter date:'

  date = gets.chomp

  Rental.new(date, book, person)

  puts 'Rental created'
end

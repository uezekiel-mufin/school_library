require_relative 'book'

def create_book
  print 'Enter book title:  '

  title = gets.chomp

  print 'Enter book author:  '

  author = gets.chomp

  book = Book.new(title, author)

  @books << book

  puts "Book created: #{book.title} by #{book.author}"
end

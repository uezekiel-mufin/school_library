# Description: List all books in the library

def list_books(books)
  puts 'All books:'

  books.each_with_index do |book, _index|
    puts "#{book.title.capitalize}, Author:#{book.author.capitalize}"
  end

  puts 'No books in the library, create some.'
end

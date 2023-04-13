# Description: List all books in the library



def list_books(books)

  puts 'All books:'

  books.each_with_index do |book, index|

    puts "#{index + 1}-> #{book.title.capitalize} by #{book.author.capitalize}"

  end

  puts 'No books in the library, create some.'

end


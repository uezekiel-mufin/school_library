require_relative 'app'

list_options = ['1 - List all books', '2 - List all people', '3 - Create a person', '4 - Create a book',

                '5 - Create a rental', '6 - List all rentals for a given person id', '7 - Exit']

def main(list_options)
  library = App.new(list_options)

  library.run
end
main(list_options)

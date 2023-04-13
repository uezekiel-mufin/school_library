def switch(choice)
  case choice

  when 1

    list_books(@books)

  when 2

    list_people(@people)

  when 3

    create_person

  else

    puts 'Invalid choice, choose a valid number'

  end
  run
end

def switch_rental(choice)
  case choice

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

  end
end

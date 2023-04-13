def list_rentals_for_person
  puts 'Enter person id:'

  id = gets.chomp.to_i

  person = @people.find { |p| p.id == id }

  puts 'Rentals:'

  if person and person.rental.length.positive?

    person.rental.each do |r|
      puts "Person Name: #{person.name}, Book: #{r.book.title} by #{r.book.author}, Date: #{r.date}"
    end

  else

    puts 'No rentals found'

  end
end

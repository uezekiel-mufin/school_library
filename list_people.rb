def list_people(people)
  puts 'All people:'
  if people.length.positive?
    people.each_with_index do |person, index|
      puts "#{index + 1}-> Name: #{person.name.capitalize}, Age: #{person.age} "
    end
  else
    puts 'No people in the school, create some.'
  end
end

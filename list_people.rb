def list_people(people)
  puts 'All people:'

  if people.length.positive?

    people.each do |person|
      if person.respond_to?('specialization')
        puts "[TEACHER] Name: #{person.name.capitalize}, ID: #{person.id}, Age: #{person.age} }"
      else
        puts "[STUDENT] Name: #{person.name.capitalize}, ID: #{person.id}, Age: #{person.age} }"
      end
    end
  else
    puts 'No people in the school, create some.'
  end
end

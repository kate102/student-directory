def input_students
  puts "PLease enter the names of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  # get the first name
  name = gets.chomp
  while !name.empty? do
    # add the student has to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  # return the array of students
  students
end
 
def print_header
  # And then print them
  puts "The students of Villians Academy"
  puts "---------------"
end

def print_name(students)
  students.each_with_index do |student,i|
    puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
  end
end

def print_find_name_with_letter(students)
  puts " please enter letter"
  letter = gets.chomp
  students.each_with_index do |student,i|
    if student[:name][0] == letter
      puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
    end
  end
end

def print_footer(names)
  # Now we add a print statement to count the number of students
  print "Overall we have #{names.count} great students!"
end

# Now to call the methods
students = input_students
print_header
print_name(students)
print_footer(students)

print_find_name_with_letter(students)

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
 
def input_students_data
  puts "Please enter the details of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  # get the first name
  puts "Please enter the name of the student"
  name = gets.chomp
  while !name.empty? do
    puts "Please enter their height"
    height = gets.chomp
    puts "and their favorite icecream "
    icecream = gets.chomp
    # add the student has to the array
    students << {name: name, cohort: :november, height: height, icecream: icecream}
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the student"
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

def print_details(students)
  students.each_with_index do |student,i|
    puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} ) Height is #{student[:height]} and favorite icrecream is #{student[:icecream]}"
  end
end

def print_name(students)
  students.each_with_index do |student,i|
    puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
  end
end

# This is probably cheating...!
def print_name_with_while(students)
  i = 0
  student_array = students.flatten
  while i < student_array.length do
    puts "#{i+1}: #{student_array[i][:name]} (cohort - #{student_array[i][:cohort]} )"
    i += 1 
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

def print_short_name(students)
  puts "\n The list of students with names shorter than 12 is :"
  students.each_with_index do |student,i|
    if student[:name].length < 12
      puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
    end
  end
end

def print_footer(names)
  # Now we add a print statement to count the number of students
  print "Overall we have #{names.count} great students!"
end

# Now to call the methods
students = input_students_data
print_header
# print_name_with_while(students)
# print_name(students)
print_details(students)
print_footer(students)

# print_find_name_with_letter(students)
# print_short_name(students)

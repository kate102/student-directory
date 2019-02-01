
def input_students_data
  puts "Please enter the details of the students"
  puts "To finish, just hit return twice"
  students = []
  s_string = "student"
  puts "Please enter the name of the student"
  name = gets.chomp
  while !name.empty? do
    puts "Please enter their height"
    height = gets.chomp
    puts "and their country of birth  "
    cob = gets.chomp
    puts "and finally, their hobbies"
    hobbies = gets.chomp
    students << {name: name, cohort: :november , height: height, cob: cob, hobbies: hobbies}
    puts "Now we have #{students.count} #{s_string}"
    s_string << "s"
    puts "Please enter the name of the student"
    name = gets.chomp
  end
  # return the array of students
  return students
end
  



def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
   students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  header_string1 = "The Students of Villians Academy"
  header_string2 = "-" * header_string1.length
  puts header_string1.center(150)
  puts header_string2.center(150,"-")
end

def print_details(students)
  students.each_with_index do |student,i|
    puts "#{i+1}: #{student[:name]}" +"cohort - #{student[:cohort]}".to_s.center(20) + "Height is #{student[:height]}".center(30) + "CoB is #{student[:cob]}".center(50) + " and hobbies are #{student[:hobbies]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods

students = input_students_data
print_header
print_details(students)
print_footer(students)

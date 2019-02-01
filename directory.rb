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
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_find_name_with_letter(students)
  puts "Please enter letter"
  letter = gets.chomp
  students.each_with_index do |student,i|
    if student[:name][0] == letter
      puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
    end
  end
end

# Print the number
def print(students)
  students.each_with_index do |student,i|
    puts "#{i+1}: #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods

students = input_students
print_header
print_find_name_with_letter(students)
# print(students)
print_footer(students)

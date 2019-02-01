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

# Print names < 12 chars
def print_short(students)
  x = 0
  while x < students.length do 
    if students[x][:name].length < 12
      puts "#{students[x][:name]} (#{students[x][:cohort]} cohort)"
    end
    x += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing happens until we call the methods

students = input_students
print_header
print_short(students)
print_footer(students)

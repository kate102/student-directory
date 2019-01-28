# Put all of the students in an array
students = [
    ["Dr. Hannibal Lecter", :november],
    ["Darth Vader", :november],
    ["Nurse Ratched", :november],
    ["Michael Corleone", :november],
    ["Alex DeLarge", :november],
    ["the Wicked Witch of the West", :november],
    ["Terminator", :november],
    ["Freddie Kruger", :november],
    ["The Joker", :november],
    ["Joffrey Baratheon", :november],
    ["Norman Bates", :november]
]

def print_header
  # And then print them
  puts "The students of Villians Academy"
  puts "---------------"
end

def print_name(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(names)
  # Now we add a print statement to count the number of students
  print "Overall we have #{names.count} great students!"
end

# Now to call the methods
print_header
print_name(students)
print_footer(students)

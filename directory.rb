# Put all of the students in an array
students = [
     "Dr. Hannibal Lecter",
     "Darth Vader",
     "Nurse Ratched",
     "Michael Corleone",
     "Alex DeLarge",
     "the Wicked Witch of the West",
     "Terminator",
     "Freddie Kruger",
     "The Joker",
     "Joffrey Baratheon",
     "Norman Bates"
]

def print_header
  # And then print them
  puts "The students of Villians Academy"
  puts "---------------"
end

def print_names(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  # Now we add a print statement to count the number of students
  print "Overall we have #{names.count} great students!"
end

# Now to call the methods
print_header
print_names(students)
print_footer(students)

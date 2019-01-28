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

# And then print them
puts "The students of Villians Academy"
puts "---------------"
students.each do |student|
  puts student
end

# Now we add a print statement to count the number of students
print "Overall we have #{students.count} great students!"

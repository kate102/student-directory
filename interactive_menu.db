@students = []

# ------- Main Menu Loop --------
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end # loop
end

# ------- Processing Methods ----
def process(selection)
  case selection
    when "1"
      @students = input_students
    when "2"
      show_students           
    when "3"
      save_students           
    when "9"
      exit
    else
      puts "I don't know what you mean"
  end # case
end

# ------- Input Methods ---------
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  return @students
end

def show_students
  print_header
  print_details
  print_footer
end

def save_students
  puts "In save Students from themselves"
end

# ------- Print Methods ---------
def print_menu
  s = "-" * 50
  puts s.center(50)
  puts "Menu".center(50)
  puts s.center(50)
  puts "1. Input the students details"
  puts "2. Show the students details"
  puts "3. Save the students details to file (student.csv) "
  puts "9. Exit"
end

def print_header
  puts "The students of my cohort at Makers Academy".center(50)
  s = "-" * 50
  puts s.center(50)
end

def print_details
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  n = @students.length
  if n > 0
    puts "Overall, we have #{n} great students"
  else
    puts "Overall, we have no students"
  end
end

# -----------------------------
interactive_menu

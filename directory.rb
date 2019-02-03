require 'date'

# ------- Initialise Global Variables --

@students = []
@file_name = ARGV.first
DEFAULT_FILE_NAME = "students.csv"

# ------- Main Menu Loop --------

def interactive_menu
  ARGV.clear
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
      print_students           
    when "3"
      save_students           
    when "4"
      try_load_students           
    when "9"
      exit
    else
      puts "I don't know what you mean"
  end # case
end

# ------- Get and Store Data Methods --

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    update_array(name)
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  puts "Entering the student names was successful" 
  return @students
end

def update_array(name, cohort = "november")
    # add the student hash to the array
    @students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{@students.count} students"
end

def save_students
  get_filename
  puts "File name is [#{@file_name}]"
  # Open the file for writing
  file = File.open(@file_name,"w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "Student Details Written To File #{@file_name}"
end


def load_students(filename = "students.csv")
  # Empty the student array for loading, otherwise we get duplicates
  @students.clear 
  # Open the file for writing
  file = File.open(@file_name,"r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    update_array(name,cohort)
  end
  file.close
  puts "Student Details Read from File #{@file_name}"
end

def try_load_students
  get_filename
  # Open the file for writing
  if File.exists?(@file_name) # Check it exists
    load_students(@file_name)
    puts "Loaded #{@students.count} from #{@file_name}"
  else
    # Output message and return to the menu
    puts "Sorry but file, #{@file_name}, does not exist"
    @file_name.clear
  end
end
    
def get_filename
  if @file_name.nil? || @file_name.length == 0 
    puts "No commandline file name was specified" 
    puts "Would you like to specify an input file?"
    puts "if not then the default, student.csv will be used."
    puts "Please enter the file name or press return"
    @file_name = gets.chomp
    if @file_name.length == 0
      puts "Setting file name to #{DEFAULT_FILE_NAME}"
      @file_name = DEFAULT_FILE_NAME
    end
  end
end 

# ------- Print Methods ---------

def print_menu
  s = "-" * 50
  puts s.center(50)
  puts "Menu".center(50)
  puts s.center(50)
  puts "1. Input the students details"
  puts "2. Show the students details"
  puts "3. Save the students details to file"
  puts "4. Load the students details from a file"
  puts "9. Exit"
end

def print_students
  print_header
  print_details
  print_footer
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
  case n
    when 0
      puts "Overall, we have no students"
    when 1
      puts "Overall, we have one great student"
    else
      puts "Overall, we have #{n} great students"
  end
end

# -----------------------------
interactive_menu

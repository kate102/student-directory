### Step 8 - Q11 Note that this is doe outside this program
#
# The list of possible co-horts, Unknown is the default
@cohorts = ["Unknown","January","February","March","April","May","June","July","August","September","October","November","December"]

@cohort_hash = {
      :January =>[],
      :February =>[],
      :March =>[],
      :April =>[],
      :May =>[],
      :June =>[],
      :July =>[],
      :August =>[],
      :September =>[],
      :October =>[],
      :November =>[],
      :December =>[],
      :Unknown =>[]
  }

### Step 8 - Q8 Group by cohort
def print_cohort_grouping(students)
  students.each do |student|
    @cohort_hash[student[:cohort]] << student[:name]
  end
  @cohort_hash.each do |key, value|
    if  !value.empty?
      puts  "#{key} Students are #{value}"
    end
  end
end

def input_students_data
  puts "Please enter the details of the students"
  puts "To finish, just hit return twice"
  students = []
  ### Step 8 - Q9 Output student/s depending on number of students
  s_string = "student"
  puts "Please enter the name of the student followed by their cohort"
  ### Step 8 - Q10 Use something instead of chomp
  name = gets.sub("\n","") 
  ### Step 8 - Q4 Use while instead of each
  ### Step 8 - Q7 Get the cohort, convert from symbol and deal with invalid or empty strings and provide a default
  while !name.empty? do
    cohort = gets.chomp.to_sym
    while @cohorts.find_index(cohort.to_s) == nil && !cohort.empty? do
      puts "Please enter a valid cohort"    
      cohort = gets.chomp.to_sym
    end
    if cohort.empty?
      cohort = "Unknown".to_sym
    end
    ### Step 8 - Q5 Input additional details 
    puts "Please enter their height"
    height = gets.chomp
    puts "and their country of birth  "
    cob = gets.chomp
    puts "and finally, their hobbies"
    hobbies = gets.chomp
    students << {name: name, cohort: cohort , height: height, cob: cob, hobbies: hobbies}
    puts "Now we have #{students.count} #{s_string}"
    s_string << "s"
    puts "Please enter the name of the student followed by their cohort"
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
  ### Step 8 - Q6 Use center to improve the display (Note that I have used ljust in print details to tabulate)
  puts header_string1.center(150)
  puts header_string2.center(150,"-")
end

### Step 8 - Q1 Print number
def print_details(students)
  ### Step 8 - Q12 Print students only if the list is not empty
  if !students.empty?
    students.each_with_index do |student,i|
      puts "#{i+1}: #{student[:name]}".ljust(20)  +"cohort - #{student[:cohort]}".to_s.ljust(20) + "Height is #{student[:height]}".ljust(20) + "CoB is #{student[:cob]}".ljust(20) + " and hobbies are #{student[:hobbies]}"
    end
  else
    puts "There are no students to show"
  end
end

### Step 8 - Q2 Print students whose names begin with a certain letter
def print_find_name_with_letter(students)
  puts " please enter letter"
  letter = gets.chomp
  students.each_with_index do |student,i|
    if student[:name][0] == letter
      puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
    end
  end
end

### Step 8 - Q3 Print students whose names are shorter than 12 characters
def print_short_name(students)
  puts "\n The list of students with names shorter than 12 is :"
  students.each_with_index do |student,i|
    if student[:name].length < 12
      puts "#{i+1}: #{student[:name]} (cohort - #{student[:cohort]} )"
    end
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
print_cohort_grouping(students)

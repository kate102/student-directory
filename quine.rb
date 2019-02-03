# A Quine is a program that prints itself
# FILE is the file name 
# It opens the file to read and the outputs each line
# Interesting!

File.open(__FILE__,"r") { |file| file.readlines.each { |line| puts line } }

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    puts "Please enter the name of a student"
    puts "To finish, leave one or both fields blank"
    students = []
    name = gets.chomp
    puts "Please enter a hobby"
    hobby = gets.chomp

    while !name.empty? do
      students << {name: name, cohort: :november}
    while !name.empty? && !hobby.empty? do
      students << {name: name, hobby: hobby, cohort: :november}
      puts "Now we have #{students.count} students"
      puts "Another name"
      name = gets.chomp
      puts "Another hobby"
      hobby = gets.chomp
    end
    students
  end
@@ -19,7 +24,7 @@ def print_header

  def print(students)
    students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort), who likes #{student[:hobby].downcase}" if student[:name].length < 12
    end 
  end 
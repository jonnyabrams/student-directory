def input_students
    puts "Please enter the name of a student"
    puts "To finish, leave one or both fields blank"
    students = []
    name = gets.chomp
    puts "Please enter a hobby"
    hobby = gets.chomp
  
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
  
  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  
  def print(students)
    students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort), who likes #{student[:hobby].downcase}" if student[:name].length < 12
    end 
  end 
  
  def print_footer(students)
    puts "Overall, we have #{students.count} great students"
  end 
  
  students = input_students
  print_header
  print(students)
  print_footer(students)
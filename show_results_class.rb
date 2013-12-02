class ShowResults

  def initialize(student_names_with_letter_grades)
    @letter_grades = student_names_with_letter_grades
    @a_students = []
    @b_students = []
    @c_students = []
    @d_students = []
    @f_students = []
  end

  def print_each_grade_count
    @letter_grades.class_stats.each do |person|
      if person[:grade] == 'A'
        @a_students << person[:name]
      elsif person[:grade] == 'B'
        @b_students << person[:name]
      elsif person[:grade] == 'C'
        @c_students << person[:name]
      elsif person[:grade] == 'D'
        @d_students << person[:name]
      else @f_students << person[:name]
      end
    end
    puts "90: #{@a_students.count}"
    puts "80: #{@b_students.count}"
    puts "70: #{@c_students.count}"
    puts "60: #{@d_students.count}"
    puts "50: #{@f_students.count}"
  end

def print_student_names
  if @a_students.count >= 1
    puts ''
    puts "A Students"
    puts "==================="
    @a_students.each do |person|
      puts person
    end
  end
  if @b_students.count >= 1
    puts ''
    puts "B Students"
    puts "==================="
    @b_students.each do |person|
      puts person
    end
  end
  if @c_students.count >= 1
    puts ''
    puts "C Students"
    puts "==================="
    @c_students.each do |person|
      puts person
    end
  end
  if @d_students.count >= 1
    puts ''
    puts "D Students"
    puts "==================="
    @d_students.each do |person|
      puts person
    end
  end
  if @f_students.count >= 1
    puts ''
    puts 'F Students'
    puts "==================="
    @f_students.each do |person|
      puts person
    end
  end
  end
end
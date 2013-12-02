class ShowResults

  def initialize(student_names_with_letter_grades)
    @letter_grades = student_names_with_letter_grades
    @a_count = []
    @b_count = []
    @c_count = []
    @d_count = []
    @f_count = []
  end

  def print_each_grade_count
    @letter_grades.class_stats.each do |person|
      if person[:grade] == 'A'
        @a_count << person[:name]
      elsif person[:grade] == 'B'
        @b_count << person[:name]
      elsif person[:grade] == 'C'
        @c_count << person[:name]
      elsif person[:grade] == 'D'
        @d_count << person[:name]
      else @f_count << person[:name]
      end
    end
    puts "90: #{@a_count.count}"
    puts "80: #{@b_count.count}"
    puts "70: #{@c_count.count}"
    puts "60: #{@d_count.count}"
    puts "50: #{@f_count.count}"
  end

def print_student_names
  if @a_count.count >= 1
    puts ''
    puts "A Students"
    puts "==================="
    @a_count.each do |person|
      puts person
    end
  end
  if @b_count.count >= 1
    puts ''
    puts "B Students"
    puts "==================="
    @b_count.each do |person|
      puts person
    end
  end
  if @c_count.count >= 1
    puts ''
    puts "C Students"
    puts "==================="
    @c_count.each do |person|
      puts person
    end
  end
  if @d_count.count >= 1
    puts ''
    puts "D Students"
    puts "==================="
    @d_count.each do |person|
      puts person
    end
  end
  if @f_count.count >= 1
    puts ''
    puts 'F Students'
    puts "==================="
    @f_count.each do |person|
      puts person
    end
  end
  end
end
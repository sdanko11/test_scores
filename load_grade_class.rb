require 'csv'

class LoadGrades

  attr_reader :students_and_grades

  def initialize
    @students_and_grades =[]
  end

  def load_file(grade_data)
CSV.foreach(grade_data, :headers => true) do |row|
  each_student = {}
  each_student = {:name => row['Name'], :grade => row['Grade'].to_i}
  @students_and_grades << each_student
  end
end
end
class CalculateClassStats

  attr_reader :class_stats

  def initialize(grades)
    @all_students_and_grades = grades
    @class_stats = []
  end

  def calculate_class_stats
    @all_students_and_grades.students_and_grades.each do |student|
      grade_group = {}
      if student[:grade] >= 90
         grade_group = {:grade => 'A', :name => student[:name]}
         @class_stats << grade_group
      elsif student[:grade] >= 80 && student[:grade] < 90
         grade_group = {:grade => 'B', :name => student[:name]}
         @class_stats << grade_group
      elsif student[:grade] >= 70 && student[:grade] < 80
         grade_group = {:grade => 'C', :name => student[:name]}
         @class_stats << grade_group
      elsif student[:grade] >= 60 && student[:grade] < 70
        grade_group = {:grade => 'D', :name => student[:name]}
        @class_stats << grade_group
      else grade_group = {:grade => 'F', :name => student[:name]}
        @class_stats << grade_group
      end
    end
  end
end
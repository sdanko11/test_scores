require 'csv'

require_relative 'load_grade_class'
require_relative 'calculate_class_stats_class'
require_relative 'show_results_class'

grades = LoadGrades.new
grades.load_file('grades.csv')
class_stats = CalculateClassStats.new(grades)
class_stats.calculate_class_stats
grades_report = ShowResults.new(class_stats)
grades_report.print_each_grade_count
grades_report.print_student_names
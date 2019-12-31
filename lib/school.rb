class School
  attr_accessor :roster
  attr_reader :school_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {} 
  end
  
  def add_student(student_name, grade)
    if roster.include?(grade) == false
      roster[grade] = []
    end
      roster[grade] << student_name
  end 
  
  def grade(grade_year)
    roster[grade_year]
  end
  
  def sort
    roster.each {|grade, students| students.sort!}
  end
end

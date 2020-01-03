class School
  
  attr_reader :roster, :name
  
  def initialize(school_name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade].push(student)
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
  
end

# code here!
class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    collect = {}
    roster.each do |grade, students|
      collect[grade] = students.sort
    end
    collect
  end
end
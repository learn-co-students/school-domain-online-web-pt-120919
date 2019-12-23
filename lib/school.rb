class School 
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    if !roster[grade]
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end 
  end
  
  def grade(grade)
    roster[grade]  
  end   
  
#   def sort
#   #   roster.each {|grade, name| name.sort!}
#   #   sorted = roster.sort_by {|grade, name| grade}
#   #   sorted.to_h
#   # end 
# end 

def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    p sorted
  end
end 


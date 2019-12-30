class School 
  attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    sorted_hash = {} # hash to store sorted students
    roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
    sorted_hash
  end
end
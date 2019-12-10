# code here!
class School 
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  attr_reader :roster 
  
  def add_student(name, grade)
    if !@roster.key?(grade)
      @roster[grade] = []
      @roster[grade] << name 
    else 
      @roster[grade] << name 
    end
  end
  
  def grade(level)
    @roster[level]
  end
  
  def sort 
    @roster.each do |grade, names|
      names.sort!
    end
  end
end
class School
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
end

def grade(level)
  roster[level]
end

def sort
  roster.each do |grade, students|
  roster[grade] = students.sort
end
end

end

require"pry"
class School
  attr_accessor :name, :roster, :student,:grade
 def initialize(name)
  @name=name
  @roster={}
  # everthing in intialize needs to be a instance veriable
#binding.pry
 end
 

 def add_student(student,grade)
  @student = student
  @grade = grade
 # binding.pry
 if roster.include?(grade) ==false
   roster[grade]= [] 
 end
 roster[grade]<< student
 end
 
 def grade(number)
   roster[number]
   #binding.pry
 end
 
 def sort
 roster.each do |grade, student |
#  roster is the hash grade is the key then we sort every value within that key

#roster[grade] is taking are roster digging in to each grade wich is our key for the hash then student.sort is sorting all the values in this case student name and then saveing our new sorted array

  roster[grade] = student.sort
  end 
 end
 
#if it says #whatever in the terminal usally wants you to create instence method and if it says .whatever it wants you to creat a class method
end
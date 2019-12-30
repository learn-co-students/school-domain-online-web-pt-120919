class School
  attr_accessor :name, :roster

 def initialize(name)
    @name=name
    @roster = {}
  end
  def add_student(student,num)
    @roster[num]||=[]
     @roster[num] << student
  end
  def grade(num)
    roster.detect do|n,s|
    if n == num
      return s
  end
  end
  end

def sort 
  hash = {}
  roster.each do |n,s|
    hash[n] = s.sort 
  end
  hash
end
end


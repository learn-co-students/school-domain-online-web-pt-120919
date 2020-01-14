# code here!
class School
    attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
end
  
  def add_student(student, number)
     roster[number] ||= []
     roster[number] << student
  end
  
  def grade(number)
    roster.detect do |a, b| 
      if a == number
        return b
      end
    end
  end
  
  def sort 
  beg_hash = {}
  roster.each do |a, b| 
    beg_hash[a] = b.sort 
  end 
  beg_hash
end 
  
  

end

school = School.new("Test School")
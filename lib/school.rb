class School
attr_accessor 
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade] !=nil
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |student, grade|
      grade.sort!
    end
  end
end
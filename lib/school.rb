class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def roster
    @roster
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each {|key, array| array.sort!}
    @roster
  end
  
end
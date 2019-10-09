require "pry"

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
    # binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # map returns array with sorted names
    # add additional .sort.to_h to sort the keys 
    # and convert back to hash
    @roster.map do |grade, names|
      [grade, names.sort]
    end.to_h
  end
end

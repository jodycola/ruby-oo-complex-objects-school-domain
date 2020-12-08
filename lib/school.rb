# code here!
require 'pry'

class School
    attr_accessor :roster

    def initialize(name_of_school)
        @schoolName = name_of_school
        @roster = {}
    end

    def add_student(name_of_student, grade)
            @roster[grade] ||= []
            @roster[grade] << name_of_student
    end

    def grade(grade)
        @roster[grade] ||= @roster
    end

    def sort
        sorted = {}
         @roster.each do | grade, students |
        sorted[grade] = students.sort        
            end
        sorted
    end

end

binding.pry
0
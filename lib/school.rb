# code here!
class School
    
    def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = roster
    end
    def roster
        @roster
    end
# adding a student to the array in the array 'grade' within the hash 'roster'
    def add_student(student, grade_num)
        @student = student
        @grade_num = grade_num
        @roster[@grade_num] ||= []
        @roster[@grade_num] << "#{@student}"
    end

    def grade(grade_num)
        @grade_num = grade_num
        @roster[@grade_num]
    end

    def sort
        sorted_roster = {}
        @roster.each do |grade_num, students|
            sorted_roster[grade_num] =  students.sort
        end
        sorted_roster
    end
end
class Bootcamp
    # set instance variables
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash,key| hash[key] = []}
    end
    # write getter methods
    def name
        @name
    end 

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end 

    def students
        @students
    end 

    # write instance methods/hashtag methods
    # when you're inside a class you can always reference the attributes
    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student 
            return true
        end

        false
    end 

    def enrolled?(student)
        @students.include?(student)
    end
    
    def teacher_to_student_ratio
        @students.length / @teachers.length
    end 

    # here you can also say enrolled?(student)
    def add_grade(student, grade)
        if self.enrolled?(student) # we're calling enrolled? on the same instance of bootcamp
            # which bootcamp do you want to check enrolled on?
            # THIS bootcamp
            @grades[student] << grade
            return true
        else
            return false
        end
    end 

    def num_grades(student)
        @grades[student].length
    end

    def average_grades(student)
        if self.enrolled?(student) && self.num_grades(student) > 0
            grades = @grades[student]
            sum = 0
            grades.each { |grade| sum += grade }
            sum / grades.length
        end

        nil
    end 
end 

# how to create a hash with a default value 
# hash = Hash.new("??????")
# hash = Hash.new(0)

# CORRECT WAY TO INITIALISE THE HASH   
# how to create a hash where the default values are distinct, empty arrays
# hash = Hash.new { |hash,key| hash[key] = [] }
# if you do not create the hash with the distinct arrays using a block

# WRONG WAY TO INITIALISE THE HASH
# hash = Hash.new([])
# when you initialise Hash.new with [], this is passing in a single array into the hash
# ie, there will only be one default value for ALL of the keys of the hash
# every value will point to this one array

# for MacOS: If you highlight a word and hold CMD+d, you can highlight another occurrence of that 
# word and then change it in multiple places


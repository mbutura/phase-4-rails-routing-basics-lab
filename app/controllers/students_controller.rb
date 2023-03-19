class StudentsController < ApplicationController
    def index
        render(json:Student.all)
    end

    def grades
        students_by_desc_grade = Student.all.order(grade: :desc)
        render(json:students_by_desc_grade)
    end

    def highest_grade
        best_student = Student.where(grade: Student.maximum('grade'))
        render(json:best_student)
    end
end

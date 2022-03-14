class StudentsController < ApplicationController

    def index
        # byebug
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        students = Student.all.order(grade: :desc)
        # grades = students.order(grade: :desc)
        render json: students
    end

    def highest_grade
        # byebug
        highest = Student.all.order(grade: :desc).first
        render json: highest
    end

    
end

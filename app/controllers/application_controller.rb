class ApplicationController < ActionController::API
    before_action :instructors, only: [:index]
    before_action :update_int, only: [:update]
    before_action :elimante_instructor, only: [:destroy]
    before_action :new_instructor, only: [:create]

#Students_before_actions_below_____________________
    before_action :students, only: [:index]
    before_action :info_student, only: [:update]
    before_action :remove_student, only: [:destroy]
    before_action :create_student, only: [:create]
    
end
# Instructor_______________________________________
private

    def instructors
        Instructor.all
    end

    def instructor
        Instructor.find(params[:id])
    end

    def update_int
        info = instructor
        info.update(instructor_params)
    end

    def new_instructor
        Instructor.create(instructor_params)
    end

    def elimante_instructor
        instructor.destroy
    end

    def instructor_params
        params.permit(:name)
    end
    # Student _______________________________________

    def students
        Student.all
    end

    def student
        Student.find(params[:id])
    end

    def info_student
        student.update(student_params)
    end

    def create_student
        Student.create(student_params)
    end

    def remove_student
        found_student = student
        found_student.destroy
    end

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end

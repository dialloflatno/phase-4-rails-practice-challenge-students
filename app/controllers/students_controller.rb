class StudentsController < ApplicationController

    def index 
        render json: students, status: :ok
    end


    def update 
        render json: info_student, status: 201
    end

    
    def create
        render json: create_student, status: :created
    end

    def destroy
        render json: remove_student, status: :no_content
    end





end

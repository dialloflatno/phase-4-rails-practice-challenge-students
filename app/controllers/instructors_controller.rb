class InstructorsController < ApplicationController

    def index 
        render json: instructors, status: :ok
    end

    def update 
        render json: update_int, status: :reset_content 
    end
    
    def create
        render json: new_instructor, status: :created
    end

    def destroy
        render json: elimante_instructor, status: :no_content
    end



end

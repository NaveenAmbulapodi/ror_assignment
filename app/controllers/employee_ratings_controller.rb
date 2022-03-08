class EmployeeRatingsController < ApplicationController
    def index
        @employee_ratings = EmployeeRating.all
        end
        def show
        @employee_rating = Employee_raiting.find(params[:id])
        end
        def new
        @employee_rating=EmployeeRating.new
        end
        def create
        @employee_rating = EmployeeRating.new(employee_params)
        if @employee_rating.save
        redirect_to employee_ratings_path
        else
        render :new
        end
        end
        def edit
        @employee_rating=EmployeeRating.find(params[:id])
        end
        def update
        @employee_rating = EmployeeRating.find(params[:id])
        if @employee_rating.update(employee_params)
        redirect_to employee_ratings_path
        else
        render :edit
        end
        end
        def destroy
        @employee_rating = EmployeeRating.find(params[:id])
        @employee_rating.destroy
        redirect_to employee_ratings_path
        end
        private
        def employee_rating_params
        params.require(:employee_rating).permit(:username,:rating, :reporting_manager)
        end
end


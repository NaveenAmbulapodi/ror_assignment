

class EmployeeRolesController < ApplicationController
  
  def index
      @employee_roles = EmployeeRole.all
      end
      def show
      @employee_role = EmployeeRole.find(params[:id])
      end
      def new
      @employee_role=EmployeeRole.new
      end
      def create
      @employee_role = EmployeeRole.new(employee_role_params)
      if @employee_role.save
      redirect_to employee_roles_path
      else
      render :new
      end
      end
      def edit
      @employee_role=EmployeeRole.find(params[:id])
      end
      def update
      @employee_role = EmployeeRole.find(params[:id])
      if @employee_role.update(employee_role_params)
      redirect_to employee_roles_path
      else
      render :edit
      end
      end
      def destroy
      @employee_role = EmployeeRole.find(params[:id])
      @employee_role.destroy
      redirect_to employee_roles_path
      end
      private
      def employee_role_params
        params.require(:employee_role).permit(:name, :role)
      end
end


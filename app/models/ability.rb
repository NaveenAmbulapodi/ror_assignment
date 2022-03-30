# frozen_string_literal: true

class Ability
  include CanCan::Ability

  
  def initialize(employee_role)
    employee_role ||= Employee_Role.new
    if employee_role.manager?
      can :manage, :all
    elsif employee_role.devloper?
      can :read, Project
      can :create, Project
      can :update, Project
      can :destroy, Project do |project|
        project.try(:employee_role) == employee_role
    end    
    elsif employee_role.tester?
      can :read, Project
      can :update, Project do |project|
      project.try(:employee_role) == employee_role
    end
    elsif employee_role.lead?
      can :manage, :devloper
    end  

         
  end
end

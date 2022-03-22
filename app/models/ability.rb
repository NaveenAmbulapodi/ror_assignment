# frozen_string_literal: true

class Ability
  include CanCan::Ability

  
  def initialize(employee_role)
    employee_role ||= Employee_Role.new
    if employee_role.manager?
      can :manage, :all
    elsif employee_role.devloper?
      can :read, Assignment
      can :create, Assignment
      can :update, Assignment
      can :destroy, Assignment do |assignment|
        assignment.try(:employee_role) == employee_role
    end    
    elsif employee_role.tester?
      can :read, Assignment
      can :update, Assignment do |assignment|
      assignment.try(:employee_role) == employee_role
    end
    elsif employee_role.lead?
      can :manage, :devloper
    end  

         
  end
end

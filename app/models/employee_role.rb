class EmployeeRole < ApplicationRecord
  belongs_to :role

  def manager?
    role.name == 'manager'
  end
end

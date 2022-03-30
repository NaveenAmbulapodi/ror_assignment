class RemovePermissionFromEmployeeRoles < ActiveRecord::Migration[6.1]
  def change
    remove_column :employee_roles, :permission, :string
  end
end

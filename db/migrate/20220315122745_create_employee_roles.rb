class CreateEmployeeRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_roles do |t|
      t.string :name
      t.string :role
      t.string :permission
      
      t.timestamps
    end
  end
end

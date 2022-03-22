class CreateEmployeeRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_roles do |t|
      t.string :name
      t.belongs_to :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end

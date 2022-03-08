class CreateEmployeeRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_ratings do |t|
      t.string :username
      t.integer :rating
      t.string :reporting_manager

      t.timestamps
    end
  end
end

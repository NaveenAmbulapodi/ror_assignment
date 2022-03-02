class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :duration
      t.integer :total_team

      t.timestamps
    end
  end
end

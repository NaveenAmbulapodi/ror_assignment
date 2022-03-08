class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end

class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.text :posts
      t.text :comments
      t.string :username

      t.timestamps
    end
  end
end

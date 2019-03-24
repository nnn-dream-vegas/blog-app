class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.text   :text
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end

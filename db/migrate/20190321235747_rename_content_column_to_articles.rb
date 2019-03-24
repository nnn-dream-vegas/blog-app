class RenameContentColumnToArticles < ActiveRecord::Migration[5.2]
  def change
     rename_column :blogs, :text, :content
  end
end

class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :image, :string
    add_column :posts, :genre, :string
    add_column :posts, :hoken, :string
  end
end

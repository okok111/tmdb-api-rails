class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :year
      t.string :description

      t.timestamps
    end
  end
end
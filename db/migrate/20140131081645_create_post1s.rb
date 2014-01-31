class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

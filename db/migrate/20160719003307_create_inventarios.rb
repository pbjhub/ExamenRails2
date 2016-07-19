class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :serial
      t.integer :size
      t.text :description

      t.timestamps null: false
    end
    add_index :inventarios, :serial
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :image
      t.text :content
      t.string :ancestry

      t.timestamps
    end
    add_index :pages, :ancestry
  end
end

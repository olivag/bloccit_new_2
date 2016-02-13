class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.boolean :public, default: true

      t.timestamps null: false
    end
    add_index :topics, :public
  end
end

class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :type, null: false
      t.integer :parent_id
      t.timestamps
    end
  end
end

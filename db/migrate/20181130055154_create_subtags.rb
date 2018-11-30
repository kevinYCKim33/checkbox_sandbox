class CreateSubtags < ActiveRecord::Migration[5.2]
  def change
    create_table :subtags do |t|
      t.integer :tag_id
      t.string :name
      t.timestamps
    end
  end
end

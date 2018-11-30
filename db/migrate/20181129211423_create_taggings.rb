class CreateTaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.references :selectable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

class CreateSubtags < ActiveRecord::Migration[5.2]
  def change
    create_table :subtags do |t|
      t.string :name
      t.references :subtaggable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

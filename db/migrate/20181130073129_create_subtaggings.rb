class CreateSubtaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :subtaggings do |t|
      t.integer :subtag_id
      t.references :subtaggable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

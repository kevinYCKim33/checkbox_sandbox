class AddIndexToTag < ActiveRecord::Migration[5.2]
  def change
    add_index :tags, :type
  end
end

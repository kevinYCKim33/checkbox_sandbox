class CreateVideoMixes < ActiveRecord::Migration[5.2]
  def change
    create_table :video_mixes do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.references :content, index: true

      t.timestamps
    end
  end
end

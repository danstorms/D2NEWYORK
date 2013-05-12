class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :image_id
      t.string :comment_text

      t.timestamps
    end
  end
end

class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.string :facebook_url
      t.string :twitter_handle

      t.timestamps
    end
  end
end

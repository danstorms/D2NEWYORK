class AddGuestToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :guest, :string

  end
end

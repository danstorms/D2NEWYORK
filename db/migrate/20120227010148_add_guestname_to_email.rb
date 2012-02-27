class AddGuestnameToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :guest_name, :string

  end
end

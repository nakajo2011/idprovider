class AddOmniauthToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :admin, :boolean
  end
end

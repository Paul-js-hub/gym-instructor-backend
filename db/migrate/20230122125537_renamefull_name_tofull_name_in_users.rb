class RenamefullNameTofullNameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :full_name, :fullName
  end
end

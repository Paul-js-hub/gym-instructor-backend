class AddDescriptionToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :description, :text
  end
end

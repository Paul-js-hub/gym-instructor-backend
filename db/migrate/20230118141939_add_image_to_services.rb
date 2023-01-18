class AddImageToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :image_url, :string
  end
end

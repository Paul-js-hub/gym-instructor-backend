class AddServiceToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :service, null: false, foreign_key: true
  end
end

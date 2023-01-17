class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :duration
      t.string :class_time
      t.string :fee

      t.timestamps
    end
  end
end

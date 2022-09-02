class CreateMyServices < ActiveRecord::Migration[6.1]
  def change
    create_table :my_services do |t|
      t.string :from
      t.string :to
      t.string :Departure_date
      t.string :Departure_time

      t.timestamps
    end
  end
end

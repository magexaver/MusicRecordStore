class CreateRents < ActiveRecord::Migration[7.1]
  def change
    create_table :rents do |t|
      t.integer :user_id
      t.integer :music_record_id
      t.datetime :rent_date
      t.integer :damage_assessment
      t.decimal :price, precision: 8, scale: 2
      t.string :note
      t.timestamps
    end
  end
end

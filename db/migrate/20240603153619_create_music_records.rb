# frozen_string_literal: true

class CreateMusicRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :music_records do |t|
      t.string :title
      t.string :photo
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.integer :damage_assessment, default: 0

      t.timestamps
    end
  end
end

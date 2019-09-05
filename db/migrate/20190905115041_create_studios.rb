class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :studio_name
      t.text :studio_details
      t.integer :minimum_booking
      t.string :studio_type
      t.integer :studio_hours
      t.string :past_clients
      t.string :audio_samples
      t.string :amenities
      t.string :main_equipment
      t.string :studio_rules
      t.text :address
      t.string :apt_suite_building
      t.string :price_per_hour
      t.boolean :is_audio_engineer
      t.string :photos
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

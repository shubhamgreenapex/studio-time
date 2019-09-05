class CreatePayoutDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :payout_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :date
      t.string :month
      t.string :year
      t.string :street_address
      t.string :postal_code
      t.string :city
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

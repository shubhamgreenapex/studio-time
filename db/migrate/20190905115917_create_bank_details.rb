class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.string :bank_account_number
      t.string :bsb
      t.string :sort_code
      t.string :routing_number
      t.references :payout_detail, foreign_key: true

      t.timestamps
    end
  end
end

class AddPremiumToStudio < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :is_premium_verified, :boolean
  end
end

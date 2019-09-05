class AddQuickReplyToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :quick_reply, :string
  end
end

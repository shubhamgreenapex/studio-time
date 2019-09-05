class PayoutDetail < ApplicationRecord
  belongs_to :country
  belongs_to :user
  has_one :bank_detail
end

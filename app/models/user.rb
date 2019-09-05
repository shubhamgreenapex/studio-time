class User < ApplicationRecord
  has_many :studios
  has_one :payout_detail
end

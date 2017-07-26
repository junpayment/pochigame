class User < ApplicationRecord
  has_one :user_auth
  has_one :user_session
  has_one :user_money
  has_many :user_characters
  has_many :user_quests
end

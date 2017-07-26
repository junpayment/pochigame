class Quest < ApplicationRecord
  has_many :quest_incentives
  has_many :quest_waves
end

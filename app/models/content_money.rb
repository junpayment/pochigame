class ContentMoney < ApplicationRecord
  has_many :gacha_sheets, as: :content
  has_many :quest_incentives, as: :content
end

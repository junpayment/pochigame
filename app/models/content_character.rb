class ContentCharacter < Character
  has_many :gacha_sheets, as: :content
  has_many :quest_incentives, as: :content
end

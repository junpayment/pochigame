class Character < ApplicationRecord
  has_many :enemies, foreign_key: :character_id
  has_many :growths, primary_key: :growth_type, foreign_key: :growth_type
end

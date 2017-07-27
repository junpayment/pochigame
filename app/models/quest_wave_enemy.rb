class QuestWaveEnemy < ApplicationRecord
  belongs_to :quest_wave, required: false
  has_one :enemy
end

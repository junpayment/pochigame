class QuestWave < ApplicationRecord
  belongs_to :quest, required: false
  has_many :quest_wave_enemies
end

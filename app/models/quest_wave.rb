class QuestWave < ApplicationRecord
  belongs_to :quest
  has_many :quest_wave_enemies
end

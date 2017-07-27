class QuestIncentive < ApplicationRecord
  belongs_to :quest, required: false
  belongs_to :content, polymorphic: true, required: false
end

class QuestIncentive < ApplicationRecord
  belongs_to :content, polymorphic: true
end

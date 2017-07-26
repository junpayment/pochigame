class GachaSheet < ApplicationRecord
  belongs_to :content, polymorphic: true
end

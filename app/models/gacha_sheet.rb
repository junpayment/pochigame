class GachaSheet < ApplicationRecord
  belongs_to :content, polymorphic: true, required: false
end

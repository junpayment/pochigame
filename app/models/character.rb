class Character < ApplicationRecord
  def growths
    Growth.where(growth_type: self.growth_type)
  end
end

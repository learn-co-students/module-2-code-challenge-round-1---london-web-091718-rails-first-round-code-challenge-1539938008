class Heroine < ApplicationRecord
  validates :super_name, uniqueness: true
  belongs_to :power


#   def self.search_by_power(search_by_power)
#     if search_by_power
#       found_power=Power.find_by(name: search_by_power)
#       if found_power
#         Heroine.where(power: power)
#       end
#     end
#   end
#   Heroine.all
 end

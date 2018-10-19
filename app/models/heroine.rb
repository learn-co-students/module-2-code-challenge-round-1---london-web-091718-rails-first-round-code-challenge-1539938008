class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

    def self.search(search)
    if !search.to_s.empty?
      self.all.select {|heroine| heroine.power.name == search.downcase}
    else
      self.all
    end
  end

end

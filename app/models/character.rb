class Character < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :age, presence: true
end

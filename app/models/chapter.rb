class Chapter < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 50 }
  validates :number, presence: true
  validates :scene, presence: true
  validates :anecdote, presence: true
end

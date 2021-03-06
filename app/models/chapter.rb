class Chapter < ActiveRecord::Base
  default_scope -> { order('number') }
  validates :number, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :scene, presence: true
  validates :anecdote, presence: true
end

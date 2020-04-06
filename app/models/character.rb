class Character < ApplicationRecord
  has_one_attached :photo
  has_and_belongs_to_many :episodes, -> { distinct(:id)}
  acts_as_taggable_on :tags

  validates :title, presence: true
  validates :season, presence: true
  validates :summary, presence: true
end

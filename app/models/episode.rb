class Episode < ApplicationRecord
  has_and_belongs_to_many :characters, -> { distinct(:id)}
  has_one_attached :photo
  acts_as_taggable_on :tags

  validates :title, presence: true
  validates :season, presence: true
  validates :summary, presence: true
end

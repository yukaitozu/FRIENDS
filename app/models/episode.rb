class Episode < ApplicationRecord
  has_and_belongs_to_many :characters
  acts_as_taggable_on :tags
end

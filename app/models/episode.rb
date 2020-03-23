class Episode < ApplicationRecord
  has_many :characters
  acts_as_taggable_on :tags
end

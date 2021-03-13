class Activity < ApplicationRecord
  belongs_to :lesson
  belongs_to :student

  has_one_attached :document
end

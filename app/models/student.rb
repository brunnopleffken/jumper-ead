class Student < ApplicationRecord
  belongs_to :classroom

  has_many :activities
end

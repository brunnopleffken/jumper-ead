class Student < ApplicationRecord
  belongs_to :classroom

  has_many :activities

  def to_param
    [id, name.parameterize].join('-')
  end
end

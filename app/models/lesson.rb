class Lesson < ApplicationRecord
  has_many :activities

  def to_param
    [id, title.parameterize].join('-')
  end
end

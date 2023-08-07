class Andr < ApplicationRecord
  belongs_to :project
  has_many :anders, dependent: :destroy
end

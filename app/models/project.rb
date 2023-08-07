class Project < ApplicationRecord
  belongs_to :user
  has_many :andrs, dependent: :destroy
  has_many :cets, dependent: :destroy
  has_many :todos, dependent: :destroy

end

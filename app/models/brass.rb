class Brass < ActiveRecord::Base
  has_many :loads

  validates :manufacturer, presence: true
  validates :caliber, presence: true
end

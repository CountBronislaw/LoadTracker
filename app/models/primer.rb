class Primer < ActiveRecord::Base
  has_many :loads

  validates :manufacturer, presence: true
  validates :size, presence: true
  validates :style, presence: true
end

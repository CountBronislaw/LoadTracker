class Bullet < ActiveRecord::Base
  has_many :loads
  
  validates :manufacturer, presence: true
  validates :style, presence: true
  validates :name, presence: true
  validates :weight, presence: true
  validates :caliber, presence: true
end

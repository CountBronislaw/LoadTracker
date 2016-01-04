class Powder < ActiveRecord::Base
  has_many :loads

  validates :manufacturer, presence: true
  validates :name, presence: true
end

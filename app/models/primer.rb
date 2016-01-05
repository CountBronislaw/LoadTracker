class Primer < ActiveRecord::Base
  has_many :loads

  validates :manufacturer, presence: true
  validates :size, presence: true
  validates :style, presence: true

  # Basically a copy of the helper method that can be used in forms
  def build_name
    "#{manufacturer} #{size} #{style}"
  end
end

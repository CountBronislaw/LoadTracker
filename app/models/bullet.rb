class Bullet < ActiveRecord::Base
  has_many :loads
  
  validates :manufacturer, presence: true
  validates :style, presence: true
  validates :name, presence: true
  validates :weight, presence: true
  validates :caliber, presence: true

  # Basically a copy of the helper method that can be used in forms
  def build_name
    "#{manufacturer} #{weight} #{style} #{name}"
  end

end

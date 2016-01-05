class Powder < ActiveRecord::Base
  has_many :loads

  validates :manufacturer, presence: true
  validates :name, presence: true

  # Basically a copy of the helper method that can be used in forms
  def build_name
    "#{manufacturer} #{name}"
  end
end

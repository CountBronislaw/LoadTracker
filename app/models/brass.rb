class Brass < ActiveRecord::Base
  has_many :batches

  validates :manufacturer, presence: true
  validates :caliber, presence: true
end

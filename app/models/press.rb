class Press < ActiveRecord::Base
  has_many :batches

  validates :manufacturer, presence: true
  validates :model, presence: true
  validates :round_count, presence: true
end

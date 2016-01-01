class Load < ActiveRecord::Base
  has_many :batches
  belongs_to :bullet
  belongs_to :primer
  belongs_to :powder
  belongs_to :brass
end

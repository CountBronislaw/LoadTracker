class Load < ActiveRecord::Base
  has_many :batches
  belongs_to :bullet
  belongs_to :primer
  belongs_to :powder

  # I left out :name as a required parameter as the user may not 
  # want to name the load
  validates :bullet_id, presence: true
  validates :powder_id, presence: true
  validates :primer_id, presence: true
  validates :powder_charge, presence: true
  validates :coal, presence: true
  validates :load_type, presence: true

end

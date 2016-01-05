class Batch < ActiveRecord::Base
    belongs_to :load
    belongs_to :brass
    belongs_to :press
end

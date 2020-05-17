class Artist < ApplicationRecord
    has_many :paintings
    has_many :galleries, through: :paintings
end

class Gallery < ApplicationRecord
    has_many :paintings
    has_many :artists, through: :paintings
end

class Cabin < ApplicationRecord
    has_many :photos, dependent: :destroy
end

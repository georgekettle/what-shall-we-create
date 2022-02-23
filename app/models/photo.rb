class Photo < ApplicationRecord
  belongs_to :cabin
  validates :rating, inclusion: { in: (0..5).to_a }
end

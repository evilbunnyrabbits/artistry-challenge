class ArtistInstrument < ApplicationRecord
  belongs_to :instrument
  belongs_to :artist
end

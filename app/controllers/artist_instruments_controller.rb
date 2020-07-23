class ArtistInstrumentsController < ApplicationController

  def index


  end

  def show

  end

  def new
    @artist_instrument = ArtistInstrument.new
    @artists = Artist.all
    @instruments = Instrument.all
  end

  def create
    @artist_instrument = ArtistInstrument.create(artist_instrument_params)
    redirect_to artist_path(@artist_instrument.artist_id)

  end


  private

  def artist_instrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end



end

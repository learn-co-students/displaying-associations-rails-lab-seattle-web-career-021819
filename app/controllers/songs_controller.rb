class SongsController < ApplicationController
  before_action :set_songs, only: [:show, :edit, :update, :destroy]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
  end

  def update

    @song.update(song_params)
    binding.pry
    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def set_songs
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end

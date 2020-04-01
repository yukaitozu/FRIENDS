class EpisodeController < ApplicationController
   def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @path = ''
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to episode_path(@episode)
    else
      render :new
    end
  end

  def destroy
    @episode = episode.find(params[:id])
    @episode.destroy
    redirect_to root_path
  end

  private

  def episode_params
    params.require(:episode).permit(:name, :photo)
  end
end


end

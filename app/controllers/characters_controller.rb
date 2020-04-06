class CharactersController < ApplicationController
  # def show
  #   @character = Character.find(params[:id])
  # end

  def new
    @episode = Episode.find(params[:episode_id])
    @character = Character.new
  end

  def create
    @episode = Episode.find(params[:episode_id])
    @character = Character.new(character_params)
    @character.episode = @episode
    if @character.save
      redirect_to episode_path(@episode)
    else
      render :new
    end
  end

  def destroy
    @character = character.find(params[:id])
    @character.destroy
    redirect_to episode_path(@character.episode)
  end

  private

  def character_params
    params.require(:character).permit(:first_name, :last_name, :quote)
  end
end

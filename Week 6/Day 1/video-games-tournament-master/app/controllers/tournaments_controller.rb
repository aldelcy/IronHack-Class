class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def api
  	tournaments = Tournament.all
  	render json: tournaments
  end

  def create
  	new_tournament = Tournament.create(tournament_params)

  	render json: new_tournament
  end

  def delete
  	tournament = Tournament.find_by(id: params[:id])
  	tournament.destroy
  	render json: tournament
  end

  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end
end

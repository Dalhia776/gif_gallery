class VotesController < ApplicationController
  before_filter :require_user

  def create
    @gif = Gif.find(params[:gif_id])
    @vote = Vote.new(:value => params[:value], :user => current_user)
    @gif.votes << vote
    @gifs = Gif.order(:total_score => :desc).all
    respond_to do |format|
      format.js {}
    end
  end

  private

  def vote_params
    params.permit(:gif_id, :value)
  end

end

class AnecdotesController < ApplicationController
  before_action :signed_in_user

  def create
    @anecdote = current_user.anecdotes.build(anecdote_params)
    if @anecdote.save
      flash[:success] = "Anecdote created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def anecdote_params
      params.require(:anecdote).permit(:content)
    end
end

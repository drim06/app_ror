class StaticPagesController < ApplicationController
  def home
    @anecdote = current_user.anecdotes.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end

class ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
  end

  def new
    @chapter = Chapter.new
  end

  def index
    @chapter = Chapter.all
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      flash[:success] = "New chapter created!"
      redirect_to @chapter
    else
      render 'new'
    end
  end

  private

    def chapter_params
      params.require(:chapter).permit(:number, :title, :scene, :anecdote, :theme)
    end
end

class ScenesController < ApplicationController
  before_action :signed_in_user

  def create
    @scene = current_user.scenes.build(scene_params)
    if @scene.save
      flash[:success] = "Scene created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def scene_params
      params.require(:scene).permit(:content)
    end
end

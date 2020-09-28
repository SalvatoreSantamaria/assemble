class HomeController < ApplicationController

  def index
    @recent_posts = Post.page(params[:page])

    respond_to do |format|
      format.html
      format.json { render json: @recent_posts }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @recent_posts }
    end
  end

end

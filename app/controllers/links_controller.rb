class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
  end

  def create
    @link = Link.new(user_id: current_user.id,
                     target_url: params[:target_url])

    @link.generate_slug
    @link.save
    redirect_to "/links"
    flash[:success] = "Link shortened!"
  end

  def show
    @link = Link.where('slug LIKE ?', params[:slug])

    redirect_to @link.first.target_url
    
  end
end

class LinksController < ApplicationController
  layout "app"

  before_action :find_link, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @links = Link.all.order("created_at DESC")
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @link.update(link_params)
      redirect_to @link, notice: "Press link was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
  end

  private

    def link_params
    
      params.require(:link).permit(:title, :url, :date)

    end

    def find_link
      @link = Link.find(params[:id])
    end












end

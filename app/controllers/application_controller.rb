class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :initialize_wallpaper

  private
  	def initialize_wallpaper
  		@wall = Wallpaper.all
  		@wallpaper = @wall.where(enabled: true).last
  	end

end
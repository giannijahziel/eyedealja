class VideosController < ApplicationController
	layout "app"

	before_action :find_video, only: [:show, :edit, :update, :destroy, :link]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@videos = Video.all.order("created_at DESC")
	end

	def show
		@video.link
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)

		@newvideo = @video
		@newvideo.link = @newvideo.link.split('=').last

		if @video.save

			redirect_to @video
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @video.update(pin_params)
			redirect_to @Video, notice: "Video was successfully updated"
		else
			render 'edit'
		end
	end

	def destroy
		@video.destroy
		redirect_to root_path
	end

	private

		def find_video
			@video = Video.find(params[:id])
		end

		def video_params
			params.require(:video).permit(:title, :link, :image)
		end

end

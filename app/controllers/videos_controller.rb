class VideosController < ApplicationController
	def index
		if params[:url].present?
			@video = Yt::Video.new url: params[:url]
		end
		respond_to do |format|
			format.html
			format.js
		end
	end
end

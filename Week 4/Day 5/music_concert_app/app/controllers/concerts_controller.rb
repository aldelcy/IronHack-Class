class ConcertsController < ApplicationController

	def new
		
	end
	def create
		
	end
	def index
		@today = (Time.zone.now-4.hours).day
		@this_hour = (Time.zone.now-4.hours).hour

		@this_day_beginning = Time.zone.now.beginning_of_day
		@this_day_ending = Time.zone.now.end_of_day

		@concerts = Concert.all
		@concerts_today = Concert.where("date BETWEEN ? AND ?", @this_day_beginning, @this_day_ending).order(date: :desc)
		@concerts_coming = Concert.where("date > ?", @this_day_ending).order(date: :asc)


	end
	def show
		@this_hour = (Time.now).hour
		@current_concert = Concert.find(params[:id])
		@new_comment = Comment.new
		@comments = Comment.where("concert_id = ?", params[:id]).order(created_at: :desc)
	end




	private

	def concert_params 

	end
end
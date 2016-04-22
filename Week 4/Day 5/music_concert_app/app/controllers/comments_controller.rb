class CommentsController < ApplicationController
	def create
		new_comment = Comment.new(comment_params)
		new_comment.concert_id = params[:concert_id]
		new_comment.save
		redirect_to "/concerts/"+params[:concert_id]
	end


	private

	def comment_params 
		params.require(:comment).permit(:user_name, :comment)
	end
end
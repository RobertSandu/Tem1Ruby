class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		permitted = params.permit(comment: [:username, :content])
		par = ActionController::Parameters.new({"username" => permitted[:comment][:username], "content" => permitted[:comment][:content]})
		par = par.permit(:username, :content)
		@comment = @post.comments.create!(par)
		redirect_to @post
	end
end

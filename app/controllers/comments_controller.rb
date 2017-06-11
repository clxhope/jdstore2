class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @order = Order.find_by_token(params[:order_id])
    @comment = Comment.new
  end


end

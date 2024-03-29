class CommentsController < ApplicationController
  def index
    @comments = Comment.scoped
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new(:parent_id => params[:parent_id])
  end

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to comments_url
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_url
  end
end

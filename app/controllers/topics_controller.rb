class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @newTopic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_index_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @post = Post.where(topic_id: params[:id])
    @post.destroy_all
    @topic.destroy
    redirect_to topics_index_path
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(title: params[:title])
    redirect_to topics_index_path
  end

  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(:topic_id => params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

end

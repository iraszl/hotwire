class LikesController < ApplicationController
  before_action :set_tweet

  def create
    @tweet.increment! :likes
    @tweet.update(updated_at: Time.current)
    redirect_to @tweet
  end

  private
  
  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
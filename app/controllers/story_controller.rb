class StoryController < ApplicationController
  def index
    @stories=Story.find(:all,:limit=>8,:order=>'time desc')
  end
  def show
    @story=Story.find(params[:id])
    @root_comments=@story.comments.find(:all,:conditions=>"parent_id IS NULL")
    logger.info @root_comments.inspect
  end
end

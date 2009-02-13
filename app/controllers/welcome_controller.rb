class WelcomeController < ApplicationController
  def index
    @stories=Story.find(:all,:limit=>8,:order=>'time desc')
  end

end

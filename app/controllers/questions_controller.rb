class QuestionsController < ApplicationController

  def ask
    @ask= params[:ask]
  end

  def answer
    # @answer = params[:answer]
    @answer = nil
    if params[:ask] == "I am going to work"
      @answer = "Great!"
    elsif params[:ask].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end



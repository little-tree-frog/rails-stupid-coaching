class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:question]
    @print_me = ""
    if @answer.include?("?")
      @print_me = "Silly question, get dressed and go to work!"
    elsif @answer == "i am going to work" || @answer == "I am going to work"
      @print_me = "Great!"
    else
      @print_me = "I don't care, get dressed and go to work!"
    end
  end

end

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question] # to connect user input

    if @your_message.downcase == "i am going to work right now!"
     @answer = "G"
    elsif @your_message.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

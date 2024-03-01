class QuestionsController < ApplicationController 
    skip_before_action :verify_authenticity_token
    def ask   
    end

    def answer
        if params[:question].downcase == 'i am going to work'
            @answer = 'Great!'
        elsif params[:question].end_with?('?')
            @answer = 'Silly question, get dressed and go to work!'
        else
            @answer = "I don't care, get dressed and go to work!"
        end
    end
end

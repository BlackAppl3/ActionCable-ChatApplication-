class ChatroomsController < ApplicationController
    
    def index 
        @info = Message.all
        @get_form_data = Message.new
    end

end
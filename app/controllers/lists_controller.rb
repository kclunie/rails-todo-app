class ListsController < ApplicationController

    def index
        card = Card.find_by_id(params[:card_id])
        @lists = card.lists
    end

    def new
        card = Card.find_by_id(params[:card_id])
        @list = card.lists.build 
    end

    def create
        @card = Card.find(list_params[:card_id])
        @list = List.create(lists_params)
        
        if @list.save
            redirect_to lists_path
           
         else
            flash[:message] = "Guest cannot be blank or you have already RSVPd!"
            redirect_to new_card_list_path(@card)
          end
    end

    private

    def lists_params
        params.require(:list).permit(:description, :card_id)
    end

end

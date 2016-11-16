class EventsController < ApplicationController
  def new 
     @event = Event.new
     @users=User.all
    end

	def index 
		@events=Event.all 
	end 

   def edit
   @event=Event.find(params[:event_id])
  end

 
    def update
    @event=Event.find_by_id(params[:event_id])
    @event.update_attributes(event_params)
    redirect_to events_list_path
  end

  # def update
    
  #       @event=Event.find(params["event_id"])
  #       @event.update(event_params)
        
  #       @event.users.clear        
  #       if (params["user_ids"])
  #           @event.users << User.find(params["user_ids"])
  #       end
  #       @event.save        
  #       redirect_to events_list_path
  #   end

	def create
  	@event = Event.new(event_params)
  	# binding.pry
  	if @event.save
  		# binding.pry
    redirect_to events_list_path
 	 else
    render "new"
    end
    end

    private 
	def event_params 
    # binding.pry
		params.require(:event).permit(:eventtitle, :venue, :date, :time, :discription, :invitees, :status) 
    end
end


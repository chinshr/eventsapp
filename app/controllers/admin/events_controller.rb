class Admin::EventsController < AdminController

  def index
    @events = Event.all
  end

  def new
    #TODO new admin:event

  end

  def create
    #TODO create admin:event
  end

end
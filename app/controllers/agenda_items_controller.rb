class AgendaItemsController < ApplicationController

  before_action :set_event, only: [:create, :new, :show, :edit, :update, :destroy]

  # GET /events/1/agenda_items/new
  def new
    @agenda_item = AgendaItem.new
  end

  # GET /events/1/agenda_items/1
  def show
  end

  # GET /events/1/agenda_items/1/edit
  def edit
  end

  # POST /events/1/agenda_items
  def create
    @agenda_item = AgendaItem.new(agenda_item_params)
    @agenda_item.event_id = @event.id


    if @agenda_item.save
      redirect_to @event, notice: 'Agenda Item was successfully created'
    else
      render :new
    end
  end

  # PATCH/PUT /events/1/agenda_items/1
  def update
    if @agenda_item.update(agenda_item_params)
      redirect_to @event, notice: 'Agenda Item was successfully updated'
    else
      render :edit
    end
  end

  # DELETE /events/1/agenda_items/1
  def destroy
    @agenda_item = @event.agenda_items.find(params[:id])
    if @agenda_item.destroy
      redirect_to @event, notice: 'Agenda Item was successfully destroyed'
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:event_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def agenda_item_params
    params.require(:agenda_item).permit(:name, :event_id)
  end
end



class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :step1update, :step2update, :step3update]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    if @event.save
      redirect_to step1_event_path(@event)
    end

  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    if @event.save
      format.html { redirect_to @event, notice: 'Event was successfully created.' }
    else
      format.html { render :new }
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #GET /events/1/step1
  def step1
    @event = Event.find(params[:id])

  end

  #GET /events/1/step2
  def step2
    @event = Event.find(params[:id])

  end

  #GET /events/1/step3
  def step3
    @event = Event.find(params[:id])

  end

  #POST /events/1/step1update
  def step1update
    if @event.update(event_params)
      redirect_to step2_event_path(@event)
    else
      render :step1
    end


  end

  #POST /events/1/step2update
  def step2update
    if @event.update(event_params)
      redirect_to step3_event_path(@event)
    else
      render :step2
    end


  end

  #POST /events/1/step3update
  def step3update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :step3
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :note)
    end
end

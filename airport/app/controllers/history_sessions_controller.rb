class HistorySessionsController < ApplicationController
  before_action :set_history_session, only: [:show, :edit, :update, :destroy]

  # GET /history_sessions
  # GET /history_sessions.json
  def index
    @history_sessions = HistorySession.all
  end

  # GET /history_sessions/1
  # GET /history_sessions/1.json
  def show
  end

  # GET /history_sessions/new
  def new
    @history_session = HistorySession.new
  end

  # GET /history_sessions/1/edit
  def edit
  end

  # POST /history_sessions
  # POST /history_sessions.json
  def create
    @history_session = HistorySession.new(history_session_params)

    respond_to do |format|
      if @history_session.save
        format.html { redirect_to @history_session, notice: 'History session was successfully created.' }
        format.json { render :show, status: :created, location: @history_session }
      else
        format.html { render :new }
        format.json { render json: @history_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_sessions/1
  # PATCH/PUT /history_sessions/1.json
  def update
    respond_to do |format|
      if @history_session.update(history_session_params)
        format.html { redirect_to @history_session, notice: 'History session was successfully updated.' }
        format.json { render :show, status: :ok, location: @history_session }
      else
        format.html { render :edit }
        format.json { render json: @history_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_sessions/1
  # DELETE /history_sessions/1.json
  def destroy
    @history_session.destroy
    respond_to do |format|
      format.html { redirect_to history_sessions_url, notice: 'History session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_session
      @history_session = HistorySession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_session_params
      params.require(:history_session).permit(:date, :hour, :state, :user_id)
    end
end

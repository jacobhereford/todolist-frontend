class ChoreDutiesController < ApplicationController
  before_action :set_chore_duty, only: [:show, :update, :destroy]
  before_action :authenticate
  # GET /chore_duties
  # GET /chore_duties.json
  def index
    @chore_duties = current_user.chore_duties

    render json: @chore_duties
  end

  # GET /chore_duties/1
  # GET /chore_duties/1.json
  def show
    render json: @chore_duty
  end

  # POST /chore_duties
  # POST /chore_duties.json
  def create
    @chore_duty = ChoreDuty.new(chore_duty_params)

    if @chore_duty.save
      render json: @chore_duty, status: :created, location: @chore_duty
    else
      render json: @chore_duty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chore_duties/1
  # PATCH/PUT /chore_duties/1.json
  def update
    @chore_duty = ChoreDuty.find(params[:id])

    if @chore_duty.update(chore_duty_params)
      head :no_content
    else
      render json: @chore_duty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chore_duties/1
  # DELETE /chore_duties/1.json
  def destroy
    @chore_duty.destroy

    head :no_content
  end

  private

    def set_chore_duty
      @chore_duty = ChoreDuty.find(params[:id])
    end

    def chore_duty_params
      params.require(:chore_duty).permit(:user_id, :chore_id, :done_on, :duration)
    end
end

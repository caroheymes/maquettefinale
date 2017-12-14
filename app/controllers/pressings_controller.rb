class PressingsController < ApplicationController
    before_action :find_ressing, only: [:show, :edit, :update, :destroy]
.
.
.
  def show
  end
.
.
.
  private 
 
  def find_pressing
    @pressing = Pressing.find(params[:id])
  end
end

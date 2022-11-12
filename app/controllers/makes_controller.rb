# frozen_string_literal: true

class MakesController < ApplicationController
  before_action :initialize_make, only: %i[new create]
  before_action :find_make, only: %i[edit update destroy]

  def index
    @makes = Make.order(:name)
  end

  def new; end

  def edit; end

  def create
    @make.update! make_params
    redirect_to makes_path, success: t('.success')
  rescue ActiveRecord::RecordInvalid
    flash.now[:danger] = @make.errors.full_messages.to_sentence
    render :new
  end

  def update
    @make.update! make_params
    redirect_to makes_path, success: t('.success')
  rescue ActiveRecord::RecordInvalid
    flash.now[:danger] = @make.errors.full_messages.to_sentence
    render :edit
  end

  def destroy
    @make.destroy!
    redirect_to makes_path, success: t('.success')
  rescue ActiveRecord::RecordNotDestroyed
    redirect_to makes_path, danger: @make.errors.full_messages.to_sentence
  end

  private

  def initialize_make
    @make = Make.new
  end

  def find_make
    @make = Make.find(params[:id])
  end

  def make_params
    params.fetch(:make, {}).permit(:name)
  end
end
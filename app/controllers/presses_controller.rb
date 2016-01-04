class PressesController < ApplicationController
  def index
    @presses = Press.all
  end

  def show
    @press = Press.find(params[:id])
  end

  def new
    @press = Press.new
  end

  def edit
    @press = Press.find(params[:id])
  end

  def create
    @press = Press.new(press_params)

    if @press.save
      redirect_to @press
    else
      render 'new'
    end
  end

  def update
    @press = Press.find(params[:id])

    if @press.update(press_params)
      redirect_to @press
    else
      render 'edit'
    end
  end

  def destroy
    @press = Press.find(params[:id])
    @press.destroy

    redirect_to presses_path
  end

  private
    def press_params
      params.require(:press).permit(:manufacturer, :model, :round_count)
    end
end

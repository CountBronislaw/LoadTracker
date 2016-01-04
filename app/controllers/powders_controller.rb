class PowdersController < ApplicationController
  def index
    @powders = Powder.all
  end

  def show
    @powder = Powder.find(params[:id])
  end

  def new
    @powder = Powder.new
  end

  def edit
    @powder = Powder.find(params[:id])
  end

  def create
    @powder = Powder.new(powder_params)

    if @powder.save
      redirect_to @powder
    else
      render 'new'
    end
  end

  def update
    @powder = Powder.find(params[:id])

    if @powder.update(powder_params)
      redirect_to @powder
    else
      render 'edit'
    end
  end

  def destroy
    @powder = Powder.find(params[:id])
    @powder.destroy

    redirect_to powders_path
  end

  private
    def powder_params
      params.require(:powder).permit(:manufacturer, :name)
    end
end

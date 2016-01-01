class BrassesController < ApplicationController
    def index
    @brasses = Brass.all
  end

  def show
    @brass = Brass.find(params[:id])
  end

  def new
    @brass = Brass.new
  end

  def edit
    @brass = Brass.find(params[:id])
  end

  def create
    @brass = Brass.new(brass_params)

    if @brass.save
      redirect_to @brass
    else
      render 'new'
    end
  end

  def update
    @brass = Brass.find(params[:id])

    if @brass.update(brass_params)
      redirect_to @brass
    else
      render 'edit'
    end
  end

  def destroy
    @brass = Brass.find(params[:id])
    @brass.destroy

    redirect_to brasses_path
  end

  private
    def brass_params
      params.require(:brass).permit(:manufacturer, :caliber)
    end
end

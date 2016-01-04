class PrimersController < ApplicationController
  def index
    @primers = Primer.all
  end

  def show
    @primer = Primer.find(params[:id])
  end

  def new
    @primer = Primer.new
  end

  def edit
    @primer = Primer.find(params[:id])
  end

  def create
    @primer = Primer.new(primer_params)

    if @primer.save
      redirect_to @primer
    else
      render 'new'
    end
  end

  def update
    @primer = Primer.find(params[:id])

    if @primer.update(primer_params)
      redirect_to @primer
    else
      render 'edit'
    end
  end

  def destroy
    @primer = Primer.find(params[:id])
    @primer.destroy

    redirect_to primers_path
  end

  private
    def primer_params
      params.require(:primer).permit(:manufacturer, :size, :style)
    end
end

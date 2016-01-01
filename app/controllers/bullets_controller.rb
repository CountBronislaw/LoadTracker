class BulletsController < ApplicationController

  def index
    @bullets = Bullet.all
  end

  def show
    @bullet = Bullet.find(params[:id])
  end

  def new
    @bullet = Bullet.new
  end

  def edit
    @bullet = Bullet.find(params[:id])
  end

  def create
    @bullet = Bullet.new(bullet_params)

    if @bullet.save
      redirect_to @bullet
    else
      render 'new'
    end
  end

  def update
    @bullet = Bullet.find(params[:id])

    if @bullet.update(bullet_params)
      redirect_to @bullet
    else
      render 'edit'
    end
  end

  def destroy
    @bullet = Bullet.find(params[:id])
    @bullet.destroy

    redirect_to bullets_path
  end

  private
    def bullet_params
      params.require(:bullet).permit(:manufacturer, :style, :name, :weight, :caliber)
    end

end

class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end


  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def edit
    @room= Room.find(params[:id])
  end

  def update
    @room= Room.find_by(params[:id])
     @room.update_attributes(room_params)
    if @room.save
      redirect_to rooms_path
      flash[:success]= 'Actualizado correctamente'

    else
      render :edit
    end
  end

  def destroy
    Room.find(params[:id]).destroy
    redirect_to rooms_path
    flash[:success]= 'Registro eliminado correctamente'
  end

  protected
    def room_params
      params.require(:room).permit(:title, :description, :beds, :guests, :image_url, :price_per_night)
    end
end

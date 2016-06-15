class InfosController < ApplicationController


  def index
    @infos = Info.all
  end
  #
  # def show
  #   # got data from before_action
  # end
  #
  # def new
  #   @info = Info.new
  # end
  #
  # def create
  #   @info = Info.create(info_params)
  #   if @info.save
  #     redirect_to :back
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def edit
  #   # got data from before_action
  # end
  #
  # def update
  #   if @info.update(info_params)
  #   else
  #     render 'edit'
  #   end
  # end

  def destroy
    @info.destroy
    redirect_to info_path
  end

  private
    def info_params
      params.require(:info).permit(:id, :name, :category, :address)
    end

    def set_info
      @info = Info.find(params[:id])
    end
end

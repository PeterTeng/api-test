class InfosController < ApplicationController

  before_action :set_info, only: [:show,:update,:edit,:delete]

  def index
    @infos = Info.all
  end

  def show
    # got data from before_action
  end

  def new
    @infos = Info.new
  end

  def create
    @infos = Info.create(info_params)
    if @infos.save
      redirect_to info_path
    else
      render 'new'
    end
  end

  def edit
    # got data from before_action
  end

  def update
    if @infos.update(info_params)
      redirect_to info_path
    else
      render 'edit'
    end
  end

  def destroy
    @infos.destroy
    redirect_to info_path
  end

  private
    def info_params
      params.require(:info).permit(:id)
    end

    def set_info
      @infos = Info.find(params[:id])
    end
end

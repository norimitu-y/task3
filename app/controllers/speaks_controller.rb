class SpeaksController < ApplicationController
  before_action :set_speak, only: [:show, :edit, :update, :destroy]
    
  def index
    @speaks = Speak.all
  end
  
  def new
    if params[:back]
      @speak = Speak.new(speak_params)
    else  
    @speak = Speak.new
    end  
  end
  
  def create
    @speak = Speak.new(speak_params)
    if @speak.save
      redirect_to speaks_path, notice: "新しいSPEAKをしました"
    else
      render "new"
    end  
  end
  
  def confirm
    @speak = Speak.new(speak_params)
    render :new if @speak.invalid?
  end  
  
  def show
  end
  
  def edit
  end
  
  def update
    if @speak.update(speak_params)
      redirect_to speaks_path, notice:"選択したSPEAKを編集しました"
    else
      render "edit"
    end  
  end
  
  def destroy
    @speak.destroy
    redirect_to speaks_path, notice:"選択したSPEAKを削除しました"
  end
  
  
  private
  
  def speak_params
    params.require(:speak).permit(:content)
  end
  
  def set_speak
    @speak = Speak.find(params[:id])
  end
  
end

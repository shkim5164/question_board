class OksuController < ApplicationController
  def write
  end

  def create
    @newrecord = Hakgoondan.new
    @newrecord.ilbyng = params[:name]
    @newrecord.sangbyng = params[:content]
    @newrecord.save
    
    redirect_to "/oksu/show/#{@newrecord.id}"
  end

  def show
    @dance =  params[:hgd_id]
    @q_dance = Hakgoondan.find(@dance)
    
    @a_dance = Answer.where(question_id: @dance)
  end
  
  def edit
   @numb = params[:hgd_id]
   @record = Hakgoondan.where(id: @numb)
   @record11 = Hakgoondan.find(@numb)
   
  end
  
  def update
    @hong = Hakgoondan.find(params[:hgd_id])
    @hong.ilbyng = params[:name]
    @hong.sangbyng = params[:content]
    @hong.save
    
    redirect_to "/oksu/show/#{@hong.id}"
  end
  
  def delete
    @cgv = params[:hgd_id]
    @misozigi = Hakgoondan.find(@cgv)
    @misozigi.destroy
    
    redirect_to "/"
  end
  
  def index
    @allrecord = Hakgoondan.all
  end
end

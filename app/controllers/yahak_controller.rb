class YahakController < ApplicationController
  def make
    newa = Answer.new
    newa.name = params[:name]
    newa.content = params[:content]
    newa.question_id = params[:q_id]
    newa.save
    
    redirect_to "/oksu/show/#{params[:q_id]}"
  end

  def destroy
    @d_record = Answer.find(params[:a_id])
    @d_record.destroy
    
    redirect_to "/oksu/show/#{@d_record.question_id}"
  end
end

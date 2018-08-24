class MadsController < ApplicationController
  before_action :set_map, only: [:show, :edit, :update, :destroy]
  def map
    @toiletcount = Toilet.count
    @toilets = Toilet.all
    # @toilet = Toilet.find(params[:id])
    # @map = Map.new
  end
  def detail
    @t = Toilet.find(params[:input_id])
  end
  
  def new
    @map = Mad.new
    @toilet = Toilet.find(params[:input_id])
    # @toilet = Toilet.find(params[:id])
  end
  

  
  def create
    @map = Mad.new(map_params)
    @map.score_avg = ((((@map.score1).to_i)+((@map.score2).to_i)+((@map.score3).to_i))/3).to_s
    @map.save
    redirect_to mads_url
  end

  def index
    @maps = Mad.all
    
  end
  
  def index_part
    @maps = Mad.all
    @t= Toilet.find(params[:input_id2])
    
  end
  def show
    # @t = Toilet.find(params[:input_id2])
    
  end

  def edit
  end
  
  def update
    @maps.update(map_params)
    @maps.score_avg = ((((@maps.score1).to_i)+((@maps.score2).to_i)+((@maps.score3).to_i))/3).to_s
    @maps.save
    redirect_to mad_path(@maps)
  end
  
  def destroy
    @maps.destroy
    @maps.save
    redirect_to mads_url
  end
  
  private
  
  def set_map
    @maps =  Mad.find(params[:id])
  end
    
  def map_params
    params.require(:mad).permit(:title, :score1, :score2, :score3, :ment, :toilet_id)
  end
end

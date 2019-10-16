class HomeController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @racket = Racket.all.order("id DESC").page(params[:page]).per(5)
    
  end

  def new
  end

  def create
    Racket.create(image:       racket_params[:image], 
                  text:        racket_params[:text], 
                  user_id:     current_user.id,  
                  name:        racket_params[:name],
                  rubber:      racket_params[:rubber],
                  rubber_back: racket_params[:rubber_back],
                  power:       racket_params[:power],
                  spin:        racket_params[:spin],
                  control:     racket_params[:control],
                  weight:      racket_params[:weight],
                  general:     racket_params[:general])
  end

  def destroy
    racket = Racket.find(params[:id])
    racket.destroy if racket.user_id == current_user.id
  end

  def edit
    @racket = Racket.find(params[:id])
  end

  def update
    racket = Racket.find(params[:id])
    if racket.user_id == current_user.id
      racket.update(racket_params)
    end
  end

  def show
    @racket = Racket.find(params[:id])
    
    genre = ['総合','スピード','スピン','コントロール','重量']
    aData = [@racket.general,@racket.spin,@racket.control,@racket.weight,@racket.power]
    @racket_score = LazyHighCharts::HighChart.new('racket_score') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'80%')                  #グラフサイズの比
      f.title(text: 'レビュー点数')         #タイトル
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      #categories:各項目の名前,tickmarkPlacement:'on'だとメモリ表示がカテゴリーの表示に沿う
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:10) #各項目の最大値やら
      f.series(name:@racket.name,data: aData,pointPlacement:'on')
                                                    #各データ
      f.legend(align: 'right',
	        verticalAlign: 'top',
	        y: 70,
	        layout: 'vertical')
    end
  end

  private
  def racket_params
    params.permit(:name, :image, :text , :rubber, :rubber_back, :power, :spin, :control, :weight, :general)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

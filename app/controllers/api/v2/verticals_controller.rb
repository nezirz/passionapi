class Api::V2::VerticalsController < Api::BaseController
  before_action :doorkeeper_authorize!
  before_action :set_vertical, only: [:show, :update, :destroy]

  # GET /verticals
  def index
    @verticals = Vertical.select(:id,:name)

    render json: @verticals.as_json( :include => { :categories => {
                                        :include =>  {:courses => {:only =>[:name] } },
                                                      :only => [:name]  }
                                      }
                                   )

  end

  #   konata.to_json(:include => { :posts => {
  #                                  :include => { :comments => {
  #                                                :only => :body } },
  #                                  :only => :title } })



  # GET /verticals/1
  def show
    render json: @vertical
  end

  # POST /verticals
  def create
    @vertical = Vertical.new(vertical_params)

    if @vertical.save
      render json: @vertical, status: :created, location: @vertical
    else
      render json: @vertical.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /verticals/1
  def update
    if @vertical.update(vertical_params)
      render json: @vertical
    else
      render json: @vertical.errors, status: :unprocessable_entity
    end
  end

  # DELETE /verticals/1
  def destroy
    @vertical.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vertical
      @vertical = Vertical.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vertical_params
      params.require(:vertical).permit(:name)
    end
end

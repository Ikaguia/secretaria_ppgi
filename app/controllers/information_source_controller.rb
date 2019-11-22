class InformationSourceController < ApplicationController
  before_action :set_information_source, only: [:show, :edit, :update, :destroy]

  # GET /informationSource
  # GET /informationSource.json
  def index
    @informationSource = InformationSource.all
  end

  # GET /informationSource/1
  # GET /informationSource/1.json
  def show
  end

  # GET /informationSource/new
  def new
    @informationSource = InformationSource.new
  end

  # GET /informationSource/1/edit
  def edit
  end

  # POST /informationSource
  # POST /informationSource.json
  def create
    @informationSource = InformationSource.new(information_params)

    respond_to do |format|
      if @informationSource.save
        format.html { redirect_to @informationSource, notice: 'Fonte de informação foi criada com sucesso.' }
        format.json { render :show, status: :created, location: @informationSource }
      else
        format.html { render :new }
        format.json { render json: @informationSource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informationSource/1
  # PATCH/PUT /informationSource/1.json
  def update
    respond_to do |format|
      if @informationSource.update(information_params)
        format.html { redirect_to @informationSource, notice: 'Fonte de informação foi atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @informationSource }
      else
        format.html { render :edit }
        format.json { render json: @informationSource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informationSource/1
  # DELETE /informationSource/1.json
  def destroy
    @informationSource.destroy
    respond_to do |format|
      format.html { redirect_to informationSource_index_url, notice: 'Fonte de informação foi destruída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informationSource
      @informationSource = InformationSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informationSource_params
      params.require(:informationSource).permit(:title, :info)
    end
end

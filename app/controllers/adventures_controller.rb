class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  # GET /adventures
  # GET /adventures.json
  def index
    @issue = Issue.find(params[:issue_id])
    @adventures = @issue.adventures.all
  end

  # GET /adventures/1
  # GET /adventures/1.json
  def show
  end

  # GET /adventures/new
  def new
    @adventure = Issue.find(params[:issue_id]).adventures.new
  end

  # GET /adventures/1/edit
  def edit
  end

  # POST /adventures
  # POST /adventures.json
  def create
    @params = adventure_params
    @params['keywords'] = @params['keywords'].split(',').map(&:strip)
    @params['authors'] = @params['authors'].split(',').map(&:strip)
    @issue = Issue.find(params[:issue_id])
    @adventure = @issue.adventures.new(@params)

    respond_to do |format|
      if @adventure.save
        format.html { redirect_to [@adventure.issue, @adventure], notice: 'Adventure was successfully created.' }
        format.json { render :show, status: :created, location: @adventure }
      else
        format.html { render :new }
        format.json { render json: @adventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adventures/1
  # PATCH/PUT /adventures/1.json
  def update
    respond_to do |format|
      @params = adventure_params
      @params['keywords'] = @params['keywords'].split(',').map(&:strip)
      @params['authors'] = @params['authors'].split(',').map(&:strip)
      if @adventure.update(@params)
        format.html { redirect_to [@adventure.issue, @adventure], notice: 'Adventure was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventure }
      else
        format.html { render :edit }
        format.json { render json: @adventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adventures/1
  # DELETE /adventures/1.json
  def destroy
    @adventure.destroy
    respond_to do |format|
      format.html { redirect_to issue_adventures_url, notice: 'Adventure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure
      @adventure = Issue.find(params[:issue_id]).adventures.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventure_params
      params.require(:adventure).permit(:title, :synopsis, :page, :authors, :min_level, :max_level, :keywords)
    end
end

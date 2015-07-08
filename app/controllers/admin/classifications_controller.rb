class Admin::ClassificationsController < AdminController
  before_action :set_admin_classification, only: [:show, :edit, :update, :destroy]

  # GET /admin/classifications
  # GET /admin/classifications.json
  def index
    @classifications = Classification.page(params[:page]).per(10)
  end

  # GET /admin/classifications/1
  # GET /admin/classifications/1.json
  def show
  end

  # GET /admin/classifications/new
  def new
    @classification = Classification.new
  end

  # GET /admin/classifications/1/edit
  def edit
  end

  # POST /admin/classifications
  # POST /admin/classifications.json
  def create
    @classification = Classification.new(admin_classification_params)

    respond_to do |format|
      if @classification.save
        format.html { redirect_to admin_classifications_path, notice: 'Classification was successfully created.' }
        format.json { render :show, status: :created, location: @classification }
      else
        format.html { render :new }
        format.json { render json: @classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/classifications/1
  # PATCH/PUT /admin/classifications/1.json
  def update
    respond_to do |format|
      if @classification.update(admin_classification_params)
        format.html { redirect_to [:admin, @classification], notice: 'Classification was successfully updated.' }
        format.json { render :show, status: :ok, location: @classification }
      else
        format.html { render :edit }
        format.json { render json: @classification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/classifications/1
  # DELETE /admin/classifications/1.json
  def destroy
    @classification.destroy
    respond_to do |format|
      format.html { redirect_to admin_classifications_url, notice: 'Classification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_classification
      @classification = Classification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_classification_params
      params.require(:classification).permit(:name)
    end
end

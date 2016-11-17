class RegdetailsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_regdetail, only: [:show, :edit, :update, :destroy]

  # GET /regdetails
  # GET /regdetails.json
  def index
    @regdetails = Regdetail.all
  end

  # GET /regdetails/1
  # GET /regdetails/1.json
  def show
  end

  # GET /regdetails/new
  def new
    @semesters = Semester.pluck(:name, :id)
    @courses = Semester.find(1).courses
  end

  # GET /regdetails/1/edit
  def edit
  end

  # POST /regdetails
  # POST /regdetails.json
  def create
    # @regdetail = Regdetail.new(regdetail_params)
    #
    # respond_to do |format|
    #   if @regdetail.save
    #     format.html { redirect_to @regdetail, notice: 'Regdetail was successfully created.' }
    #     format.json { render :show, status: :created, location: @regdetail }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @regdetail.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /regdetails/1
  # PATCH/PUT /regdetails/1.json
  def update
    respond_to do |format|
      if @regdetail.update(regdetail_params)
        format.html { redirect_to @regdetail, notice: 'Regdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @regdetail }
      else
        format.html { render :edit }
        format.json { render json: @regdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regdetails/1
  # DELETE /regdetails/1.json
  def destroy
    @regdetail.destroy
    respond_to do |format|
      format.html { redirect_to regdetails_url, notice: 'Regdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regdetail
      @regdetail = Regdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regdetail_params
      params.require(:regdetail).permit(:user_id, :semester_id, :course_id, :gpa)
    end
end

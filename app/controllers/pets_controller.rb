class PetsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  # GET /pets or /pets.json
  def index
    @pets = Pet.with_attached_pet_image.page(params[:page]).per(12)
  end

  # GET /pets/1 or /pets/1.json
  def show
    @pet = Pet.find(params[:id])
  end

  # GET /pets/new
  def new
    @page_title = "マイペット登録"
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
    @page_title = "マイペット編集"
    @pet = Pet.find(params[:id])
  end

  # POST /pets or /pets.json
  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: "マイペット登録しました。" }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1 or /pets/1.json
  def update
    @pet = Pet.find(params[:id])
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1 or /pets/1.json
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@pet.user.id), notice: "マイペットを削除しました。" }
      format.json { head :no_content }
    end
  end

  def search
    @results = @q.result(distinct: true).with_attached_pet_image.page(params[:page]).per(12)
  end

  private
    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:user_id, :name, :dog_or_cat, :breed, :mother_breed, :father_breed, :birthplace, :birthday, :breeder_name, :mother_name, :father_name, :pet_image)
    end
    def set_q
      @q = Pet.ransack(params[:q])
    end
end

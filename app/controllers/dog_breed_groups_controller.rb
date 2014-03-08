class DogBreedGroupsController < ApplicationController
  layout 'session'
  before_action :set_dog_breed_group, only: [:show, :edit, :update, :destroy]

  # GET /dog_breed_groups
  # GET /dog_breed_groups.json
  def index
    @dog_breed_groups = DogBreedGroup.all
  end

  # GET /dog_breed_groups/1
  # GET /dog_breed_groups/1.json
  def show
  end

  # GET /dog_breed_groups/new
  def new
    @dog_breed_group = DogBreedGroup.new
  end

  # GET /dog_breed_groups/1/edit
  def edit
  end

  # POST /dog_breed_groups
  # POST /dog_breed_groups.json
  def create
    @dog_breed_group = DogBreedGroup.new(dog_breed_group_params)

    respond_to do |format|
      if @dog_breed_group.save
        format.html { redirect_to @dog_breed_group, notice: 'Dog breed group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dog_breed_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @dog_breed_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_breed_groups/1
  # PATCH/PUT /dog_breed_groups/1.json
  def update
    respond_to do |format|
      if @dog_breed_group.update(dog_breed_group_params)
        format.html { redirect_to @dog_breed_group, notice: 'Dog breed group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dog_breed_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_breed_groups/1
  # DELETE /dog_breed_groups/1.json
  def destroy
    @dog_breed_group.destroy
    respond_to do |format|
      format.html { redirect_to dog_breed_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_breed_group
      @dog_breed_group = DogBreedGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_breed_group_params
      params.require(:dog_breed_group).permit(:name)
    end
end

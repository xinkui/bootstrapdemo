class Post1sController < ApplicationController
  before_action :set_post1, only: [:show, :edit, :update, :destroy]

  # GET /post1s
  # GET /post1s.json
  def index
    @post1s = Post1.all
  end

  # GET /post1s/1
  # GET /post1s/1.json
  def show
  end

  # GET /post1s/new
  def new
    @post1 = Post1.new
  end

  # GET /post1s/1/edit
  def edit
  end

  # POST /post1s
  # POST /post1s.json
  def create
    @post1 = Post1.new(post1_params)

    respond_to do |format|
      if @post1.save
        format.html { redirect_to @post1, notice: 'Post1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post1s/1
  # PATCH/PUT /post1s/1.json
  def update
    respond_to do |format|
      if @post1.update(post1_params)
        format.html { redirect_to @post1, notice: 'Post1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post1s/1
  # DELETE /post1s/1.json
  def destroy
    @post1.destroy
    respond_to do |format|
      format.html { redirect_to post1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post1
      @post1 = Post1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post1_params
      params.require(:post1).permit(:title, :description)
    end
end

class MemoryGamesController < ApplicationController
  before_action :set_memory_game, only: [:show, :edit, :update, :destroy]

  # GET /memory_games
  # GET /memory_games.json
  def index
    @memory_games = MemoryGame.all
  end

  # GET /memory_games/1
  # GET /memory_games/1.json
  def show
  end

  # GET /memory_games/new
  def new
    @memory_game = MemoryGame.new
  end

  # GET /memory_games/1/edit
  def edit
  end

  # POST /memory_games
  # POST /memory_games.json
  def create
    @memory_game = MemoryGame.new(memory_game_params)

    respond_to do |format|
      if @memory_game.save
        format.html { redirect_to @memory_game, notice: 'Memory game was successfully created.' }
        format.json { render :show, status: :created, location: @memory_game }
      else
        format.html { render :new }
        format.json { render json: @memory_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memory_games/1
  # PATCH/PUT /memory_games/1.json
  def update
    respond_to do |format|
      if @memory_game.update(memory_game_params)
        format.html { redirect_to @memory_game, notice: 'Memory game was successfully updated.' }
        format.json { render :show, status: :ok, location: @memory_game }
      else
        format.html { render :edit }
        format.json { render json: @memory_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memory_games/1
  # DELETE /memory_games/1.json
  def destroy
    @memory_game.destroy
    respond_to do |format|
      format.html { redirect_to memory_games_url, notice: 'Memory game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory_game
      @memory_game = MemoryGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memory_game_params
      params[:memory_game]
    end
end

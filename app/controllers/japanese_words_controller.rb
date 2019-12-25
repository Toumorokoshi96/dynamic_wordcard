class JapaneseWordsController < ApplicationController
  before_action :set_japanese_word, only: [:show, :edit, :update, :destroy]

  # GET /japanese_words
  # GET /japanese_words.json
  def index
    @japanese_words = JapaneseWord.all
  end

  # GET /japanese_words/1
  # GET /japanese_words/1.json
  def show
  end

  # GET /japanese_words/new
  def new
    @japanese_word = JapaneseWord.new
  end

  # GET /japanese_words/1/edit
  def edit
  end

  # POST /japanese_words
  # POST /japanese_words.json
  def create
    @japanese_word = JapaneseWord.new(japanese_word_params)

    respond_to do |format|
      if @japanese_word.save
        format.html { redirect_to @japanese_word, notice: 'Japanese word was successfully created.' }
        format.json { render :show, status: :created, location: @japanese_word }
      else
        format.html { render :new }
        format.json { render json: @japanese_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /japanese_words/1
  # PATCH/PUT /japanese_words/1.json
  def update
    respond_to do |format|
      if @japanese_word.update(japanese_word_params)
        format.html { redirect_to @japanese_word, notice: 'Japanese word was successfully updated.' }
        format.json { render :show, status: :ok, location: @japanese_word }
      else
        format.html { render :edit }
        format.json { render json: @japanese_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /japanese_words/1
  # DELETE /japanese_words/1.json
  def destroy
    @japanese_word.destroy
    respond_to do |format|
      format.html { redirect_to japanese_words_url, notice: 'Japanese word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_japanese_word
      @japanese_word = JapaneseWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def japanese_word_params
      params.require(:japanese_word).permit(:spell)
    end
end

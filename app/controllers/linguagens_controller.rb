class LinguagensController < ApplicationController
  before_action :set_linguagem, only: [:show, :edit, :update, :destroy]

  # GET /linguagens
  # GET /linguagens.json
  def index
    @linguagens = Linguagem.all
  end

  # GET /linguagens/1
  # GET /linguagens/1.json
  def show
  end

  # GET /linguagens/new
  def new
    @linguagem = Linguagem.new
  end

  # GET /linguagens/1/edit
  def edit
  end

  # POST /linguagens
  # POST /linguagens.json
  def create
    @linguagem = Linguagem.new(linguagem_params)

    respond_to do |format|
      if @linguagem.save
        format.html { redirect_to @linguagem, notice: 'Linguagem was successfully created.' }
        format.json { render :show, status: :created, location: @linguagem }
      else
        format.html { render :new }
        format.json { render json: @linguagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linguagens/1
  # PATCH/PUT /linguagens/1.json
  def update
    respond_to do |format|
      if @linguagem.update(linguagem_params)
        format.html { redirect_to @linguagem, notice: 'Linguagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @linguagem }
      else
        format.html { render :edit }
        format.json { render json: @linguagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linguagens/1
  # DELETE /linguagens/1.json
  def destroy
    @linguagem.destroy
    respond_to do |format|
      format.html { redirect_to linguagens_url, notice: 'Linguagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linguagem
      @linguagem = Linguagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linguagem_params
      params.require(:linguagem).permit(:nome, :extensao, :descricao, :icone)
    end
end

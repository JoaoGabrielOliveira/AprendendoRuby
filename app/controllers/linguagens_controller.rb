class LinguagensController < ApplicationController
    def index
        @linguagens = Linguagem.all

        render 'index'
    end

    def new
        @linguagem = Linguagem.new
    end

    def create
        
    end

    def show

    end
end

class CadastrosController < ApplicationController

    def new
      @cadastro = Cadastro.new
    end

    def show
      @cadastro = Cadastro.find(params[:id])
    end

    def create
      #render plain: params[:post].inspect
      @cadastro = Cadastro.new(cadastro_params)

      if(@cadastro.save)
          redirect_to @cadastro
      else
          render 'new'
      end
    end

    private def cadastro_params
      params.require(:cadastro).permit(:email, :nome)
    end
    end

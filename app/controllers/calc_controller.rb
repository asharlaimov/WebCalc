class CalcController < ApplicationController
  def index
  end

  def calculate
    @sum = eval(params[:expression])
  end
end

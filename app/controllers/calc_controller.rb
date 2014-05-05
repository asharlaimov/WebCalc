class CalcController < ApplicationController
  def index
  end

  def calculate
    case params[:action_operator]
      when '+'
        @sum = params[:expr1].to_s.to_f + params[:expr2].to_s.to_f
      when '-'
        @sum = params[:expr1].to_s.to_f - params[:expr2].to_s.to_f
      when '/'
        @sum = params[:expr1].to_s.to_f / params[:expr2].to_s.to_f
      when '√'
        @sum = Math.sqrt(params[:expr1].to_s.to_f)
      when '∛'
        @sum = Math.cbrt(params[:expr1].to_s.to_f)
      when 'sin'
        @sum = Math.sin(params[:expr1].to_s.to_f)
      when 'cos'
        @sum = Math.cos(params[:expr1].to_s.to_f)
      else
        @sum = eval(params[:expr1])
    end
  end
end

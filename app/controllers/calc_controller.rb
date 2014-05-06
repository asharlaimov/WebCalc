class CalcController < ApplicationController
  def index
  end

  def calculate
    value1 = params[:expr1].to_f
    value2 = params[:expr2].to_f

    case params[:action_operator]
      when '+'
        @result = value1 + value2
      when '-'
        @result = value1 - value2
      when '/'
        @result = value1 / value2
      when '√'
        @result = Math.sqrt(value1)
      when '∛'
        @result = Math.cbrt(value1)
      when 'sin'
        @result = Math.sin(value1)
      when 'cos'
        @result = Math.cos(value1)
      else
        @result = 0
    end
  end
end

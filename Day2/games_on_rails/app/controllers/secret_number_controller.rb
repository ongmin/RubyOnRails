class SecretNumberController < ApplicationController

  def guess
  end

  def result
    @result = params[:guess].to_i == generate_secret_number
  end

  private
  def generate secret_number
    4
  end

end

class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    @sorted = @dogs.sort_by {|d| d.employee_count}
  end

  def show
    @dog = Dog.find(params[:id])
  end
end

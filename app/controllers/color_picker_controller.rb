class ColorPickerController < ApplicationController
	
  def index
  	@boxes = Box.all
  end
end

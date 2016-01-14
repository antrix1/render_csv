class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    @document = Document.create(params[:csv_file])
    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  def show
  end

  def index
  end

end

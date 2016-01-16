class DocumentsController < ApplicationController

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(csv_file: params[:document][:csv_file])
    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  def show
    @document = Document.find(params[:id])
    render csv_table: @document.csv_file, table_class: 'my-table'
  end

  def index
  end

end

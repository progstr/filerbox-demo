class BoxfilesController < ApplicationController
  def index
    @boxfiles = Boxfile.all
    @uploader = FileUploader.new
    @boxfile = Boxfile.new
  end

  def new
    @boxfile = Boxfile.new
  end

  def create
    @boxfile = Boxfile.new(params[:boxfile])
    if @boxfile.save
      redirect_to :root, :notice => "File successfully uploaded"
    else
      render 'new'
    end
  end

  def destroy
    @boxfile = Boxfile.find(params[:id])
    @boxfile.destroy
    redirect_to :root, :notice => "File deleted"
  end

end

class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  def index
    @enquiries = Enquiry.all
    respond_with(@enquiries)
  end

  def show
    respond_with(@enquiry)
  end

  def new
    @enquiry = Enquiry.new
    respond_with(@enquiry)
  end

  def edit
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    @enquiry.save
    respond_with(@enquiry)
  end

  def update
    @enquiry.update(enquiry_params)
    respond_with(@enquiry)
  end

  def destroy
    @enquiry.destroy
    respond_with(@enquiry)
  end

  private
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :message)
    end
end

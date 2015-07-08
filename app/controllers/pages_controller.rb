class PagesController < ApplicationController
 before_action :set_page, only: [:show]

  def index
    # @classifications = Classification.order('id DESC').page(params[:page]).per(10)
    @ideas = Idea.order(id: :desc).page(params[:page]).per(10)
  end

  def show

  end


  private

  def set_page
    @page = Page.find(params[:id])
  end
end
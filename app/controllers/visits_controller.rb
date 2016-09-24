class VisitsController < ApplicationController
  def show
    @link = Link.find(params[:id])

    unless @link
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end

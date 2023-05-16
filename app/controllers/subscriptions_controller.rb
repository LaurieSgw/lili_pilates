class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id])
    @courses = Course.all
    @booking = Booking.new
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    if @subscription.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:type, :price)
  end
end

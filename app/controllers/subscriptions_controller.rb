  class SubscriptionsController < ApplicationController

    def new
      @subscription = Subscription.new
    end

    def create
      @subscription = Subscription.new(params[:subscription])
      @subscription.request = request
      if @subscription.deliver

        redirect_to root_url, notice: 'Obrigado pela sua inscrição. Em breve entraremos em contato!'
      else
        render :new, error: 'Inscrição não enviada.'
      end

    end

  end

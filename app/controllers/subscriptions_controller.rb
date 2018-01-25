  class SubscriptionsController < ApplicationController

    def new
      @subscription = Subscription.new
    end

    def create
      @subscription = Subscription.new(params[:subscription])
      @subscription.request = request
      if @subscription.deliver
        flash.now[:notice] = 'Obrigado pela sua inscrição. Em breve entraremos em contato!'
      else
        flash.now[:error] = 'Inscrição não enviada.'
        render :new
      end

    end

  end

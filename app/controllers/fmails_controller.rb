class FmailsController < ApplicationController
 def new
   @fmail = Fmail.new
 end

 def create
   @fmail = Fmail.new(params[:fmail])
   @fmail.request = request
   if @fmail.deliver
     flash.now[:notice] = 'Obrigado, Em breve entraremos em contato!'
     redirect_to root_url
   else
     flash.now[:error] = 'Não foi possível enviar a mensagem!'
     render :new
   end
 end
end

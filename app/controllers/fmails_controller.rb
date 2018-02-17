class FmailsController < ApplicationController
 def new
   @fmail = Fmail.new
 end

 def create
   @fmail = Fmail.new(params[:fmail])
   @fmail.request = request
   if @fmail.deliver
      redirect_to root_url, notice: 'Obrigado, Em breve entraremos em contato!'
   else
     redirect_to root_url, alert: 'Não foi possível enviar a mensagem, tente novamente!'
     # render partial: "new"
   end
 end
end

class Contact < MailForm::Base
  attribute :nome,      :validate => true
  attribute :matricula,  :validate => true
  attribute :mensagem, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file, :attachment => true
  attribute :choice
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Inscrição #{choice}.",
      :to => "labtechph@gmail.com",
      :from => email #{}%("#{name}"<#{email}> "#{matricula}" "#{message}" )
    }
  end
end

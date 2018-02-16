class Fmail < MailForm::Base
  attribute :nome,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :telefone,  :validate => true
  attribute :mensagem,  :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Mensagem LabTech",
      :to => "teste.acens@gmail.com",
      :from => %("#{nome}" <#{email}>)
    }
  end
end

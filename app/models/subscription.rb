class Subscription < MailForm::Base
  attribute :name,      :validate => true
  attribute :matricula,  :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :file,      :attachment => true
  attribute :choice
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Inscrição Curso/Projetos.",
      :to => "eduardo.patrick.98@gmail.com",
      :from => %("#{name}"<#{email}>)
    }
  end
end

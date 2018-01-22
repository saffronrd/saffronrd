class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => true
  attribute :file,      :attachment => true
  attribute :number,    :validate => true
  attribute :message
  attribute :nickname,  :captcha  => true

  validates :name, length: { minimum: 10, message: "Debe por lo menos tener más 10 caracteres" }
  validates :number, numericality: { only_integer: true }, presence: { message: "Debe colocar solamente cifras" }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "El correo es invalido"

	  def headers 
	  	{
	  	:subject => "Contact Form",
	  	:to => "saffronpuntacana@gmail.com",
	  	:from => %("#{name}" <#{email}>)
	  }
	end
end


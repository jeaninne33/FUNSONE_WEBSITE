class Notification < ApplicationMailer
  default from: 'informatica.funsone@gmail.com'

  def mensaje(nombre,email,tlf,msj)
    @nombre =nombre
    @email =email
    @tlf=tlf
    @msj=msj

     mail to: @email, subject: "FUNSONE",  bcc: "informatica.funsone@gmail.com"
  end

end

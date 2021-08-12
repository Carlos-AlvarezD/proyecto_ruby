# Modificad el 8 de julio 2021
#
# Se agrega la funcion welcome_email
class UserMailer < ApplicationMailer
	default from: 'caavdig1@gmail.com'

	def welcome_email(user)
		@user = user
		@url = 'http://www.gmail.com'
		mail(to: @user.email, subject: 'Gracias por suscribirte a nuestro newsletter' )
	end
end

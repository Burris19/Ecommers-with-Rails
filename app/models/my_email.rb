class MyEmail < ActiveRecord::Base
	validates_presence_of :email, message: "El email no puede ser nulo"
	validates_uniqueness_of :email, message: "El email ya esta registrado"
	validates_format_of :email, with: Devise::email_regexp
end

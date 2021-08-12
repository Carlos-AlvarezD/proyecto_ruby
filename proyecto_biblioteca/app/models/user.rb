class User < ApplicationRecord
	VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

	validates :nombre, presence:{message: "El nombre es obligatorio"}
	validates :telefono,
			   presence: true,
			   length: {maximum: 15},
			   format: {with: VALID_PHONE_NUMBER_REGEX}
	validates :edad, numericality: {only_integer: true,
				greater_than: 15, lower_than:100,
				message: "La edad debe ser mayor de 15"}

	has_many :borrowings
	has_many :books, through: :borrowings
end

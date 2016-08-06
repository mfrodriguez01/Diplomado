class Pilot
	include ActiveModel::Model#Es para usar el first, create, save que se pone cuando se hace por scaffold
	attr_accessor :id, :name, :last_name, :identification, :telephone, :email,:experience, :created_at, :updated_at, :url
 

 	BASE_URL = 'http://localhost:3000/pilots'
 	TOKEN = 'd45da912-5096-4fa1-baae-d75ac6136306'

	def persisted?
		self.id.present?
	end

	def self.endpoint
		raise 'Not implemented' #raise es para lanzar una excepción
	end

	def self.path (request_path = "")
		BASE_URL + request_path + '.json'
	end

	def self.all
		response = HTTParty.get(self.path, headers: { 'token' => TOKEN })
		response.parsed_response.map do |pilot|
			new(pilot)
		end
	end

	def self.find(id_pilot)
		response = HTTParty.get(self.path("/#{id_pilot}"), headers: { 'token' => TOKEN })
		elem = new(response.parsed_response)
	end

	def update
		HTTParty.put(self.class.path("/#{id}"), query: to_json, headers: { 'token' => TOKEN })
	end

	def save

		HTTParty.post(self.class.path, query: to_json, headers: { 'token' => TOKEN })
	end

	def destroy
		HTTParty.delete(self.class.path("/#{id}"), headers: { 'token' => TOKEN })
	end


	def to_json
		{ 
			pilot: {
				id: self.id,
				name: self.name,
				last_name: self.last_name,
				identification: self.identification,
				telephone: self.telephone,
				email: self.email,
				experience: self.experience,
			}
		}
	end
end
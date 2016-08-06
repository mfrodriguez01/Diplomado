class Programming
	include ActiveModel::Model#Es para usar el first, create, save que se pone cuando se hace por scaffold
	attr_accessor :id, :airplane_id, :track_id, :pilot_id, :date, :hour, :origin, :destination, :duration, :created_at, :updated_at,:url
 

 	BASE_URL = 'http://localhost:3000/programmings'
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
		response.parsed_response.map do |track|
			new(track)
		end
	end

	def self.find(id_track)
		response = HTTParty.get(self.path("/#{id_track}"), headers: { 'token' => TOKEN })
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
			track: {
				id: self.id,
				airplane_id: self.airplane_id,
				track_id: self.track_id,
				pilot_id: self.pilot_id,
				date: self.date,
				hour: self.hour,
				origin: self.origin,
				destination: self.destination,				
				duration: self.duration,

			}
		}
	end
end
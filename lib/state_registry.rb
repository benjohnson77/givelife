class StateRegistry
	def self.lookup(state)
		@state_registry_info ||= begin
			require 'csv'    
			info = {}
			CSV.foreach("#{File.dirname(__FILE__)}/state_registry_info.csv", :headers => true) do |row|
				info[row['state_code']] = row.to_hash
			end
			info
		end
		@state_registry_info[state]
	end	
end

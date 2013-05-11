class GeocodeContact
    @queue = :contact
    def self.perform(id)
        Contact.find(id).geocode
    end
end


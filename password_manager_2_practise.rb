# hash containing a hash

# add -> adds a service (new hash) and a password (key value in the 2nd hash)
# remove -> deletes a service (removes the service key and it's entire hash/value)
# services -> returns all the services (the keys from the main hash)
# sort_by -> sorts by the service name (the keys)
# password_for -> returns the password (2nd hash) for a specific service (key)
# update -> updates the password (key value in the second hash)

# Ensure all service names are unique
# Ensure all passwords are unique
# Sort the list of services alphabetically and by date of password creation


class PasswordManager2
    def initialize
        @password_manager = Hash.new
    end

    # add -> adds a service (new hash) and a password (key value in the 2nd hash)
    # Ensure all service names are unique

    def unique_password?(password)
        @password_manager.each do |service, hash| 
            if hash["password"] == password
                return false
            end
        end
    end

    def unique_service?(service)
        if @password_manager.key?(service)
            return false
        else 
            return true
        end
    end

    #Time.now
    def add(service, password)
        if unique_password?(password) && unique_service?(service)
            @password_manager[service]= {}
            @password_manager[service]["password"] = password
            @password_manager[service]["time_added"] = Time.now
        else
            return "Account already exists"
        end
    end

    # services -> returns all the services (the keys from the main hash)
    def services
        return @password_manager.keys
    end

    # remove -> deletes a service (removes the service key and it's entire hash/value)
    def remove(service)
        @password_manager.delete(service)
    end

    # sort alphabetically -> needs to be called in sort_by
    def sort_alphabetically
        keys = []
        @password_manager.each do |key, hash| 
         keys << key
        end
        return keys.sort
     end

     # sort reverse_alphabetically -> needs to be called in sort_by
     def sort_reverse_alphabetically
        keys = []
        @password_manager.each do |key, hash| 
         keys << key
        end
        return keys.sort.reverse
     end

     # sort alphabetically -> needs to be called in sort_by
    def sort_chronologically
        created_time = {}
        @password_manager.each do |key, hash| 
            hash.each do |key2, value|
                if key2 == "time_added"
                created_time[key] = value
                end
            end
        end
        nested_array = created_time.sort_by { |element| element[1] }
        time_sorted_services = []
        nested_array.each { |nested_array| time_sorted_services << nested_array[0] }
        return time_sorted_services
     end

     def sort_reverse_chronologically
        created_time = {}
        @password_manager.each do |key, hash| 
            hash.each do |key2, value|
                if key2 == "time_added"
                created_time[key] = value
                end
            end
        end
        nested_array = created_time.sort_by { |element| element[1] }
        time_sorted_services = []
        nested_array.each { |nested_array| time_sorted_services << nested_array[0] }
        return time_sorted_services.reverse
     end
    
    # sort_by -> sorts by the service name (the keys)
    # service
    # service, reverse
    # added_on
    # added_on, reverse
    def sort_by(sort, order = "alphabetically")
        if sort == "service" && order == "alphabetically"
            sort_alphabetically
        elsif sort == "service" && order == "reverse"
            sort_reverse_alphabetically
        elsif sort == "added_on" && order == "alphabetically"
            sort_chronologically
        elsif sort == "added_on" && order == "reverse"
            sort_reverse_chronologically
        end
    end

    # password_for -> returns the password (2nd hash) for a specific service (key)
    def password_for(service)
       return @password_manager[service]["password"]
    end

    # update -> updates the password (key value in the second hash)
    # Time changed
    def update(service, password)
        if unique_password?(password)
            @password_manager[service]["password"] = password
        end
    end

end
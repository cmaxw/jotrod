class User
  attr_accessor :key

  class << self
    def establish_connection(options = {})
      connection_options = YAML.load_file("#{RAILS_ROOT}/config/sandra.yml")[Rails.env].merge(options)
      keyspace = connection_options["keyspace"]
      host = "#{connection_options["host"]}:#{connection_options["port"]}"
      @connection = Cassandra.new(keyspace, host)
    end

    def connection
      @connection || establish_connection
    end

    def get(key)

    end

    def insert(key, columns = {})
      @connection.insert("User", key, columns)
    end
  end
end

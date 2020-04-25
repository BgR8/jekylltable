require 'json'
require 'airtable'
require 'active_support/all'
# require 'active_support/all'

# Pass in api key to client
@client = Airtable::Client.new("keyaxbbmdyEa3GS6R")

# Pass in the app key and table name
items = ["Jekyll"]

items.each do |item|
    @table = @client.table("appHOSJzrWe2QvDM4", item)
    @records = @table.records(:limit => 100)

    File.open("_data/Jekyll.json", "w") do |f|
        data = @records.map { |record| record.attributes }
        f.write(data.to_json)
    end
end
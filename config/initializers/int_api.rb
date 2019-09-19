class ApiData

# Load the gem
require 'intrinio-sdk'
require 'pp'

# Setup authorization
Intrinio.configure do |config|
  config.api_key['api_key'] = 'OjgwNWJjYTViODdjNDRhMzdiOWU1YzI1NjlmODMxZGQ4'
end

company_api = Intrinio::CompanyApi.new

opts = { 
  latest_filing_date: nil, # Date | Last filing date
  sic: nil, # String | Return companies with the given Standard Industrial Classification code
  template: nil, # String | Return companies with the given financial statement template
  sector: nil, # String | Return companies in the given industry sector
  industry_category: nil, # String | Return companies in the given industry category
  industry_group: nil, # String | Return companies in the given industry group
  has_fundamentals: true, # BOOLEAN | Return only companies that have fundamentals when true
  has_stock_prices: true, # BOOLEAN | Return only companies that have stock prices when true
  page_size: 100, # Integer | The number of results to return
  next_page: nil # String | Gets the next page of data from a previous API call
}

begin
  result = company_api.get_all_companies(opts)
  pp result
rescue Intrinio::ApiError => e
  puts "Exception when calling CompanyApi->get_all_companies: #{e}"
end



# question 1 I have the api working with the key, 
#but do I need to make an api controller and then a model for each response as the documentation.


end
























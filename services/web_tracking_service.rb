class WebTrackingService

  require 'net/http'
  require 'json'

  def fetch_data
    uri = URI('http://localhost:3001/data')
    uri.query = URI.encode_www_form({format: 'json'})
    response = Net::HTTP.get_response(uri)
    parse_data(response)
  end

  private

  def parse_data(res)
    parsed_data = JSON.parse(res.body)
    save_data(parsed_data)
  end

  def save_data(parsed_data)
    parsed_data.each do |data|
      visit = create_visit(data)
      next unless visit.save
      create_page_views(data["actionDetails"], visit)
    end
  end

  def create_visit(data)
    visit = Visit.new(evid: data["referrerName"], vendor_site_id: data["idSite"], vendor_visit_id: data["idVisit"], visit_ip: data["visitIp"], vendor_visitor_id: data["visitorId"])
  end

  def create_page_views(page_data, visit)
    page_data.each do |page|
      visit.page_views.create(title: page["pageTitle"], url: page["url"], time_spent: page["timeSpent"], timestamp: page["timestamp"])
    end
  end
end

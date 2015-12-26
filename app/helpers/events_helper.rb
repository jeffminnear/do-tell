module EventsHelper
  def list_events(event_hash)
    list_array = []
    event_hash.each do |key, value|
      list_array << "#{key}: #{value.count}"
    end
    list_array
  end
end

atom_feed do |feed|
  feed.title "Today's Events"

  latest_event = Event.order(:updated_at).last.updated_at
  latest_occurence = Occurence.order(:updated_at).last.updated_at
  
  feed.updated = [latest_event, latest_occurence].max

  @events.each do |event|
    feed.entry(event) do |entry|
      entry.title = event.title
      entry.summary = event.description
      entry.author do |author|
        author.name event.contact_name
        author.email event.contact_email
      end
    end
  end
end

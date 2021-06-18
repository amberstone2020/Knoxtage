json.extract! gig, :id, :artist_name, :gig_genre, :gig_venue, :gig_when, :gig_tickets, :gig_comments, :created_at, :updated_at
json.url gig_url(gig, format: :json)

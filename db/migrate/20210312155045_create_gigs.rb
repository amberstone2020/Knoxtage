class CreateGigs < ActiveRecord::Migration[6.1]
  def change
    create_table :gigs do |t|
      t.string :artist_name
      t.string :gig_genre
      t.string :gig_venue
      t.datetime :gig_when
      t.string :gig_tickets
      t.string :gig_comments

      t.timestamps
    end
  end
end

class Ad < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :room_type
  validates_inclusion_of :room_type, in: %w( entire_place private_room shared_room )
  validates_presence_of :price

  validates_inclusion_of :property_type, in: %w( apartment house bed_breakfast )

  serialize :host_languages, Array

  has_many :reviews

  include AlgoliaSearch
  algoliasearch do
    attributesToIndex ['title', 'location', 'description']

    add_attribute :rating do
      page_views = 42 # FIXME
      rating = 4.5 # FIXME
      page_views * rating
    end

    add_attribute :reviews_text do
      reviews.map { |r| r.content }
    end
  end

  def host_languages=(v)
    v = JSON.parse(v) rescue v
    write_attribute(:host_languages, v)
  end

end

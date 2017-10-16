class Figure <ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  def slug
    self.name.downcase.split(" ").join("-")
  end

  def self.find_by_slug(slug)
    match = ""

    self.all.each do |figure|
      if figure.slug == slug
         match = figure
      end
    end
    match
  end
end

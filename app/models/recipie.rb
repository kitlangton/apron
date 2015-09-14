class Recipie < ActiveRecord::Base
  validates :name, presence: true

  def super_name
    "Super " + self.name
  end
end

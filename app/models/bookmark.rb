class Bookmark < ApplicationRecord
  belongs_to :user

  scope :find_bookmarks, -> (id, user) { where(building_id: id, user: user) }

  def self.mount_json(json)
    bookmark = Bookmark.all

    json['buildings'].each do |r|
      bookmark.each do |f|
        if f.building_id == r['id'].to_i
          r.merge!({"bookmark" => "yes"})
        end
      end
    end
    json
  end
end

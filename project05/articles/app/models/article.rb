class Article < ActiveRecord::Base
  validates :title, :body, :authorname, presence: true
  validates :title, uniqueness: true
  validates :authorname, format: {
    with: %r{^((?!pat).*$)}i,
    message: 'we don\'t accept your kind around here'
  }
end

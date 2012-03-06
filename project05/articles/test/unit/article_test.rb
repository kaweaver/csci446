require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "article attributes must not be empty" do
    article = Article.new
    assert article.invalid?
    assert article.errors[:title].any?
    assert article.errors[:authorname].any?
    assert article.errors[:body].any?
  end
end

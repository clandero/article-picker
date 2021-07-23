require 'json'

class ArticlePicker

  def self.round_robin (article)
    sorted_articles = []
    
    while !article.empty?
        for key, value in article
            if !value.empty?
                sorted_articles.append(value[0]['token'].to_i)
                value.shift()
            else
                article.delete(key)
            end
        end
    end
    return sorted_articles[0..3]
  end

end
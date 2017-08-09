class WelcomeController < BaseController
  def index
  	logger.info "1233333333333333"
  	logger.warn "wwwwwwwwwwwwwwwwwwwww"
  	logger.error "eeeeeeeeeeeeeeeeeee"
  	logger.fatal "ccccccccccccccccccccccc"
  	articles = Article.all
  	logger.debug("articles:#{articles.inspect}")
  end
end

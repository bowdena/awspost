class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def cloudfront_cached
  end

  def corstest
    # disable layouts/application.html.erb
    render layout: false
  end
end

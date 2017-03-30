class SentriesController < ApplicationController
  def index
    @sentries ||= Sentry.all
  end
end

class ApplicationController < ActionController::Base
  self.abstract_class = true
  protect_from_forgery with: :exception
end

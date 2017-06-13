class WelcomeController < ApplicationController
  before_action :set_welcome, only: %i[show edit update destroy]

  def index; end
end

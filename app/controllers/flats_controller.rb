require "open-uri"

class FlatsController < ApplicationController

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :fetch_flats

  def index
  end

  def show
    id = params[:id].to_i
    @flat = @flats.select { |f| f['id'] == id }.first
  end

  private

  def fetch_flats
    @flats = JSON.parse(open(URL).read)
  end
end


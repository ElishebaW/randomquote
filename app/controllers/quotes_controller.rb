class QuotesController < ApplicationController
  require 'json'
  def index
    @quotes = HTTParty.get('http://quotes.stormconsultancy.co.uk/random.json',
    :headers =>{'Content-Type' => 'application/json'} )
  end
end

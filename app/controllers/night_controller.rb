require 'open-uri'
class NightController < ApplicationController
  def index
    decathlon = open('http://www.decathlon.com.tr/C-529835-sirt-cantasi-ve-aksesuari')
    @doc = Nokogiri::HTML(decathlon)
    @dec = @doc.css('ul li div.product_bloc_orga_02').first(10)
  end
end

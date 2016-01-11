class AdrenalinoutdoorController < ApplicationController

  def index
    adrenalinoutdoor = open('http://www.adrenalinoutdoor.com/cantalar/40-60-Litre-Arasi-cantalar-241')
    doc = Nokogiri::HTML(adrenalinoutdoor)
    @adr = doc.css('div.OvalDiv div.layoutbox-category-productdisplay')
  end

  def two
    adrenalinoutdoor = open('http://www.adrenalinoutdoor.com/cantalar/40-60-Litre-Arasi-cantalar-241?start=21')
    doc = Nokogiri::HTML(adrenalinoutdoor)
    @adr = doc.css('div.OvalDiv div.layoutbox-category-productdisplay')
  end
end

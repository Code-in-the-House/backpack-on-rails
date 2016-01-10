class DecathlonController < ApplicationController

  def index
    decathlon = open('http://www.decathlon.com.tr/C-529835-s-rt-cantalar-ve-aksesuarlar/T-251685_293820D')
    doc = Nokogiri::HTML(decathlon)
    @dec = doc.css('ul.product_list li.product_normal').first(24)
  end
end

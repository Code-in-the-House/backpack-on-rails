class HepsiburadaController < ApplicationController

  def index
    hepsiburada = open('http://www.hepsiburada.com/dagcilik-kamp-cantalari-c-1300934?siralama=azalanfiyat&sayfa=1')
    doc = Nokogiri::HTML(hepsiburada)
    @hep = doc.css('li div.box')
  end

  def two
    hepsiburada = open('http://www.hepsiburada.com/dagcilik-kamp-cantalari-c-1300934?siralama=azalanfiyat&sayfa=2')
    doc = Nokogiri::HTML(hepsiburada)
    @hep = doc.css('li div.box')
  end

  def three
    hepsiburada = open('http://www.hepsiburada.com/dagcilik-kamp-cantalari-c-1300934?siralama=azalanfiyat&sayfa=3')
    doc = Nokogiri::HTML(hepsiburada)
    @hep = doc.css('li div.box')
  end
end

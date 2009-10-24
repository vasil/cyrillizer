# coding: utf-8
require File.join(File.dirname(__FILE__), *%w(.. lib cyrillizer converter))

describe Cyrillizer::Converter do

  latin = Cyrillizer::Converter::Latin
  latin_a = Cyrillizer::Converter::Latin_a

  cyrillic = Cyrillizer::Converter::Cyrillic
  cyrillic_a = Cyrillizer::Converter::Cyrillic_a
  
  it "should return empty string for given empty string" do
    "".to_cyr.should == ""
  end

  it "should return the same string for given cyrillic patterns" do
    cyrillic.to_cyr.should == cyrillic
    cyrillic_a.join.to_cyr.should == cyrillic_a.join
  end

  it "should return the cyrillic patterns for given latin ones" do
    latin.to_cyr.should == cyrillic
    latin_a.join.to_cyr.should == cyrillic_a.join
  end

  it "should be ok for UPCASE SENTENCES" do
    "DZHABE RABOTI, DZHABE NE SEDI".to_cyr.should == "ЏАБЕ РАБОТИ, ЏАБЕ НЕ СЕДИ"
  end

  it "should be ok for Capitalized sentences" do
    "Dzhabe raboti, dzhabe ne sedi".to_cyr.should == "Џабе работи, џабе не седи"
  end

end


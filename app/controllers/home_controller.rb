require 'google_search_results' 
require 'net/http'
require 'json'
require 'open-uri'
require 'nokogiri'
class HomeController < ApplicationController
  
  
  def index
  end
  def jobs
    # youtube-api-key = AIzaSyBgyLDuqjUD4jiktDrUL1j67e9iYsDRECY
    query = params[:query]
    api_key = "79e5c90b77f99b370d9028ad6ddd2828a6cad1ac6709bbf830dd888b7ba75a40"
    response = HTTParty.get("https://serpapi.com/search.json?engine=google_jobs&q=#{query}&hl=en&api_key=#{api_key}")
    @jobs = response['jobs_results']
  end
  def upskill

    query=params[:search_keyword]
    api_key="cce7cc1716b5aab11e8b88a5eb7987f63a10041e154448b607c2db85342512ba"
    response=HTTParty.get("https://serpapi.com/search.json?engine=youtube&search_query=#{query}&apikey=#{api_key}")
    @result = response['video_results']
    #puts @result
  end
  def mentalhealth
    @quote = Quote.order("RANDOM()").first

    puts @quote
  end 
end

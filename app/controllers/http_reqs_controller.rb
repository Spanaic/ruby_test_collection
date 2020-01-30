require 'net/http'
require 'net/https'
require 'uri'

class HttpReqsController < ApplicationController

    def req_url
        target_uri = "http://example.com"
        # target_uri = "http://18.219.75.211" # タイガーの落ちてるポートフォリオ
        uri = URI.parse(target_uri)
        @http = Net::HTTP.new(uri.hostname, uri.port)
        req = Net::HTTP::Get.new(uri.request_uri)
        @response = @http.request(req)
        puts @response
    end
end


# NOTE:もしEC2が落ちていた場合はTimeOutになる。
# Completed 500 Internal Server Error in 60006ms (ActiveRecord: 0.0ms)
# Net::OpenTimeout (execution expired):



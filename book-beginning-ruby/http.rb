require 'webrick'

server = WEBrick::HTTPServer.new( :Port => 9000, :DocumentRoot => Dir::pwd + "/" )

class MyServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, response)
    response.body = File.open('./index.html', 'r')
    response['Content-Type'] = "text/html"
  end
end

server.mount("/", MyServlet)
trap("INT"){ server.shutdown }
server.start

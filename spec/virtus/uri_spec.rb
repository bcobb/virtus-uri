require 'virtus'
require 'virtus/uri'

describe 'Using Virtus::URI' do

  class Request
    include Virtus

    attribute :url, URI, default: URI('http://example.com')
    attribute :referer, URI
  end

  it 'coerces http URLs' do
    request = Request.new(url: 'http://example.com')

    expect(request.url).to be_a(URI::HTTP)
    expect(String(request.url)).to eql('http://example.com')
  end

  it 'coerces https URLs' do
    request = Request.new(url: 'https://example.com')

    expect(request.url).to be_a(URI::HTTPS)
    expect(String(request.url)).to eql('https://example.com')
  end

  it 'coerces generic URLs' do
    request = Request.new(url: 'protocol://example.com')

    expect(request.url).to be_a(URI::Generic)
    expect(String(request.url)).to eql('protocol://example.com')
  end

  it 'defaults to nil unless otherwise specified' do
    expect(Request.new.url).to eql(URI('http://example.com'))
    expect(Request.new.referer).to be_nil
  end

end

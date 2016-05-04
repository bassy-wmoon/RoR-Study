class Api::HelloworldController < ApplicationController
  def helloJson
    response = {'key1' => 'hello', 'key2' => 'world'}
    render :json => response
  end
  
  def helloXml
    response = {'key1' => 'hello', 'key2' => 'world'}
    render :xml => response
  end
end

class Api::HelloworldController < ApplicationController

  def hello
    
    response = {'key1' => 'hello', 'key2' => 'world'}
    
    render :json => response
    
  end

end

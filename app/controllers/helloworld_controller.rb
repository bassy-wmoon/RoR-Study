class HelloworldController < ApplicationController

  def index
    render text: "hello, world! <br> index"
  end

  def hello
    render text: "hello, world! <br> hello"
  end
end

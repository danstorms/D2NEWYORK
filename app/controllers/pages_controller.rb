class PagesController < ApplicationController
  def main
    @title = "Main"
  end

  def info
    @title = "Info"
  end

  def registry
    @title = "Registry"
  end

  def fun
    @title = "Fun"
  end

end

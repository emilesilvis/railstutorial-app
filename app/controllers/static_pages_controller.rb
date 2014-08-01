class StaticPagesController < ApplicationController
  def home
    @foo = "bar"
  end

  def help
  end
end

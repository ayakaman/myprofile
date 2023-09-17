class MockupController < ApplicationController

  def done
    @lists = List.all
  end

  private

end

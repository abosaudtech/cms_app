class TestController < ApplicationController
  layout false

  
  def first
    render(:tamplate => 'test/first') # We can write this line in another way in second def
  end
  
  def second
    render('second')
  end
end

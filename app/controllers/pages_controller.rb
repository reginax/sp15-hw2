class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    @text = "You are nothing!"
    @name = params[:name]
    @adjective = params[:adjective]
  end

  def age
    @age = params[:age] 
  end

  def person
    @age = params[:age]
    @name = params[:name]
    person = Person.new(@name, @age)
    @introduce = person.introduce
    @nickname = person.nickname
    @birth_year = person.birth_year
  end
end
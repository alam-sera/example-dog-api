class DogsController < ApplicationController
  def create
    if current_user
      dog = Dog.new(
        name: params[:name],
        breed: params[:breed],
        age: params[:age],
        user_id: current_user.id 
      )
      if dog.save
        render json: dog.as_json
      else 
        render json: {message: dog.errors.full_message}
      end 
    else 
      render json: {message: "Not logged in"}
    end
  end

  def update 
    if current_user == dog.user_id
      dog.name = params[:name] || dog.name
      dog.breed = params[:breed] || dog.breed
      dog.age = params[:age] || dog.age
      if dog.save
        render json: dog.as_json
      else 
        render json: {message: dog.errors.full_message}
      end 
    end 
  end
end

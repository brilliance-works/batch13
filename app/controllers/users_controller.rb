class UsersController < ApplicationController
  #layout 'my_layout', :except => [:new_user]
  layout 'my_layout', :only => [:new_user,:login]

  def register_form
    @user = User.new
  end


  def register
    @user = User.new(params['user'])
    if @user.save
     flash[:notice] = "User created Sucessfully"
     redirect_to :action => :list_users
    else
     flash[:error] = "User not created Sucessfully"
     render 'register_form'
    end
  end

  def hi
   
  end

  def delete_user
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User deleted Sucessfully"
    flash[:error] = "User deleted Sucessfully"
    flash[:warning] = "User deleted Sucessfully" 
    redirect_to :action => :list_users
  end

  def show_user
    @user = User.find(params[:id])
  end

  def login
    render 'logout', :layout => 'my_layout'
  end

  def logout
  end

  def list_users
    @users = User.all
    #@users = User.active_users
  end

  
end

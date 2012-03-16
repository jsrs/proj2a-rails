class AdminsController < ApplicationController
  def login
    username = params[:username]
    password = params[:password]
    conn = ActiveRecord::Base.connection
    user_id = conn.select_value("select getID('" + username + "','" + password + "')").to_i  
    if user_id == 1 
      respond_to do |format|
        format.html {render :text => user_id}
      end
    end
  end

  def logtest
    if params[:student] == nil
      username = password = ""
    else
      username = params[:student][:username]
      password = params[:student][:password]
    end
    conn = ActiveRecord::Base.connection
    user_id = conn.select_value("select getID('" + username + "','" + password + "')").to_i 
    if user_id == 1 
      respond_to do |format|
        format.html {render :text => user_id}
      end
    end
  end   
end

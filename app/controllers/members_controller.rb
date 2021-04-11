class MembersController < ApplicationController
    def new
    end
    
    def create
     if member(member_params[:password])
      member[:member_id] = member.id
      redirect_to root_path, notice: 'ログインしました。'
     else
      render :new
     end
     private
     def member_params
         params.require(:member).permit(:email, :password)
     end
     
    end
        
    def destroy
    end
end
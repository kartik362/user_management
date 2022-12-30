class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end
      
    def create
        @user = User.new(params.require(:user).permit(:name,:lname,:email,:address_1,:address_2,:city,:state,:country,:pincode,:phone,:password))
        if @user.save
            flash[:notice]="Signed up Successfully!"
            redirect_to @user
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:name,:lname,:email,:address_1,:address_2,:city,:state,:country,:pincode,:phone))
            flash[:notice] = "Form Updated Successfully!"
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
end

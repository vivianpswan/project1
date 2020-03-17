class ProgramsController < ApplicationController
    before_action :show, only: [:edit, :update, :show, :destroy]

    
    def index
        @programs = Program.all
    end
    
    def show
        @program = Program.find(params[:id])
      end

    def new
        @program = Program.new
    end

    def edit
        @program = Program.find(params[:id])
    end

    def create
        @program = Program.new(program_params)
        if @program.save
            flash[:notice] = "Your program was successfully created"
            redirect_to programs_path
          else
            render 'new'
          end
    end

    def update
        @program = Program.find(params[:id])
       
        if @program.update(program_params)
          flash[:notice] = "Your program was updated"
          redirect_to @program
        else
          flash[:notice] = "Your program was not updated"  
          render 'edit'
        end
      end


    def destroy
        @program = Program.find(params[:id])
        @program.destroy
       
        redirect_to articles_path
    end

    private
        def program_params
            params.require(:program).permit(:stage, :subject)
        end

end

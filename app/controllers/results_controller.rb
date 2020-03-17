class ResultsController < ApplicationController
    
def index
    @results = Result.all
end

def show
    @result = Result.find(params[:id])
  end

def new
    @result = Result.new
end

def edit
    @result = Result.find(params[:id])
end

def create
    @result = Result.new(result_params)
    if @result.save
        flash[:notice] = "Your result was successfully created. Refer to the last entry in the table."
        redirect_to results_path
      else
        render 'new'
      end
end

def update
    @result = Result.find(params[:id])
   
    if @result.update(result_params)
      flash[:notice] = "Details were updated. Please check the details below:"
      redirect_to @result
    else
      flash[:notice] = "Your result was not updated"  
      render 'edit'
    end
  end


def destroy
    @result = Result.find(params[:id])
    @result.destroy
   
    redirect_to results_path
end

private
    def result_params
        params.require(:result).permit(:outcome, :completion)
    end
end


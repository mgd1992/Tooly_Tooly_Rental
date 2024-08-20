class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      redirect_to tool_path(@list)
    else
      render :new, notice: "message"
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    if @tool.destroy
      redirect_to tool_path
    else
      render :new
    end
  end

  private

  def list_params
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name, :description, :available)
  end

end

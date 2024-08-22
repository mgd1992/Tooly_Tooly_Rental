class ToolsController < ApplicationController
  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create

    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new, notice: "We couldn't add that tool, try again!"
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

  def tool_params
    params.require(:tool).permit(:name, :description, :price, :category_id, photos: [])
  end
end

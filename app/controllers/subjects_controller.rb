class SubjectsController < ApplicationController
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => "Default"})
  end

  def create
    @subject = Subject.new(subject_params)
    
    if @subject.save
      # If save succeeds, redirect to index
      flash[:notice] = "Subject created successfully."
      redirect_to(subjects_path)
    else
      # If save fails, redisplay form so user can fix problems
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      # If save succeeds, redirect to show
      flash[:notice] = "Subject updated successfully."
      redirect_to(subject_path(@subject))
    else
      # If update fails, redisplay form so user can fix problems
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' deleted successfully."
    redirect_to(subjects_path)
  end
  
  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end

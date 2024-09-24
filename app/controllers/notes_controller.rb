class NotesController < ApplicationController
  def index
    @notes = Note.all
    @image = Image.new
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path, notice: "Заметка создана!"
    else
      render :new
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to notes_path, notice: "Заметка обновлена!"
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path, notice: "Заметка удалена!"
  end

  private

  def note_params
    params.require(:note).permit(:title, :content)
  end
end

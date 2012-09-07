class PhotosController < ApplicationController
  before_filter :find_person
  before_filter :find_photo, :only => [:show]

  def index
    @photos = @person.photos.page(current_page(params)).per(max_page_size)

    respond_to do |format|
      format.xml { render }
    end
  end

  def show
  end

  private

  def find_person
    @person = Person.find(params[:person_id])
  rescue ActiveRecord::RecordNotFound
    head(404)
  end

  def find_photo
    @photo = Photo.find(params[:id])
    p '---------------', @photo
    raise Errno::ENOENT.new if @photo.path.blank? || File.exist?(@photo.path)
  rescue ActiveRecord::RecordNotFound, Errno::ENOENT
    head(404)
  end
end

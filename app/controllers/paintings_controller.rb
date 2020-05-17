class PaintingsController < ApplicationController

    def index
        @paintings = Painting.all
    end

    def show
        @painting = Painting.find(params[:id])
    end

    def new
        @painting = Painting.new
    end

    def create
        a = Artist.find_by_name(params[:painting][:artist])
        g = Gallery.find_by_name(params[:painting][:gallery])

        p = Painting.new
        p.title = params[:painting][:title]
        p.artist = a
        p.gallery = g
        #byebug
        p.save
        
        redirect_to painting_path(p.id)
    end

    def edit
        @painting = Painting.find(params[:id])
    end

    def update
        p = Painting.find(params[:id])
        p.title = params[:painting][:title]

        artist_name = params[:painting][:artist]
        artist = Artist.find_by(name: artist_name)
        p.artist = artist

        gallery_name = params[:painting][:gallery]
        gallery = Gallery.find_by(name: gallery_name)
        p.gallery = gallery
        p.save
        
        redirect_to painting_path(p.id)
       
    end

    def destroy
        @painting = Painting.find(params[:id])
        @painting.destroy
        redirect_to paintings_path
    end

    private
    def painting_params
        params.require(:painting).permit(:title)
    end

end

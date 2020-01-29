class BukuController < ApplicationController
  def index
    @buku=Buku.all
  end

  def new
    @buku=Buku.new
  end

  def create
    @buku=Buku.create(params.require(:buku).permit(:penulis, :judul, :kota, :penerbit, :tahun))   
    if @buku.save 
      redirect_to buku_index_path
    else
      render :new 
    end 
  end

  def edit
    @buku=Buku.find(params[:id])  
  end

  def update
    @buku=Buku.find(params[:id])  
    if @buku.update(params.require(:buku).permit(:penulis, :judul, :kota, :penerbit, :tahun))     
      redirect_to buku_index_path   
    else     
      render :edit   
    end 
  end

  def delete
    @buku = Buku.find(params[:id])   
    if @buku.delete   
      redirect_to buku_index_path   
    else      
      render :delete   
    end  
  end
end

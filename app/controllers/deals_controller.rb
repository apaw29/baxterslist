class DealsController < ApplicationController
  before_filter :require_user, only: [:index, :show, :new, :create, :edit, :update, :destroy, :uplaod]  

  def index
    @all_category = Deal.all_category
    sort = params[:sort] || session[:sort]
    case sort
    when 'title'
      ordering,@title_header = {:order => :title}, 'hilite'
    when 'price'
      ordering,@price_header = {:order => :price}, 'hilite'
    when 'postdate'
      ordering,@postdate_header = {:order => :postdate}, 'hilite'
    end
    
    @selected_category = params[:category] || session[:category] || {}
    
    if @selected_category == {}
      @selected_category = Hash[@all_category.map {|rating| [rating, rating]}]
    end
    
    if params[:sort] != session[:sort] or params[:ratings] != session[:ratings]
      session[:sort] = sort
      session[:category] = @selected_category
      redirect_to :sort => sort, :category => @selected_category and return
    end
    @deals = Deal.find_all_by_category(@selected_category.keys, ordering)
  end
  def show
    id = params[:id] # retrieve deal ID from URI route
    @deal = Deal.find(id) # Look up deal by unique ID
    # will render app/views/deals/show.<extension> by default
  end
  def new
	@deal = Deal.new
  end

 def create
   @deal = Deal.create!(params[:deal])
   flash[:notice]="#{@deal.title} was successfully created"
   redirect_to deals_path 
 end

  def edit
    @deal = Deal.find params[:id]
  end

  def update
    @deal = Deal.find params[:id]
    @deal.update_attributes!(params[:deal])
    flash[:notice] = "Your ad for '#{@deal.title}' was successfully updated."
    redirect_to deal_path(@deal)
  end

  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
    flash[:notice] = "Ad '#{@deal.title}' deleted."
    redirect_to deals_path
  end

  def upload
    uploaded_io = params[:deal][:postdate]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    file.write(uploaded_io.read)
  end
end
end

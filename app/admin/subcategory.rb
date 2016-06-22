ActiveAdmin.register Subcategory do

 permit_params :name, :image, :logo, :slug, :tag, :description, :logoimage
    
    sortable tree: false,
						sorting_attribute: :tag
    
   index :as => :sortable do
		label :name
		
		actions
	end
   
    index do 
		column :name
		column :image
		column :logo
		column :tag
		column :id
		actions
	end
    show do |t|
		attributes_table do
			row :name
			
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :slug
			f.input :logo
			f.input :description
			f.input :image, hint: f.subcategory.image? ? image_tag(subcategory.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logoimage, hint: f.subcategory.logoimage? ? image_tag(subcategory.logoimage.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
		end
		f.actions
	end


end

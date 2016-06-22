ActiveAdmin.register Category do

    permit_params :name, :image, :logo, :slug, :tag, :description, :homelogo, :content
    
    sortable tree: false,
						sorting_attribute: :tag
    
   index :as => :sortable do
		label :name
		
		actions
	end
   
    index do 
		column :name
		column :homelogo
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
			f.input :content,  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			f.input :description
			f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
			f.input :logo, hint: f.category.logo? ? image_tag(category.logo.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")	
		end
		f.actions
	end

end

ActiveAdmin.register Project do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  controller do
    def permitted_params
      params.permit project: [:description, :photo]
    end
  end

  form do |f|
    f.inputs "Projects" do
      f.input :description
      f.input :photo, required: false, as: :file, hint: f.template.image_tag(f.object.photo.url(:thumb))
      # Will preview the image when the object is edited
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :description
      row :photo do
        image_tag(ad.photo.url(:thumb))
      end
      # Will display the image on show object page
    end
  end


end

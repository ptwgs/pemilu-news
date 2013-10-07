ActiveAdmin.register Link do
  index do
    column :title
    column 'URL', :url
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :url, label: 'URL'
    end
    f.actions
  end
end

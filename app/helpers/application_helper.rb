module ApplicationHelper

  def is_active?(controller_name, action_name=nil)
    if controller.controller_name.eql?(controller_name) && (controller.action_name.eql?(action_name) || action_name == nil)
      'active'
    else
      ''
    end
  end

  def add_item(model_class)
    link_text = t('.new', :default => [:'helpers.links.new', 'New %{model}'],
          :model => model_class.model_name.human.titleize)

    link_to new_dog_breed_group_path,
            :class => 'btn btn-success',
            title: t('.new', :default => [:'helpers.html_tooltips.new', 'New %{model}'],
                     :model => model_class.model_name.human.titleize),
            rel: 'tooltip' do

      %Q|<span class="glyphicon glyphicon-plus"></span> #{link_text}|.html_safe

    end
  end


end

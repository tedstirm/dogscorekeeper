module ApplicationHelper

  def is_active?(controller_name, action_name=nil)
    if controller.controller_name.eql?(controller_name) && (controller.action_name.eql?(action_name) || action_name == nil)
      'active'
    else
      ''
    end
  end

  def add_item_btn(model_class, path)
    item_btn(model_class, path, "New", false, 'btn btn-success', 'glyphicon glyphicon-plus')
  end

  def edit_item_btn(model_class, path)
    item_btn(model_class, path, "Edit", false, 'btn btn-primary', 'glyphicon glyphicon-pencil')
  end

  def delete_item_btn(model_class, path)
    item_btn(model_class, path, "Delete", true, 'btn btn-danger', 'glyphicon glyphicon-trash')
  end

  private
  # @param [Object] model_class  - The model's class
  # @param [Object] link_path -  The links URL path
  # @param [Object] link_text - The link text
  # @param [Object] confirm_dialog - Whether or not to render confirmation dialog. Only used on Delete operations generally.
  # @param [Object] btn_class - CSS button class, which is used to determine button color.
  # @param [Object] icon_class - CSS icon class, which is used to determine icon next to the button.
  def item_btn(model_class, link_path, link_text, confirm_dialog, btn_class, icon_class)

    link_text_downcase = link_text.downcase
    t_link_text = t(".#{link_text_downcase}", :default => [:"helpers.links.#{link_text_downcase}",
                  link_text], :model => model_class.model_name.human.titleize)

    if(confirm_dialog)
      link_to link_path,
            :class => btn_class,
            method: :delete,
            data: { confirm:  t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) },
            title: t(".#{link_text_downcase}", :default => [:"helpers.html_tooltips.#{link_text_downcase}", link_text],
                     :model => model_class.model_name.human.titleize),
            rel: 'tooltip' do
      %Q|<span class="#{icon_class}"></span> #{t_link_text}|.html_safe
      end
    else
      link_to link_path,
              :class => btn_class,
              title: t(".#{link_text_downcase}", :default => [:"helpers.html_tooltips.#{link_text_downcase}", link_text],
                       :model => model_class.model_name.human.titleize),
              rel: 'tooltip' do
        %Q|<span class="#{icon_class}"></span> #{t_link_text}|.html_safe
      end
    end

  end

end

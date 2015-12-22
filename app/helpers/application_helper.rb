module ApplicationHelper
  def form_group_tag(errors, &block)
    class_text = errors.any? ? 'form-group has-error' : 'form-group'
    content_tag :div, capture(&block), class: class_text
  end
end

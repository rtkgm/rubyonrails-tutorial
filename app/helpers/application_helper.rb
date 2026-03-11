module ApplicationHelper
  def nav_link_to(name, path, **options)
    classes = ["nav-link", options[:class]].compact
    classes << "nav-link--current" if current_page?(path)

    link_to name, path, options.merge(class: classes.join(" "))
  end
end

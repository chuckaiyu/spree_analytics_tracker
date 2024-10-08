Deface::Override.new(
  virtual_path: 'spree/products/index',
  name: 'add_products_searched_to_products_list',
  insert_before: '[data-hook="search_results"]',
  text: <<-HTML
    <%= render partial: 'spree/shared/trackers/segment/products_searched', formats: :js %>
  HTML
)
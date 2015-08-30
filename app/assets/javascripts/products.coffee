$ ->
  $('#subcategory_parent_id').select2()
  $('#product_id').select2
    tags: true
    ajax:
      dataType: 'json'
      url: '/products/get_list'

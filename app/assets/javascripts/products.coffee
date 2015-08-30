$ ->
  $('#subcategory_parent_id').select2
    width: '200px'
  $('#product_id').select2
    width: '200px'
    ajax:
      dataType: 'json'
      url: '/products/get_list'
      data: (q) ->
        q: q
      results: (data) ->
        myResults = []
        $.each data, (index, item) ->
          myResults.push
            id: item.id
            text: item.name
        { results: myResults }
    createSearchChoice: (term, data) ->
      if $(data).filter((->
          @text.localeCompare(term) == 0
        )).length == 0
        return {
          id: term
          text: term
        }
      return
  $('#product_id').on 'change', ->
    $('#user_product_id').val($(this).val())

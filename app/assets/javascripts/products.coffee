$ ->
  buildSelects2 = () ->
    $('.subcategory_parent_id').select2
      width: '500px'

    $('.product_id').select2
      width: '500px'
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

  buildSelects2()

  $('#js_add_product').on 'click', ->
    $('.product_id').select2("destroy")
    $('.subcategory_parent_id').select2("destroy")
    $('.js-product-selector').children().clone(true, true).appendTo('.js-moar-products')
    buildSelects2()
    

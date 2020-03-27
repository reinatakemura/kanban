$ ->
  $('.sortable_list').sortable
    axis: 'y'
    items: '.item'

    update: (e, ui) ->
      item = ui.item
      item_data = item.data()
      console.log(item_data)
      params = { _method: 'put' }
      params[item_data.modelName] = { row_order_position: item.index() }
      console.log(params[item_data.modelName])
      $.ajax
        type: 'POST'
        url: item_data.updateUrl
        dataType: 'json'
        data: params

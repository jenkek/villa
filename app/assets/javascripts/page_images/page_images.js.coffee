@page_images = ->
  images = $('#body a img')

  images.each  ->
    $(this).parent('a').colorbox
      'rel': 'photos'
      'maxWidth': '90%'
      'maxHeight': '90%'
      'current': '{current} / {total}'
      'previous': 'назад'
      'next': 'вперед'
      'close': 'закрыть'

    true

  true

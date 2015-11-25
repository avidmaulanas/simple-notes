$(document).bind "page:load page:change", ->
  $container = $('.infinite-notes')

  $container.masonry
    itemSelector: '.box'
    columnWidth: '.box'

  $container.infinitescroll {
    navSelector: '.pagination'
    nextSelector: '.pagination a'
    itemSelector: '.box'
    loading:
      finishedMsg: 'No more pages to load.'
      img: 'http://i.imgur.com/6RMhx.gif'
  }, (newElements) ->
    # hide new items while they are loading
    $newElems = $(newElements).css(opacity: 0)
    $newElems.animate opacity: 1
    $container.masonry 'appended', $newElems, true
    return
  return
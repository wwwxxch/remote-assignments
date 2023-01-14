//  Click to Change Text
$('#welcome').click(function () {
  $('#welcome').text('Have a Good Time!');
});

// Click to Show More Content Boxes.
$('.button').click(function () {
  const $hideboxes = $('.hidegrandparent');
  if ($hideboxes.css('display') === 'none' || $hideboxes.css('display') === '') {
    $hideboxes.css('display', 'flex');
  } else {
    $hideboxes.css('display', 'none');
  }
  /*
  if ($hideboxes.is(':visible')) {
    $hideboxes.css('display', 'none');
  } else {
    $hideboxes.css('display', 'flex');
  }
  */
  $('.button')[0].scrollIntoView();
});

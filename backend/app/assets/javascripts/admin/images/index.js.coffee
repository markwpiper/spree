$ ->
  ($ '#new_image_link').click (event) ->
    event.preventDefault()

    ($ '.no-objects-found').hide()

    ($ this).hide()
    $.ajax
      type: 'GET'
      url: @href
      data: (
        authenticity_token: AUTH_TOKEN
        token: Spree.api_key
      )
      success: (r) ->
        ($ '#images').html r

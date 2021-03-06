# Override Rails handling of confirmation

$.rails.allowAction = (element) ->
  # The message is something like "Are you sure?"
  message = element.data('confirm')
  # If there's no message, there's no data-confirm attribute,
  # which means there's nothing to confirm
  return true unless message
  # Clone the clicked element (probably a delete link) so we can use it in the dialog box.
  $link = element.clone()
  # We don't necessarily want the same styling as the original link/button.
  .removeAttr('class')
  # We don't want to pop up another confirmation (recursion)
  .removeAttr('data-confirm')
  # We want a button
  .addClass('btn').addClass('btn-danger')
  # We want it to sound confirmy
  .html("Yes, I'm certain.")

  # Create the modal box with the message
  modal_html = """
               <div class="modal fade" id="del-confirm-model" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
               <div class="modal-dialog modal-sm">
               <div class="modal-content">

               <div class="modal-header">
               <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
               <h4 class="model-title">#{message}</h4>
               </div>
               <div class="modal-body">
               <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
               </div>
               </div><!-- /.modal-content -->
               </div>
               """
  $modal_html = $(modal_html)
  # Add the new button to the modal box
  $modal_html.find('.modal-body').append($link)
  # Pop it up
  $modal_html.modal()
  # Prevent the original link from working
  return false
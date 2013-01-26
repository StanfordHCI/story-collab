$ ->
  $s = $('#scene_<%= @scene.id %>')
 
  # remove any other forms for the scene
  $s.children('.paragraph-form').remove()
  
  # add the form 
  $s.children('.paragraph')
    .after("<%= escape_javascript(render(:partial => 'paragraphs/form', :locals => {:p => @p, :scene => @scene})) %>")
  $s.children('.paragraph-form').children('.cancel-paragraph').click cancelParagraph
  $s.children('.paragraph').hide()

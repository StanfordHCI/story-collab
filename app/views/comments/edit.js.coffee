$('#comment_<%= @comment.id %>').replaceWith('<%= escape_javascript(render :partial => 'comments/form', :locals => {:scene => @comment.scene, :comment => @comment}) %>')

$('#comment_<%= @comment.id %>').replaceWith('<%= escape_javascript(render :partial => "comments/comment", :locals => {:scene => @comment.scene, :comment => @comment }) %>')

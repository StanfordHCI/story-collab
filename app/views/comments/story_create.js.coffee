$('#story_<%= @story.id %>_comments').append("<%= escape_javascript(render :partial => "comments/story_comment", :locals => {:story => @story, :story_comment => @comment}) %>")
paragraphLinksHelper($("#story_comment_<%= @comment.id %>_content"))
$("#story_<%= @story.id %>_comment_box #comment_content").val("")
$("#story_<%= @story.id %>_comment_box .comment_box .text-error").html("")
$("#story_<%= @story.id %>_comments .comment-count").html("<%= pluralize @story.comments.length, "comment" %>")
$("#story_comment_<%= @comment.id %> abbr.timeago").timeago();

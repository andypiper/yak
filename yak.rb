class YakApp < Sinatra::Base
get '/' do
def youtube_embed(youtube_url)
if youtube_url[/youtu\.be\/([^\?]*)/]
youtube_id = $1
else
# Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
youtube_id = $5
end
%Q{<iframe title="YouTube video player" width="560" height="315" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
end
"<h1>Bacon Pancakes from Cloud Foundry</h1>"+youtube_embed('youtu.be/zalYJacOhpo')
end
end

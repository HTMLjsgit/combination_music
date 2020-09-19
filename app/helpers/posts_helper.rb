module PostsHelper

	def post_audio(post)
		return post.audio.to_s.gsub("/uploads/post/audio/#{post.id}/", "")
		# return post.audio
	end
end

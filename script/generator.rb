time = Time.now
file_name = time.strftime("%F-%T")
blog_title = gets.chomp if p "Please Enter the blogs name: "
File.open("_posts/#{file_name}.md", "w") do |f|
	HEADER = <<END
---
layout: post
tags: 
date: #{file_name}
thumbnail: 
title: #{blog_title}
published: true
---
END
	f.write(HEADER)
end
atom_feed( :language => 'es-AR' ) do |feed|
  feed.title "Leiden 2.0"
  feed.updated @posts.first.updated_at #.strftime('%Y-%m-%dT%H:%M:%SZ')

  @posts.each do |post|
    next if post.draft

    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.content, :type => 'html'
      
      entry.author do |author|
        author.name 'Leandro'
      end
    end
  end
end

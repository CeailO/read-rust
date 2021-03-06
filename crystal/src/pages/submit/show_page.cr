require "markd"

class Submit::ShowPage < MainLayout
  include Page::RenderMarkdown

  quick_def page_title, "Submit Post"
  quick_def page_description, "This page contains details on how to submit a post to Read Rust."

  def content
    raw render_markdown(markdown)
  end

  private def markdown
    <<-MD
    Adding new posts to Read Rust is currently a manual process. I read Mastodon,
    Twitter and [Reddit][rust-reddit] as well as subscribe to a lot of RSS feeds to
    discover new posts. Please only submit posts written in, or after 2018.

    If your post is missing [please submit it][add-post].

    ## Providing an RSS feed

    If your blog has an RSS feed please include a link to the feed when adding a
    link to your post. This way any new posts you publish will be automatically
    discovered.

    If your blog doesn't have an RSS feed I would recommend adding one. It allows
    people and machines alike to subscribe to your posts without having to check
    back all the time. Most blogging systems have built in support for generating
    a feed:

    * [Cobalt](https://cobalt-org.github.io/docs/rss)
    * [Zola](https://www.getzola.org/documentation/templates/rss/)
    * [Ghost](https://ghost.org/) — enabled by default at `/rss/` on your blog.
    * [Hugo](https://gohugo.io/templates/rss/)
    * [Jekyll](https://jekyllrb.com/tutorials/convert-site-to-jekyll/#10-rss-feed)
    * [Wordpress](https://codex.wordpress.org/WordPress_Feeds)

    [rust-reddit]: https://www.reddit.com/r/rust/
    [add-post]: https://github.com/wezm/read-rust/issues/new?labels=missing-post&amp;title=Add+post&amp;template=missing_post.md
    MD
  end
end

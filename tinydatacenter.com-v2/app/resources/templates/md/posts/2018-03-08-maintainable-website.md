{:title "Maintainable website"
 :layout :episode
 :video-url "/media/tinydc/episode/maintainable-website/playlist.m3u8"
 :episode-prev-version "2018-01-24-maintainble-website.html"
 :episode-next-steps ["2018-03-06-archival-project.html"]
 :episode-prereqs ["2018-02-04-webserver.html" "2018-02-04-docker.html"]
 :tags ["episode" "episode-wip" "video"]}

In this episode you'll learn how to edit our simple website in a maintainable way. We'll start by copying the website
we have into a nice website generator that handles layouts and news feeds for us. Then we'll add some extra features
that start to enable social features, and let us learn new Dockerfile techniques.

I've yet to record an episode video, but here are the commits I performed one morning when I moved harlanji.com
into Cryogen. I also added a keybase verification file, which sadly was the one thing I missed... otherwise the
page looks the same as the original.

1. created a new cryogen blog and ported harlanji.com into a page and a template to match OG content

  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/938535e1c82d9947cc1c8b6ebfc23723947671b6)

2. added scripts for ops:

  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/a648a710877d5926ac5b8e38aa19b485e9f55b96)

3. added fork me link:

  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/4d48f060e4ee8c551ee3996dad32f1d304ffd752)

4. bump version for ops:

  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/29d12650f23e65451340bfa71fcb32c41b8c0c11)

5. added keybase verification (virtual file):

  * [GH commit](https://github.com/harlanji/tinydatacenter/commit/0f5e8edbd250a8926006f80c5fbd947cd656935c)
  
  Between changes we had to purge our CloudFlare cache. I need to make a script for that... I have a WIP one 
  that lists all static assets... I just need to chunk it into groups of 30 and add extra variations on the home
  page URL and look into whether http+https are distinct.
  
  
  
  
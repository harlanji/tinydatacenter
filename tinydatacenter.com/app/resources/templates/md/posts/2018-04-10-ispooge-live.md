{:title "iSpooge Live"
 :layout :post
 :toc? true}

For the past month we've focused on building a modern application with 
Tiny DataCenter. We built a new platform for
live streaming video using the [principles of Tiny DC](/principles.html), that's 
fully libre and available to ALL.

* More info here: [https://ispooge.com/fresh.html](https://ispooge.com/fresh.html).
* The real thing here: [https://ispooge.com/live-360p.html](https://ispooge.com/live-360p.html).

## From 0 to newww vlog:

We'll walk through the steps at a high level and encourage creative thinking. Contact
us with any questions or if you have a cool idea; we're social at this domain dot com.

### 1. Get yourself a Raspberry Pi "and stuff"

Pi is the one requirement. Extra parts for your project will vary. Only you know 
this stuff... for example:

#### Required

* $40 - Pi

#### You may already have

* $15 - Wired keyboard + mouse
* $100 - 720p+ monitor
* $100 - USB webcam

#### For some A/V projects

* $50 - Pi HD camera
* $140 - pro microphone
* $15 - USB ethernet adapter
* $175 - IPTV transcoder

#### For mobile usage

* $25 - mini screen (480x320)
* $5/day - 500MB data plan
* $30 - multi-channel Bluetooth KB+mouse
* $20 - USB power pack

### 2. Clone TinyDC onto the Pi, build a demo

0-1, idea to concept.

#### Some example projects:

* [iSpooge Daily](/dc-ispooge.html) - live streaming, videos, blog
* [TinyDC](/dc-tinydc.html) - info, video episodes, blog
* [Boob](/dc-boob.html) - entertainment center

Using our projects as inspiration, you can probably think of your own. On your new
Pi, run the command:

`git clone https://github.com/harlanji/tinydatacenter`

And then open the `README.md` with your favorite editor. (See [episode 1](/2018-02-04-webserver.html)).
From here you can setup your site based on what you want to do.

* Informational website
* Blog
* Live streaming platform
* ... your wildest dreams

Copy one of the examples to a new directory `yoursite.com`, start customizing,
and watching changes happen in real time. No need to upload changes, as
the RasPi is the main server. We recommend watching episodes to create a 
[maintainable website](/2018-03-09-maintainable-website.html), but can start
simple [in episode 1 with a basic web server](/2018-02-04-webserver.html).

You'll see how that handles getting popular next...

## 3. Create an account on a CDN

2-N, read scalability and reliability.

[Do this first](/2018-01-24-webserver-online-and-global.html) and never worry about it. Hope that your links go viral.


#### CloudFlare

This is a good long term choice because it has the ability to remember files 
for up to 30 days. It can use the Pi or another origin as the master copy. We've detailed
the best settings for to use with CF.

#### S3

Everyone can sign up for Amazon WS and learn how to use it, and it's reliable. AWS 
is a good extra measure in case the Pi ever goes offline and you don't know how to 
evaluate a web host.

#### Static web host

This is a good choice if you know how to upload a website already, and that your
host is reliable. 

#### Multi-CDN

Awe yeaaaaa. There are good and better ways of doing this. 
Some CDNs play well with others. This allows maximum reliability and
freedom of speech.

## 4. Create social media accounts on syndicate networks

1-2, concept to production.

Think about what you'll be doing as you stream. Think about what the people
on the destination networks want to see. What will they be doing as they watch?
It's good to create a new account with a name similiar to the new project or test, rather
than linking it with your main account. This makes it easy to keep business activity
separate from personal accounts, and try new ideas without annoying our friends.
Once you have something that's working, you can link it up with your main account.


| Network | Live stream? | Storage | Viewers@ | Discovery? | Hosting |
| - | - | - | - | - | - |
| Twitch | X | 0-14 days | Home? | X | CDN |
| YouTube | X | Forever | Mobile, Home, Work | X | CDN |
| Facebook | X | Forever? | Home, Mobile? | X | CDN |
| Periscope | X | 30 days? | Mobile, Home? | X | CDN |
| iSpooge Live | X | 0-Forever | **You'll discover** | eg. **RSS**, SteemIt | **Self**, CDN |
| DTube | - | Forever | Home | SteemIt | P2P |
| BitChute | - | Forever | Home | X | P2P |


[Video platforms compared video](https://ispooge.com/2018-03-14-video-platforms-compared.html)

In general the CDN hosted sites have a central authority and the P2P hosted sites
do not. The former is more prone to moderation and censorship, while the latter 
is more prone to be unavailable after some time when no seeding peers remain
(a logical LRU cache) or face write contention at peak times. Storage timespan and
discoverability can be important depending on the types of video presentations you
will be making--non-recorded, full control gives peace of mind to authentic and 
improv vauthors.

Consumer platforms are more likely to have non-participants while crypto platforms
are more likely to have participants who are themselves looking to be rewarded
by the platform... ie. early adopters are creatives seeking new sources of
monetization.

Setting up accounts is easy. It's good to think in terms of personas. One could
easily cycle accounts, using various accounts to test ideas. Accounts don't matter
much with the [POSSE](https://indieweb.org/POSSE).

#### Twitch

Takes any RTMP stream I give it

People seem to be at home chillin. Some interact with chat. Unsure TV vs PC vs Console 
vs etc

#### YouTube

Takes almost any RTMP stream I give it. Almost no chat... although I disable chat most
of the time. 

#### Facebook

Seems friendly but I don't stream here much

#### Periscope

Is picky about resolution, 540p... I'd not prioritized transcoding... now we have it...


## 5. Customize the platform as you go

1-2, concept to production.

People on some networks like to chat more than others. Some are mobile, some are at home.

Some have repeat visitors and subscription, some are time and location based.

These are all opportunities to build a great network of people who are into
similar things, as decided by yourself.

It's useful to have fine grained controls over your computers. Instead of a friendly
UI, we have low level tools with good interfaces using well documented systems 
concepts and tested approaches. Want a new feature?

Build your own! With TinyDC you work through setting up everything from scratch, 
so that you can extend that experience and knowledge to improving your IT constantly.
Once you're too busy making money to implement new features, you'll know how to 
interview your replacement thoroughly.

### Connect with other sites that syndicate

Since you host the media, you are fully responsible for it and have all rights
that come with maintaining it. You can present your creation as you like, and
plug collaborations as you wish. Your identity is established by the domain name
system and any layers you wish to stack atop it. Wordpress, Cryogen, Auth0, 
Cognito, organizational SSO... it matters not. Find somebody who's done it before, 
and integrate it into our system.

### Cash in where you can

Do cool things like record spots for your favorite meal repleacements, and insert them
into your videos using the videojs ad plugin, and use a referral link. 
Nobody can hold your income potential over your head, without your permission.

There are new ways to make money all the time. And I hear a lot of complaints 
that can be solved with a smarter side hustle. TinyDC can make me money in a 
number of ways that go far beyond monetizing videos with ads, and it can do
similar for anyone with a little creativity. For example, I can:

* Get referril income for DC kits ($ over time and networking)
* Partnership and affiliate fees ($$ over time)
* Corporate sponsorships ($$$ over time)
* Professional services ($$$$$ in bursts)
* Author techical articles, do podcasts (networking and $)
* Connect DC builders with people who want new DCs (networking and $)
* So much more beyond $... "your network is your net-worth"

Your case will obviously have different outlets. What products and services 
do you utilize in delivering your value? Given those observations and the 
knowledge and experience of building every aspect of your system will let you
see endless possibilities... that's why you need to:

## 6. Learn the technicals

N-infinity, transcend limitation.

TinyDC is simple. Start with a working example and customize. Know all the commands we
run, [etc](/principles.html). Of course there's business to do, aka. money to be made,
and ain't nobody got time for no techie mumbo jumbo BAWWWSHIT. 

True that. But then we look at the salary of software engineers, and think about all
our bills that are late. Is there a connection? Given that TinyDC includes
all the code for all the things, what if you spent 90 minutes a few times per week
to study the system that makes you money?

After a few months you'll be able to customize your channel without paying an arrogant 
asshole programmer who tells you it'll be 25 grand to do what you want. iSpooge Live 
took just over a month to develop on Tiny DC.

# Related news

You can find frequent posts with relevant links to discussions on our [RSS feed](/feeds.html).
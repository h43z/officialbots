# GoogleBot (Common crawlers)
# https://developers.google.com/search/docs/crawling-indexing/verifying-googlebot
curl https://developers.google.com/static/search/apis/ipranges/googlebot.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# GoogleAdsbot (Special-case crawlers)
# https://developers.google.com/search/docs/crawling-indexing/verifying-googlebot
curl https://developers.google.com/static/search/apis/ipranges/special-crawlers.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# Google User-triggered fetchers (google)
# https://developers.google.com/search/docs/crawling-indexing/verifying-googlebot
curl https://developers.google.com/static/search/apis/ipranges/user-triggered-fetchers.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# Google User-triggered fetchers (users)
# https://developers.google.com/search/docs/crawling-indexing/verifying-googlebot
curl https://developers.google.com/static/search/apis/ipranges/user-triggered-fetchers-google.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# OAI-SearchBot
# https://platform.openai.com/docs/bots
curl https://openai.com/searchbot.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# ChatGPT-User
# https://platform.openai.com/docs/bots
curl https://openai.com/chatgpt-user.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# GPTBot
# https://platform.openai.com/docs/bots
curl https://openai.com/gptbot.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# BingBot
curl https://www.bing.com/toolbox/bingbot.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# AppleBot
curl https://search.developer.apple.com/applebot.json |
 jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# Fastly
curl https://api.fastly.com/public-ip-list |
 jq -r '.ipv6_addresses[],.addresses[] | select( . != null )'

# AhrefsBot
# https://help.ahrefs.com/en/articles/78658-what-is-the-list-of-your-ip-ranges
curl https://api.ahrefs.com/v3/public/crawler-ips |
 jq -r '.ips[].ip_address | select( . != null )'

# FacebookBot
# https://developers.facebook.com/docs/sharing/webmasters/crawler/
whois -h whois.radb.net -- '-i origin AS32934' |
 awk '/^route/{print $2}'

# DuckDuckBot
# https://help.duckduckgo.com/duckduckgo-help-pages/results/duckduckbot/
curl https://raw.githubusercontent.com/duckduckgo/duckduckgo-help-pages/master/_docs/results/duckduckbot.md |
 awk '/- /{print $2}'

# Telegram
curl https://core.telegram.org/resources/cidr.txt

# UptimeRobot
# https://uptimerobot.com/help/locations/
curl https://uptimerobot.com/inc/files/ips/IPv4andIPv6.txt

# Pingdom
# https://documentation.solarwinds.com/en/success_center/pingdom/content/topics/pingdom-probe-servers-ip-addresses.htm
curl https://my.pingdom.com/probes/ipv4
curl https://my.pingdom.com/probes/ipv6

# Stripe Webhook
# https://stripe.com/docs/ips
curl https://stripe.com/files/ips/ips_webhooks.txt

# RSS API
# https://rssapi.net/faq
curl https://rssapi.net/ips.txt

# BetterUptime
# https://docs.betteruptime.com/frequently-asked-questions
curl https://betteruptime.com/ips.txt

# WebpagetestBot
# https://www.webpagetest.org/addresses.php
curl "https://www.webpagetest.org/addresses.php?f=json" |
 jq -r '.data[].addresses[] | select( . != null )'

# BunnyCDN
# https://support.bunny.net/hc/en-us/articles/115001131172-I-am-seeing-a-lot-of-502-and-504-errors
curl https://api.bunny.net/system/edgeserverlist/plain
curl https://api.bunny.net/system/edgeserverlist/ipv6 |
 jq -r '.[] | select( . != null )'

# Cloudflare
# https://www.cloudflare.com/ips/
curl https://www.cloudflare.com/ips-v4
curl https://www.cloudflare.com/ips-v6

# PerplexityBot
# https://docs.perplexity.ai/guides/bots
curl https://www.perplexity.ai/perplexitybot.json |
  jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'
curl https://www.perplexity.com/perplexity-user.json |
  jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# MojeekBot
# https://www.mojeek.com/bot.html
curl https://www.mojeek.com/mojeekbot.json |
  jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

# Qwantbot
# https://help.qwant.com/bot
curl https://help.qwant.com/wp-content/uploads/sites/2/2025/01/qwantbot.json |
  jq -r '.prefixes[].ipv6Prefix,.prefixes[].ipv4Prefix | select( . != null )'

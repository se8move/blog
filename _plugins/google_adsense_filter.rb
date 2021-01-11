module Jekyll
  module GoogleAdenseFilter
    def add_ad_code_before_first_h2(html)
      ad_code =
'
<script data-ad-client="ca-pub-7901302607189897" async
src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"><script>
'
     
      first_h2 = html.match(/<h2.*?>/)
      return html unless first_h2

      html.sub(/<h2.*?>/, ad_code + first_h2.to_s)
    end
  end
end

Liquid::Template.register_filter(Jekyll::GoogleAdsenseFilter)
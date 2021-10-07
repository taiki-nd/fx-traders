module ApplicationHelper

  def default_meta_tags
    {
      site: 'FX-Traders',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: '「自分の取引記録が最高の取引教材になるその時まで」。fxの取引の記録を残して、自身の取引精度を上げていきましょう！自身の手法を公開してフィードバックをもらいましょう！',
      keywords: 'fx,取引記録,投資',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('logo.png') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('trading_note.png'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@FX_Traders_',
        image: image_url('trading_note.png'),
        width: 100,
        height: 100
      }
    }
  end

end

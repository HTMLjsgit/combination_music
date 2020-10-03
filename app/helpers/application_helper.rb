module ApplicationHelper
	def default_meta_tags
		{
			site: 'Combination music',
			title: 'Combination music | 音楽を組み合わせてみよう',
			reverse: false,
			charset: 'utf-8',
			description: "Combination musicを使えば簡単に音楽や効果音を組み合わせることができます。\n音楽や効果音を組み合わせて、理想の音楽を実現しましょう。",
			keywords: "BGM",
			icon: [
				{ href: image_url('favicon.ico')},
				{ href: image_url('favicon.ico'),rel: "apple-icon",sizes: '180x180',type: 'image/jpg' }
			],
			og: {
				site_name: 'Combination music',
				title: "Conbination music | 音楽を組み合わせてみよう",
				description: "Combination musicを使えば簡単に音楽や効果音を組み合わせることができます。\n音楽や効果音を組み合わせて、理想の音楽を実現しましょう。",
				type: 'website',
				image: image_url('C.png'),
				locale: 'ja_JP',
			},
			twitter: {
				card: 'summary',
				site: 'Kuro_on_rails'
			}
		}

	end
end

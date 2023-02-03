module.exports = {
	extends: [
		'stylelint-config-wikimedia'
	],
	plugins: [
		'stylelint-order'
	],
	rules: {
		"unit-disallowed-list": null,
		'order/order': [ 'custom-properties', 'declarations' ],
		'order/properties-order': [
			'all',
			'content',
			'quotes',
			'appearance',
			'color-scheme',
			'background',
			'background-attachment',
			'background-blend-mode',
			'background-clip',
			'background-color',
			'background-image',
			'background-origin',
			'background-position',
			'background-position-x',
			'background-position-y',
			'background-repeat',
			'background-size',
			'color',
			'accent-color',
			'caret-color',
			'text-emphasis-color',
			'text-fill-color',
			'list-style',
			'list-style-image',
			'list-style-position',
			'list-style-type',
			'filter',
			'backdrop-filter',
			'opacity',
			'display',
			'clip',
			'visibility',
			'float',
			'clear',
			'isolate',
			'align-content',
			'align-items',
			'align-self',
			'flex',
			'flex-grow',
			'flex-shrink',
			'flex-basis',
			'flex-flow',
			'flex-direction',
			'flex-wrap',
			'justify-content',
			'aspect-ratio',
			'position',
			'top',
			'right',
			'bottom',
			'left',
			'z-index',
			'box-sizing',
			'min-width',
			'min-height',
			'width',
			'height',
			'max-width',
			'max-height',
			'margin',
			'margin-top',
			'margin-right',
			'margin-bottom',
			'margin-left',
			'margin-block',
			'margin-block-start',
			'margin-block-end',
			'margin-inline',
			'margin-inline-start',
			'margin-inline-end',
			'border',
			'border-top',
			'border-right',
			'border-bottom',
			'border-left',
			'border-block-start',
			'border-block-end',
			'border-inline-start',
			'border-inline-end',
			'border-width',
			'border-top-width',
			'border-right-width',
			'border-bottom-width',
			'border-left-width',
			'border-style',
			'border-color',
			'border-top-color',
			'border-right-color',
			'border-bottom-color',
			'border-left-color',
			'border-radius',
			'border-top-left-radius',
			'border-top-right-radius',
			'border-bottom-left-radius',
			'border-bottom-right-radius',
			'border-image',
			'border-image-outset',
			'border-image-repeat',
			'border-image-slice',
			'border-image-source',
			'border-image-width',
			'padding',
			'padding-top',
			'padding-right',
			'padding-bottom',
			'padding-left',
			'padding-block-start',
			'padding-block-end',
			'padding-inline-start',
			'padding-inline-end',
			'box-shadow',
			'outline',
			'outline-color',
			'outline-style',
			'outline-width',
			'outline-offset',
			'overflow',
			'overflow-x',
			'overflow-y',
			'direction',
			'writing-mode',
			'text-orientation',
			'font',
			'font-family',
			'font-feature-settings',
			'font-size',
			'font-style',
			'font-weight',
			'letter-spacing',
			'line-height',
			'text-align',
			'text-decoration',
			'text-decoration-color',
			'text-decoration-line',
			'text-decoration-style',
			'text-decoration-thickness',
			'text-indent',
			'text-overflow',
			'text-shadow',
			'text-transform',
			'hyphens',
			'vertical-align',
			'tab-size',
			'white-space',
			'word-spacing',
			'table-layout',
			'caption-side',
			'empty-cells',
			'border-collapse',
			'border-spacing',
			'transform',
			'transform-origin',
			'backface-visibility',
			'perspective',
			'perspective-origin',
			'scale',
			'animation',
			'animation-name',
			'animation-duration',
			'animation-timing-function',
			'animation-delay',
			'animation-iteration-count',
			'animation-direction',
			'animation-fill-mode',
			'animation-play-state',
			'transition',
			'transition-property',
			'transition-duration',
			'transition-timing-function',
			'transition-delay',
			'cursor'
		]
	}
};

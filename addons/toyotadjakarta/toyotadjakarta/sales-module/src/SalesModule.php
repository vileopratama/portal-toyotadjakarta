<?php namespace Toyotadjakarta\SalesModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class SalesModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-shopping-cart';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
	    'sales' => [
		    'buttons' => [
			    'create' => [
				    'text' => 'Create a model',
			    ]
		    ]
	    ],
	    'products' => [
		    'buttons' => [
			    'create' => [
				    'text' => 'Create a product',
			    ]
		    ]
	    ],
	    'testimonis' => [
		    'buttons' => [
			    'create' => [
				    'text' => 'Create a testimoni',
			    ]
		    ]
	    ],
	    'banners' => [
		    'buttons' => [
			    'create' => [
				    'text' => 'Create a banner',
			    ]
		    ]
	    ],
    ];
}

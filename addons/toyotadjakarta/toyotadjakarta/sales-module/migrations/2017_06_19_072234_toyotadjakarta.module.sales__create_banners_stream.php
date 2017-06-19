<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSalesCreateBannersStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'banners',
	    'title_column' => 'name',
	    'translatable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
	    'name' => [
		    'required' => true,
		    'translatable' => true,
	    ],
	    'slug' => [
		    'unique' => true,
		    'required' => true,
	    ],
	    'image' => [
		    'required' => false,
	    ],
	    'publish' => [
		    'required' => true,
	    ],
	    'summary' => [
		    'required' => false,
		    'translatable' => true,
	    ],
	    'website' => [
		    'required' => true,
		    'translatable' => false,
	    ],
	    'description' => [
		    'required' => false,
		    'translatable' => true,
	    ],
    ];

}

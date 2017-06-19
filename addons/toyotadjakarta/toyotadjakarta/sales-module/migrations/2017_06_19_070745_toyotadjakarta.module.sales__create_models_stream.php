<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSalesCreateModelsStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'models',
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
		    'required' => true,
	    ],
	    'publish' => [
		    'required' => true,
	    ],
	    'description' => [
		    'required' => false,
		    'translatable' => true,
	    ],
    ];

}

<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleContactsCreateContactsStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'contacts',
        'title_column' => 'name',
	    'translatable' => false,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'company' => [
		    'required' => true,
	    ],
        'publish' => [
		    'required' => true,
	    ],
        'division' => [
		    'required' => true,
	    ],
        'address' => [
            'required' => true,
        ],
        'phone' => [
            'required' => true,
        ],
        'fax' => [
            'required' => true,
        ],
        'company_email' => [
            'required' => true,
        ],
        'sales_name' => [
            'required' => true,
        ],
        'photo' => [
            'required' => true,
        ],
        'mobile01' => [
            'required' => true,
        ],
        'mobile02' => [
            'required' => true,
        ],
        'personal_email' => [
            'required' => true,
        ],
        'biodata' => [
            'required' => true,
        ],
        'note' => [
            'required' => true,
        ],
    ];

}

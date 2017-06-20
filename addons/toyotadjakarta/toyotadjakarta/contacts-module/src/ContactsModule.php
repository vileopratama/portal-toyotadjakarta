<?php namespace Toyotadjakarta\ContactsModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class ContactsModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-phone-square';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'contacts' => [
		    'buttons' => [
			    'create' => [
				    'text' => 'Create a new contact',
			    ]
		    ]
	    ],
    ];
}

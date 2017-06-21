<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleContactsCreateContactsFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
	    'name' => 'anomaly.field_type.text',
        'company' => 'anomaly.field_type.text',
        'publish' => [
		    "type"   => "anomaly.field_type.boolean",
		    "config" => [
			    "default_value" => true,
			    "mode"          => "radio",
		    ]
	    ],
        'division' => 'anomaly.field_type.text',
        'address' => 'anomaly.field_type.textarea',
        'phone' => 'anomaly.field_type.text',
        'fax' => 'anomaly.field_type.text',
        'company_email' => 'anomaly.field_type.email',
        'sales_name' => 'anomaly.field_type.text',
        'photo' => 'anomaly.field_type.file',
        'mobile01' => 'anomaly.field_type.text',
        'mobile02' => 'anomaly.field_type.text',
        'personal_email' => 'anomaly.field_type.email',
        'biodata' => 'anomaly.field_type.textarea',
        'note' => 'anomaly.field_type.textarea',
    ];

}

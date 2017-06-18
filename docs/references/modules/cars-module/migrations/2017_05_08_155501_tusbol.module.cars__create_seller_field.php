<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleCarsCreateSellerField extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
        'email' => 'anomaly.field_type.email',
        'birth_place' => 'anomaly.field_type.text',
        "birth_date" => [
            'type'   => "anomaly.field_type.datetime",
            'config' => [
                'mode' => "datetime",
            ]
        ],
        'biodata' => [
            "type"   => 'anomaly.field_type.wysiwyg',
            "config" => [
                "default_value" => null,
                'locked' => 0, // Used with seeded posts.
            ],
        ],
        'phone1' => 'anomaly.field_type.text',
        'phone2' => 'anomaly.field_type.text',
        'whatsapp' => 'anomaly.field_type.text',
        'bbm' => 'anomaly.field_type.text',
    ];

}

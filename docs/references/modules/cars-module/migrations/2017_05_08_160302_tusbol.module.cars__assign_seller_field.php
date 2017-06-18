<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleCarsAssignSellerField extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'sellers',
        'translatable' => true,
        'title_column' => 'name',
        'sortable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'name' => [
            'required' => true,
        ],
        'email' => [
            'required' => false,
        ],
        'birth_place' => [
            'required' => true,
        ],
        'birth_date' => [
            'required' => true,
        ],
        'summary' => 'anomaly.field_type.textarea',
        'biodata' => [
            'required' => true,
            'translatable' => true,
        ],
        'phone1' => [
            'required' => true,
        ],
        'phone2' => [
            'required' => false,
        ],
        'whatsapp' => [
            'required' => false,
        ],
        'bbm' => [
            'required' => false,
        ],
    ];

}

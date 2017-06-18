<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSlideshowsCreateSlideshowsFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
        'title' => 'anomaly.field_type.text',
        'slug' => [
            'type' => 'anomaly.field_type.slug',
            'config'=> [
                'type' => '-',
                'slugify' => 'title'
            ]
        ],
        'publish' => [
            "type"   => "anomaly.field_type.boolean",
            "config" => [
                "default_value" => true,
                "mode"          => "radio",
            ]
        ],
        'image' => 'anomaly.field_type.file',
        'summary' => 'anomaly.field_type.textarea',
        'description' => 'anomaly.field_type.wysiwyg',
    ];

}

<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleCarsCreateCarsFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
        'name' => 'anomaly.field_type.text',
        'summary' => 'anomaly.field_type.textarea',
        'description' => [
            "type"   => 'anomaly.field_type.wysiwyg',
            "config" => [
                "default_value" => null,
                'locked' => 0, // Used with seeded posts.
            ],
        ],
        'slug' => [
            'type' => 'anomaly.field_type.slug',
            'config' => [
                'type' => '-',
                'slugify' => 'name'
            ],


        ],
        'price' => 'anomaly.field_type.decimal',
        'image' => 'anomaly.field_type.file',
        'images' => 'anomaly.field_type.files',
        'models' => [
            'type' => 'anomaly.field_type.multiple',
            'config' => [
                'title_name' => 'name',
                'related' => \Tusbol\CarsModule\Model\ModelModel::class,
            ],
        ]
    ];

}

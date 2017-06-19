<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSalesCreateSalesFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
	    'name' => 'anomaly.field_type.text',
	    'slug' => [
		    'type' => 'anomaly.field_type.slug',
		    'config'=> [
			    'type' => '-',
			    'slugify' => 'name'
		    ]
	    ],
	    'email' => 'anomaly.field_type.email',
	    'website' => 'anomaly.field_type.text',
	    'models' => [
		    'type' => 'anomaly.field_type.multiple',
		    'config' => [
			    'title_name' => 'name',
			    'related' => \Toyotadjakarta\SalesModule\Model\ModelModel::class,
		    ],
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
	    'comment' => 'anomaly.field_type.textarea',
	    'description' => 'anomaly.field_type.wysiwyg',
	    'price' => 'anomaly.field_type.decimal',
	    'notify_follow_up' => [
		    "type"   => "anomaly.field_type.boolean",
		    "config" => [
			    "default_value" => true,
			    "mode"          => "radio",
		    ]
	    ],
	    'notify_post' => [
		    "type"   => "anomaly.field_type.boolean",
		    "config" => [
			    "default_value" => true,
			    "mode"          => "radio",
		    ]
	    ],
    ];

}

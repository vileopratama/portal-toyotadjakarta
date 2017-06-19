<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsWelcomesEntryModel extends EntryModel
{
	
	
	protected $searchable = false;
	
	protected $table = 'slideshows_welcomes';
	
	protected $titleName = 'title';
	
	protected $rules = [
		'title' => 'required',
		'slug' => 'required|unique:slideshows_welcomes,slug',
		'publish' => 'required',
		'description' => 'required',
	];
	
	protected $fields = [
		'title',
		'slug',
		'publish',
		'description',
	];
	
	protected $dates = ['created_at', 'updated_at'];
	
	protected $relationships = [];
	
	protected $translatedAttributes = ['title', 'description'];
	
	protected $translationForeignKey = 'entry_id';
	
	protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsWelcomesEntryTranslationsModel';
	
	protected $stream = [
		'id' => '27',
		'namespace' => 'slideshows',
		'slug' => 'welcomes',
		'prefix' => 'slideshows_',
		'title_column' => 'title',
		'order_by' => 'id',
		'locked' => '0',
		'hidden' => '0',
		'sortable' => '0',
		'searchable' => '0',
		'trashable' => '0',
		'translatable' => '1',
		'config' => 'a:0:{}',
		'assignments' => [
			[
				'id' => 139,
				'sort_order' => 133,
				'stream_id' => 27,
				'field_id' => 122,
				'config' => 'a:0:{}',
				'unique' => 0,
				'required' => 1,
				'translatable' => 1,
				'field' => [
					'id' => '122',
					'namespace' => 'slideshows',
					'slug' => 'title',
					'type' => 'anomaly.field_type.text',
					'config' => 'a:0:{}',
					'locked' => '1',
					'translations' => [
						[
							'id' => 122,
							'field_id' => 122,
							'locale' => 'en',
							'name' => 'toyotadjakarta.module.slideshows::field.title.name',
							'placeholder' => 'toyotadjakarta.module.slideshows::field.title.placeholder',
							'warning' => 'toyotadjakarta.module.slideshows::field.title.warning',
							'instructions' => 'toyotadjakarta.module.slideshows::field.title.instructions',
						],
					],
				],
				'translations' => [
					[
						'id' => 139,
						'assignment_id' => 139,
						'locale' => 'en',
						'label' => 'toyotadjakarta.module.slideshows::field.title.label.welcomes',
						'warning' => 'toyotadjakarta.module.slideshows::field.title.warning.welcomes',
						'placeholder' => 'toyotadjakarta.module.slideshows::field.title.placeholder.welcomes',
						'instructions' => 'toyotadjakarta.module.slideshows::field.title.instructions.welcomes',
					],
				],
			],
			[
				'id' => 140,
				'sort_order' => 134,
				'stream_id' => 27,
				'field_id' => 123,
				'config' => 'a:0:{}',
				'unique' => 1,
				'required' => 1,
				'translatable' => 0,
				'field' => [
					'id' => '123',
					'namespace' => 'slideshows',
					'slug' => 'slug',
					'type' => 'anomaly.field_type.slug',
					'config' => 'a:2:{s:4:"type";s:1:"-";s:7:"slugify";s:5:"title";}',
					'locked' => '1',
					'translations' => [
						[
							'id' => 123,
							'field_id' => 123,
							'locale' => 'en',
							'name' => 'toyotadjakarta.module.slideshows::field.slug.name',
							'placeholder' => 'toyotadjakarta.module.slideshows::field.slug.placeholder',
							'warning' => 'toyotadjakarta.module.slideshows::field.slug.warning',
							'instructions' => 'toyotadjakarta.module.slideshows::field.slug.instructions',
						],
					],
				],
				'translations' => [
					[
						'id' => 140,
						'assignment_id' => 140,
						'locale' => 'en',
						'label' => 'toyotadjakarta.module.slideshows::field.slug.label.welcomes',
						'warning' => 'toyotadjakarta.module.slideshows::field.slug.warning.welcomes',
						'placeholder' => 'toyotadjakarta.module.slideshows::field.slug.placeholder.welcomes',
						'instructions' => 'toyotadjakarta.module.slideshows::field.slug.instructions.welcomes',
					],
				],
			],
			[
				'id' => 141,
				'sort_order' => 135,
				'stream_id' => 27,
				'field_id' => 124,
				'config' => 'a:0:{}',
				'unique' => 0,
				'required' => 1,
				'translatable' => 0,
				'field' => [
					'id' => '124',
					'namespace' => 'slideshows',
					'slug' => 'publish',
					'type' => 'anomaly.field_type.boolean',
					'config' => 'a:2:{s:13:"default_value";b:1;s:4:"mode";s:5:"radio";}',
					'locked' => '1',
					'translations' => [
						[
							'id' => 124,
							'field_id' => 124,
							'locale' => 'en',
							'name' => 'toyotadjakarta.module.slideshows::field.publish.name',
							'placeholder' => 'toyotadjakarta.module.slideshows::field.publish.placeholder',
							'warning' => 'toyotadjakarta.module.slideshows::field.publish.warning',
							'instructions' => 'toyotadjakarta.module.slideshows::field.publish.instructions',
						],
					],
				],
				'translations' => [
					[
						'id' => 141,
						'assignment_id' => 141,
						'locale' => 'en',
						'label' => 'toyotadjakarta.module.slideshows::field.publish.label.welcomes',
						'warning' => 'toyotadjakarta.module.slideshows::field.publish.warning.welcomes',
						'placeholder' => 'toyotadjakarta.module.slideshows::field.publish.placeholder.welcomes',
						'instructions' => 'toyotadjakarta.module.slideshows::field.publish.instructions.welcomes',
					],
				],
			],
			[
				'id' => 142,
				'sort_order' => 136,
				'stream_id' => 27,
				'field_id' => 127,
				'config' => 'a:0:{}',
				'unique' => 0,
				'required' => 1,
				'translatable' => 1,
				'field' => [
					'id' => '127',
					'namespace' => 'slideshows',
					'slug' => 'description',
					'type' => 'anomaly.field_type.wysiwyg',
					'config' => 'a:0:{}',
					'locked' => '1',
					'translations' => [
						[
							'id' => 127,
							'field_id' => 127,
							'locale' => 'en',
							'name' => 'toyotadjakarta.module.slideshows::field.description.name',
							'placeholder' => 'toyotadjakarta.module.slideshows::field.description.placeholder',
							'warning' => 'toyotadjakarta.module.slideshows::field.description.warning',
							'instructions' => 'toyotadjakarta.module.slideshows::field.description.instructions',
						],
					],
				],
				'translations' => [
					[
						'id' => 142,
						'assignment_id' => 142,
						'locale' => 'en',
						'label' => 'toyotadjakarta.module.slideshows::field.description.label.welcomes',
						'warning' => 'toyotadjakarta.module.slideshows::field.description.warning.welcomes',
						'placeholder' => 'toyotadjakarta.module.slideshows::field.description.placeholder.welcomes',
						'instructions' => 'toyotadjakarta.module.slideshows::field.description.instructions.welcomes',
					],
				],
			],
		],
		'translations' => [
			[
				'id' => 27,
				'stream_id' => 27,
				'locale' => 'en',
				'name' => 'toyotadjakarta.module.slideshows::stream.welcomes.name',
				'description' => 'toyotadjakarta.module.slideshows::stream.welcomes.description',
			],
		],
	];
	
	
}

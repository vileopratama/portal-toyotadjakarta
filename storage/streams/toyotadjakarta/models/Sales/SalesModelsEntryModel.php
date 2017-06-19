<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SalesModelsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'sales_models';

    protected $titleName = 'name';

    protected $rules = [
'name' => 'required',
'slug' => 'required|unique:sales_models,slug',
'image' => 'required',
'publish' => 'required',
'description' => '',
];

    protected $fields = [
'name',
'slug',
'image',
'publish',
'description',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['name', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Sales\SalesModelsEntryTranslationsModel';

    protected $stream = [
'id' => '39',
'namespace' => 'sales',
'slug' => 'models',
'prefix' => 'sales_',
'title_column' => 'name',
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
'id' => 208,
'sort_order' => 143,
'stream_id' => 39,
'field_id' => 160,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '160',
'namespace' => 'sales',
'slug' => 'name',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 160,
'field_id' => 160,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.name.name',
'placeholder' => 'toyotadjakarta.module.sales::field.name.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.name.warning',
'instructions' => 'toyotadjakarta.module.sales::field.name.instructions',
],
],
],
'translations' => [
[
'id' => 208,
'assignment_id' => 208,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.name.label.models',
'warning' => 'toyotadjakarta.module.sales::field.name.warning.models',
'placeholder' => 'toyotadjakarta.module.sales::field.name.placeholder.models',
'instructions' => 'toyotadjakarta.module.sales::field.name.instructions.models',
],
],
],
[
'id' => 209,
'sort_order' => 144,
'stream_id' => 39,
'field_id' => 161,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '161',
'namespace' => 'sales',
'slug' => 'slug',
'type' => 'anomaly.field_type.slug',
'config' => 'a:2:{s:4:"type";s:1:"-";s:7:"slugify";s:4:"name";}',
'locked' => '1',
'translations' => [
[
'id' => 161,
'field_id' => 161,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.slug.name',
'placeholder' => 'toyotadjakarta.module.sales::field.slug.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.slug.warning',
'instructions' => 'toyotadjakarta.module.sales::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 209,
'assignment_id' => 209,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.slug.label.models',
'warning' => 'toyotadjakarta.module.sales::field.slug.warning.models',
'placeholder' => 'toyotadjakarta.module.sales::field.slug.placeholder.models',
'instructions' => 'toyotadjakarta.module.sales::field.slug.instructions.models',
],
],
],
[
'id' => 210,
'sort_order' => 145,
'stream_id' => 39,
'field_id' => 166,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '166',
'namespace' => 'sales',
'slug' => 'image',
'type' => 'anomaly.field_type.file',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 166,
'field_id' => 166,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.image.name',
'placeholder' => 'toyotadjakarta.module.sales::field.image.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.image.warning',
'instructions' => 'toyotadjakarta.module.sales::field.image.instructions',
],
],
],
'translations' => [
[
'id' => 210,
'assignment_id' => 210,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.image.label.models',
'warning' => 'toyotadjakarta.module.sales::field.image.warning.models',
'placeholder' => 'toyotadjakarta.module.sales::field.image.placeholder.models',
'instructions' => 'toyotadjakarta.module.sales::field.image.instructions.models',
],
],
],
[
'id' => 211,
'sort_order' => 146,
'stream_id' => 39,
'field_id' => 165,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '165',
'namespace' => 'sales',
'slug' => 'publish',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:2:{s:13:"default_value";b:1;s:4:"mode";s:5:"radio";}',
'locked' => '1',
'translations' => [
[
'id' => 165,
'field_id' => 165,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.publish.name',
'placeholder' => 'toyotadjakarta.module.sales::field.publish.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.publish.warning',
'instructions' => 'toyotadjakarta.module.sales::field.publish.instructions',
],
],
],
'translations' => [
[
'id' => 211,
'assignment_id' => 211,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.publish.label.models',
'warning' => 'toyotadjakarta.module.sales::field.publish.warning.models',
'placeholder' => 'toyotadjakarta.module.sales::field.publish.placeholder.models',
'instructions' => 'toyotadjakarta.module.sales::field.publish.instructions.models',
],
],
],
[
'id' => 212,
'sort_order' => 147,
'stream_id' => 39,
'field_id' => 169,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'translatable' => 1,
'field' => [
'id' => '169',
'namespace' => 'sales',
'slug' => 'description',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 169,
'field_id' => 169,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.description.name',
'placeholder' => 'toyotadjakarta.module.sales::field.description.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.description.warning',
'instructions' => 'toyotadjakarta.module.sales::field.description.instructions',
],
],
],
'translations' => [
[
'id' => 212,
'assignment_id' => 212,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.description.label.models',
'warning' => 'toyotadjakarta.module.sales::field.description.warning.models',
'placeholder' => 'toyotadjakarta.module.sales::field.description.placeholder.models',
'instructions' => 'toyotadjakarta.module.sales::field.description.instructions.models',
],
],
],
],
'translations' => [
[
'id' => 39,
'stream_id' => 39,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::stream.models.name',
'description' => 'toyotadjakarta.module.sales::stream.models.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

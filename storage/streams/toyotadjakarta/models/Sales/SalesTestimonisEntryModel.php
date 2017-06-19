<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SalesTestimonisEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'sales_testimonis';

    protected $titleName = 'name';

    protected $rules = [
'name' => 'required',
'slug' => 'required|unique:sales_testimonis,slug',
'image' => '',
'publish' => 'required',
'summary' => '',
'description' => '',
];

    protected $fields = [
'name',
'slug',
'image',
'publish',
'summary',
'description',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['name', 'summary', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Sales\SalesTestimonisEntryTranslationsModel';

    protected $stream = [
'id' => '41',
'namespace' => 'sales',
'slug' => 'testimonis',
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
'id' => 221,
'sort_order' => 156,
'stream_id' => 41,
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
'id' => 221,
'assignment_id' => 221,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.name.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.name.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.name.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.name.instructions.testimonis',
],
],
],
[
'id' => 222,
'sort_order' => 157,
'stream_id' => 41,
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
'id' => 222,
'assignment_id' => 222,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.slug.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.slug.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.slug.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.slug.instructions.testimonis',
],
],
],
[
'id' => 223,
'sort_order' => 158,
'stream_id' => 41,
'field_id' => 166,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
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
'id' => 223,
'assignment_id' => 223,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.image.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.image.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.image.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.image.instructions.testimonis',
],
],
],
[
'id' => 224,
'sort_order' => 159,
'stream_id' => 41,
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
'id' => 224,
'assignment_id' => 224,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.publish.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.publish.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.publish.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.publish.instructions.testimonis',
],
],
],
[
'id' => 225,
'sort_order' => 160,
'stream_id' => 41,
'field_id' => 167,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'translatable' => 1,
'field' => [
'id' => '167',
'namespace' => 'sales',
'slug' => 'summary',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 167,
'field_id' => 167,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.summary.name',
'placeholder' => 'toyotadjakarta.module.sales::field.summary.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.summary.warning',
'instructions' => 'toyotadjakarta.module.sales::field.summary.instructions',
],
],
],
'translations' => [
[
'id' => 225,
'assignment_id' => 225,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.summary.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.summary.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.summary.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.summary.instructions.testimonis',
],
],
],
[
'id' => 226,
'sort_order' => 161,
'stream_id' => 41,
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
'id' => 226,
'assignment_id' => 226,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.description.label.testimonis',
'warning' => 'toyotadjakarta.module.sales::field.description.warning.testimonis',
'placeholder' => 'toyotadjakarta.module.sales::field.description.placeholder.testimonis',
'instructions' => 'toyotadjakarta.module.sales::field.description.instructions.testimonis',
],
],
],
],
'translations' => [
[
'id' => 41,
'stream_id' => 41,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::stream.testimonis.name',
'description' => 'toyotadjakarta.module.sales::stream.testimonis.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

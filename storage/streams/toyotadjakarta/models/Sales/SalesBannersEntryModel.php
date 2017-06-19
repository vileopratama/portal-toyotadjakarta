<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SalesBannersEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'sales_banners';

    protected $titleName = 'name';

    protected $rules = [
'name' => 'required',
'slug' => 'required|unique:sales_banners,slug',
'image' => '',
'publish' => 'required',
'summary' => '',
'website' => 'required',
'description' => '',
];

    protected $fields = [
'name',
'slug',
'image',
'publish',
'summary',
'website',
'description',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['name', 'summary', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Sales\SalesBannersEntryTranslationsModel';

    protected $stream = [
'id' => '42',
'namespace' => 'sales',
'slug' => 'banners',
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
'id' => 227,
'sort_order' => 162,
'stream_id' => 42,
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
'id' => 227,
'assignment_id' => 227,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.name.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.name.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.name.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.name.instructions.banners',
],
],
],
[
'id' => 228,
'sort_order' => 163,
'stream_id' => 42,
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
'id' => 228,
'assignment_id' => 228,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.slug.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.slug.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.slug.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.slug.instructions.banners',
],
],
],
[
'id' => 229,
'sort_order' => 164,
'stream_id' => 42,
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
'id' => 229,
'assignment_id' => 229,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.image.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.image.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.image.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.image.instructions.banners',
],
],
],
[
'id' => 230,
'sort_order' => 165,
'stream_id' => 42,
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
'id' => 230,
'assignment_id' => 230,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.publish.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.publish.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.publish.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.publish.instructions.banners',
],
],
],
[
'id' => 231,
'sort_order' => 166,
'stream_id' => 42,
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
'id' => 231,
'assignment_id' => 231,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.summary.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.summary.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.summary.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.summary.instructions.banners',
],
],
],
[
'id' => 232,
'sort_order' => 167,
'stream_id' => 42,
'field_id' => 163,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '163',
'namespace' => 'sales',
'slug' => 'website',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 163,
'field_id' => 163,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.website.name',
'placeholder' => 'toyotadjakarta.module.sales::field.website.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.website.warning',
'instructions' => 'toyotadjakarta.module.sales::field.website.instructions',
],
],
],
'translations' => [
[
'id' => 232,
'assignment_id' => 232,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.website.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.website.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.website.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.website.instructions.banners',
],
],
],
[
'id' => 233,
'sort_order' => 168,
'stream_id' => 42,
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
'id' => 233,
'assignment_id' => 233,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.description.label.banners',
'warning' => 'toyotadjakarta.module.sales::field.description.warning.banners',
'placeholder' => 'toyotadjakarta.module.sales::field.description.placeholder.banners',
'instructions' => 'toyotadjakarta.module.sales::field.description.instructions.banners',
],
],
],
],
'translations' => [
[
'id' => 42,
'stream_id' => 42,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::stream.banners.name',
'description' => 'toyotadjakarta.module.sales::stream.banners.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

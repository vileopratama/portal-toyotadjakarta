<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SalesProductsEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'sales_products';

    protected $titleName = 'name';

    protected $rules = [
'name' => 'required',
'slug' => 'required|unique:sales_products,slug',
'models' => '',
'image' => '',
'publish' => 'required',
'summary' => '',
'description' => '',
'price' => '',
];

    protected $fields = [
'name',
'slug',
'models',
'image',
'publish',
'summary',
'description',
'price',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['models', 'image'];

    protected $translatedAttributes = ['name', 'summary', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Sales\SalesProductsEntryTranslationsModel';

    protected $stream = [
'id' => '40',
'namespace' => 'sales',
'slug' => 'products',
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
'id' => 213,
'sort_order' => 148,
'stream_id' => 40,
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
'id' => 213,
'assignment_id' => 213,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.name.label.products',
'warning' => 'toyotadjakarta.module.sales::field.name.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.name.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.name.instructions.products',
],
],
],
[
'id' => 214,
'sort_order' => 149,
'stream_id' => 40,
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
'id' => 214,
'assignment_id' => 214,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.slug.label.products',
'warning' => 'toyotadjakarta.module.sales::field.slug.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.slug.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.slug.instructions.products',
],
],
],
[
'id' => 215,
'sort_order' => 150,
'stream_id' => 40,
'field_id' => 164,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'translatable' => 0,
'field' => [
'id' => '164',
'namespace' => 'sales',
'slug' => 'models',
'type' => 'anomaly.field_type.multiple',
'config' => 'a:2:{s:10:"title_name";s:4:"name";s:7:"related";s:43:"Toyotadjakarta\SalesModule\Model\ModelModel";}',
'locked' => '1',
'translations' => [
[
'id' => 164,
'field_id' => 164,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.models.name',
'placeholder' => 'toyotadjakarta.module.sales::field.models.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.models.warning',
'instructions' => 'toyotadjakarta.module.sales::field.models.instructions',
],
],
],
'translations' => [
[
'id' => 215,
'assignment_id' => 215,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.models.label.products',
'warning' => 'toyotadjakarta.module.sales::field.models.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.models.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.models.instructions.products',
],
],
],
[
'id' => 216,
'sort_order' => 151,
'stream_id' => 40,
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
'id' => 216,
'assignment_id' => 216,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.image.label.products',
'warning' => 'toyotadjakarta.module.sales::field.image.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.image.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.image.instructions.products',
],
],
],
[
'id' => 217,
'sort_order' => 152,
'stream_id' => 40,
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
'id' => 217,
'assignment_id' => 217,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.publish.label.products',
'warning' => 'toyotadjakarta.module.sales::field.publish.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.publish.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.publish.instructions.products',
],
],
],
[
'id' => 218,
'sort_order' => 153,
'stream_id' => 40,
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
'id' => 218,
'assignment_id' => 218,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.summary.label.products',
'warning' => 'toyotadjakarta.module.sales::field.summary.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.summary.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.summary.instructions.products',
],
],
],
[
'id' => 219,
'sort_order' => 154,
'stream_id' => 40,
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
'id' => 219,
'assignment_id' => 219,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.description.label.products',
'warning' => 'toyotadjakarta.module.sales::field.description.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.description.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.description.instructions.products',
],
],
],
[
'id' => 220,
'sort_order' => 155,
'stream_id' => 40,
'field_id' => 170,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 0,
'translatable' => 0,
'field' => [
'id' => '170',
'namespace' => 'sales',
'slug' => 'price',
'type' => 'anomaly.field_type.decimal',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 170,
'field_id' => 170,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::field.price.name',
'placeholder' => 'toyotadjakarta.module.sales::field.price.placeholder',
'warning' => 'toyotadjakarta.module.sales::field.price.warning',
'instructions' => 'toyotadjakarta.module.sales::field.price.instructions',
],
],
],
'translations' => [
[
'id' => 220,
'assignment_id' => 220,
'locale' => 'en',
'label' => 'toyotadjakarta.module.sales::field.price.label.products',
'warning' => 'toyotadjakarta.module.sales::field.price.warning.products',
'placeholder' => 'toyotadjakarta.module.sales::field.price.placeholder.products',
'instructions' => 'toyotadjakarta.module.sales::field.price.instructions.products',
],
],
],
],
'translations' => [
[
'id' => 40,
'stream_id' => 40,
'locale' => 'en',
'name' => 'toyotadjakarta.module.sales::stream.products.name',
'description' => 'toyotadjakarta.module.sales::stream.products.description',
],
],
];

    
public function models()
{

return $this->getFieldType('models')->getRelation();
}

public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

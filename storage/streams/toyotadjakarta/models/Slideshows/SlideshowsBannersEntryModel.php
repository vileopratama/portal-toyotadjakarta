<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsBannersEntryModel extends EntryModel
{

    

    protected $searchable = false;

    protected $table = 'slideshows_banners';

    protected $titleName = 'title';

    protected $rules = [
'title' => 'required',
'slug' => 'required|unique:slideshows_banners,slug',
'image' => 'required',
'publish' => 'required',
'summary' => 'required',
'description' => 'required',
];

    protected $fields = [
'title',
'slug',
'image',
'publish',
'summary',
'description',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['title', 'summary', 'description'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsBannersEntryTranslationsModel';

    protected $stream = [
'id' => '26',
'namespace' => 'slideshows',
'slug' => 'banners',
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
'id' => 133,
'sort_order' => 127,
'stream_id' => 26,
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
'id' => 133,
'assignment_id' => 133,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.title.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.title.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.title.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.title.instructions.banners',
],
],
],
[
'id' => 134,
'sort_order' => 128,
'stream_id' => 26,
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
'id' => 134,
'assignment_id' => 134,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.slug.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.slug.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.slug.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.slug.instructions.banners',
],
],
],
[
'id' => 135,
'sort_order' => 129,
'stream_id' => 26,
'field_id' => 125,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '125',
'namespace' => 'slideshows',
'slug' => 'image',
'type' => 'anomaly.field_type.file',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 125,
'field_id' => 125,
'locale' => 'en',
'name' => 'toyotadjakarta.module.slideshows::field.image.name',
'placeholder' => 'toyotadjakarta.module.slideshows::field.image.placeholder',
'warning' => 'toyotadjakarta.module.slideshows::field.image.warning',
'instructions' => 'toyotadjakarta.module.slideshows::field.image.instructions',
],
],
],
'translations' => [
[
'id' => 135,
'assignment_id' => 135,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.image.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.image.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.image.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.image.instructions.banners',
],
],
],
[
'id' => 136,
'sort_order' => 130,
'stream_id' => 26,
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
'id' => 136,
'assignment_id' => 136,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.publish.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.publish.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.publish.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.publish.instructions.banners',
],
],
],
[
'id' => 137,
'sort_order' => 131,
'stream_id' => 26,
'field_id' => 126,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '126',
'namespace' => 'slideshows',
'slug' => 'summary',
'type' => 'anomaly.field_type.textarea',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 126,
'field_id' => 126,
'locale' => 'en',
'name' => 'toyotadjakarta.module.slideshows::field.summary.name',
'placeholder' => 'toyotadjakarta.module.slideshows::field.summary.placeholder',
'warning' => 'toyotadjakarta.module.slideshows::field.summary.warning',
'instructions' => 'toyotadjakarta.module.slideshows::field.summary.instructions',
],
],
],
'translations' => [
[
'id' => 137,
'assignment_id' => 137,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.summary.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.summary.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.summary.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.summary.instructions.banners',
],
],
],
[
'id' => 138,
'sort_order' => 132,
'stream_id' => 26,
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
'id' => 138,
'assignment_id' => 138,
'locale' => 'en',
'label' => 'toyotadjakarta.module.slideshows::field.description.label.banners',
'warning' => 'toyotadjakarta.module.slideshows::field.description.warning.banners',
'placeholder' => 'toyotadjakarta.module.slideshows::field.description.placeholder.banners',
'instructions' => 'toyotadjakarta.module.slideshows::field.description.instructions.banners',
],
],
],
],
'translations' => [
[
'id' => 26,
'stream_id' => 26,
'locale' => 'en',
'name' => 'toyotadjakarta.module.slideshows::stream.banners.name',
'description' => 'toyotadjakarta.module.slideshows::stream.banners.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

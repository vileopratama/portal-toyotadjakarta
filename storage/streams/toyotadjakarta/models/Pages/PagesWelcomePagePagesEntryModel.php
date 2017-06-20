<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesWelcomePagePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_welcome_page_pages';

    protected $titleName = 'id';

    protected $rules = [
'content' => 'required',
'image' => '',
];

    protected $fields = [
'content',
'image',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['content'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesWelcomePagePagesEntryTranslationsModel';

    protected $stream = [
'id' => '44',
'namespace' => 'pages',
'slug' => 'welcome_page_pages',
'prefix' => 'pages_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '1',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 234,
'sort_order' => 169,
'stream_id' => 44,
'field_id' => 41,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '41',
'namespace' => 'pages',
'slug' => 'content',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:0:{}',
'locked' => '0',
'translations' => [
[
'id' => 41,
'field_id' => 41,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.content.name',
'placeholder' => 'anomaly.module.pages::field.content.placeholder',
'warning' => 'anomaly.module.pages::field.content.warning',
'instructions' => 'anomaly.module.pages::field.content.instructions',
],
],
],
'translations' => [
[
'id' => 234,
'assignment_id' => 234,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 235,
'assignment_id' => 234,
'locale' => 'id',
'label' => 'Content',
'warning' => 'Please Input Content',
'placeholder' => 'Content',
'instructions' => 'Please Input Content',
],
],
],
[
'id' => 235,
'sort_order' => 170,
'stream_id' => 44,
'field_id' => 173,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'translatable' => 0,
'field' => [
'id' => '173',
'namespace' => 'pages',
'slug' => 'image',
'type' => 'anomaly.field_type.file',
'config' => 'a:3:{s:7:"folders";a:2:{i:0;s:1:"1";i:1;s:1:"5";}s:3:"max";s:3:"2.0";s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 173,
'field_id' => 173,
'locale' => 'en',
'name' => 'Image',
'placeholder' => 'Image',
'warning' => 'Please Upload a Image',
'instructions' => 'Please Upload a Image',
],
[
'id' => 174,
'field_id' => 173,
'locale' => 'id',
'name' => 'Image',
'placeholder' => 'Image',
'warning' => 'Please Upload a Image',
'instructions' => 'Please Upload a Image',
],
],
],
'translations' => [
[
'id' => 236,
'assignment_id' => 235,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 237,
'assignment_id' => 235,
'locale' => 'id',
'label' => 'Image',
'warning' => 'Please upload a image with greater than 2mb',
'placeholder' => 'Image',
'instructions' => 'Please select a image',
],
],
],
],
'translations' => [
[
'id' => 44,
'stream_id' => 44,
'locale' => 'en',
'name' => 'Welcome Page',
'description' => 'Welcome Page',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

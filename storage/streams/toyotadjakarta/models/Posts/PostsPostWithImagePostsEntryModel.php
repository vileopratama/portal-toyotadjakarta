<?php namespace Anomaly\Streams\Platform\Model\Posts;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PostsPostWithImagePostsEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'posts_post_with_image_posts';

    protected $titleName = 'id';

    protected $rules = [
'image' => '',
'content' => 'required',
];

    protected $fields = [
'image',
'content',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['content'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Posts\PostsPostWithImagePostsEntryTranslationsModel';

    protected $stream = [
'id' => '45',
'namespace' => 'posts',
'slug' => 'post_with_image_posts',
'prefix' => 'posts_',
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
'id' => 236,
'sort_order' => 171,
'stream_id' => 45,
'field_id' => 174,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'translatable' => 0,
'field' => [
'id' => '174',
'namespace' => 'posts',
'slug' => 'image',
'type' => 'anomaly.field_type.file',
'config' => 'a:3:{s:7:"folders";a:1:{i:0;s:1:"1";}s:3:"max";s:3:"3.0";s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 175,
'field_id' => 174,
'locale' => 'en',
'name' => '',
'placeholder' => '',
'warning' => '',
'instructions' => '',
],
[
'id' => 176,
'field_id' => 174,
'locale' => 'id',
'name' => 'Image',
'placeholder' => 'Please upload a image',
'warning' => 'Please upload a image',
'instructions' => 'Please upload a image',
],
],
],
'translations' => [
[
'id' => 238,
'assignment_id' => 236,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 239,
'assignment_id' => 236,
'locale' => 'id',
'label' => 'Main Image',
'warning' => 'Please upload a image',
'placeholder' => 'Please upload a image',
'instructions' => 'Please upload a image',
],
],
],
[
'id' => 237,
'sort_order' => 172,
'stream_id' => 45,
'field_id' => 63,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '63',
'namespace' => 'posts',
'slug' => 'content',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:0:{}',
'locked' => '0',
'translations' => [
[
'id' => 63,
'field_id' => 63,
'locale' => 'en',
'name' => 'anomaly.module.posts::field.content.name',
'placeholder' => 'anomaly.module.posts::field.content.placeholder',
'warning' => 'anomaly.module.posts::field.content.warning',
'instructions' => 'anomaly.module.posts::field.content.instructions',
],
],
],
'translations' => [
[
'id' => 240,
'assignment_id' => 237,
'locale' => 'en',
'label' => '',
'warning' => '',
'placeholder' => '',
'instructions' => '',
],
[
'id' => 241,
'assignment_id' => 237,
'locale' => 'id',
'label' => 'Content',
'warning' => 'Please fill a content',
'placeholder' => 'Content',
'instructions' => 'Please fill a content',
],
],
],
],
'translations' => [
[
'id' => 45,
'stream_id' => 45,
'locale' => 'en',
'name' => 'Post With Image',
'description' => '',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

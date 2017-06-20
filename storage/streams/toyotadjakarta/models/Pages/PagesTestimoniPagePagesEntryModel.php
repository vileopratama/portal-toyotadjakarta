<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesTestimoniPagePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_testimoni_page_pages';

    protected $titleName = 'id';

    protected $rules = [
];

    protected $fields = [
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesTestimoniPagePagesEntryTranslationsModel';

    protected $stream = [
'id' => '48',
'namespace' => 'pages',
'slug' => 'testimoni_page_pages',
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
],
'translations' => [
[
'id' => 48,
'stream_id' => 48,
'locale' => 'en',
'name' => 'Testimoni Page',
'description' => 'Testimoni Page Site',
],
],
];

    
}

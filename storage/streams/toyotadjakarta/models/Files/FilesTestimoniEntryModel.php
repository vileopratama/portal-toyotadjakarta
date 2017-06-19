<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesTestimoniEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'files_testimoni';

    protected $titleName = '';

    protected $rules = [
];

    protected $fields = [
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesTestimoniEntryTranslationsModel';

    protected $stream = [
'slug' => 'testimoni',
'namespace' => 'files',
'translatable' => '1',
'trashable' => '1',
'locked' => '',
'config' => 'a:0:{}',
'prefix' => 'files_',
'id' => '43',
'assignments' => [
],
'translations' => [
[
'id' => 43,
'stream_id' => 43,
'locale' => 'en',
'name' => 'Testimoni',
'description' => '',
],
],
];

    
}

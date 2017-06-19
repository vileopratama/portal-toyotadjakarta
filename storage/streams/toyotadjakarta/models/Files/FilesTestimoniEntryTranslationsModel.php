<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class FilesTestimoniEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'files_testimoni_translations';
}

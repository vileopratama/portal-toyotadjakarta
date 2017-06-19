<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class SlideshowsWelcomesEntryTranslationsModel extends EntryTranslationsModel
{
	
	protected $cacheMinutes = 99999;
	
	protected $table = 'slideshows_welcomes_translations';
}

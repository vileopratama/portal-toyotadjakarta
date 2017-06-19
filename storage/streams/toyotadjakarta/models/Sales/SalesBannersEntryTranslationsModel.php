<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class SalesBannersEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'sales_banners_translations';
}

<?php namespace Anomaly\Streams\Platform\Model\Sales;

use Anomaly\Streams\Platform\Entry\EntryTranslationsModel;

class SalesProductsEntryTranslationsModel extends EntryTranslationsModel
{

    protected $cacheMinutes = 99999;

    protected $table = 'sales_products_translations';
}

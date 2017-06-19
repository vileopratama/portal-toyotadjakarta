<?php namespace Toyotadjakarta\SalesModule\Product;

use Toyotadjakarta\SalesModule\Product\Contract\ProductInterface;
use Anomaly\Streams\Platform\Model\Sales\SalesProductsEntryModel;
use Toyotadjakarta\SalesModule\Model\ModelModel;

class ProductModel extends SalesProductsEntryModel implements ProductInterface
{
	public function models() {
		return $this->belongsToMany(ModelModel::class,'sales_products_models','entry_id','related_id');
	}
}

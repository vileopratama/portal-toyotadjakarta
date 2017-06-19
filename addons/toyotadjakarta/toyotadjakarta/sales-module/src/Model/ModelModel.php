<?php namespace Toyotadjakarta\SalesModule\Model;

use Toyotadjakarta\SalesModule\Model\Contract\ModelInterface;
use Anomaly\Streams\Platform\Model\Sales\SalesModelsEntryModel;
use Toyotadjakarta\SalesModule\Product\ProductModel;

class ModelModel extends SalesModelsEntryModel implements ModelInterface
{
	public function cars() {
		return $this->belongsToMany(ProductModel::class,'sales_products_models','entry_id','related_id');
	}
}

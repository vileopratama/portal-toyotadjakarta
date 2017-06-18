<?php namespace Tusbol\CarsModule\Http\Controller\Admin;

use Tusbol\CarsModule\Seller\Form\SellerFormBuilder;
use Tusbol\CarsModule\Seller\Table\SellerTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class SellersController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param SellerTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(SellerTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param SellerFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(SellerFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param SellerFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(SellerFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}

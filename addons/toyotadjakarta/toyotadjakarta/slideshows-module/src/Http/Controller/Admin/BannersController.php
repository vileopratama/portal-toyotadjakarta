<?php namespace Toyotadjakarta\SlideshowsModule\Http\Controller\Admin;

use Toyotadjakarta\SlideshowsModule\Banner\Form\BannerFormBuilder;
use Toyotadjakarta\SlideshowsModule\Banner\Table\BannerTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class BannersController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param BannerTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(BannerTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param BannerFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(BannerFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param BannerFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(BannerFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}

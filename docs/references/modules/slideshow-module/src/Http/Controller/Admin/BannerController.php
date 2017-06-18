<?php namespace Tusbol\SlideshowModule\Http\Controller\Admin;

use Tusbol\SlideshowModule\Banner\Form\BannerFormBuilder;
use Tusbol\SlideshowModule\Banner\Table\BannerTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class BannerController extends AdminController
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

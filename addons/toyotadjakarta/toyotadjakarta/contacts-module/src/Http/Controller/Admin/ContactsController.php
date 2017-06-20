<?php namespace Toyotadjakarta\ContactsModule\Http\Controller\Admin;

use Toyotadjakarta\ContactsModule\Contact\Form\ContactFormBuilder;
use Toyotadjakarta\ContactsModule\Contact\Table\ContactTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class ContactsController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param ContactTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(ContactTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param ContactFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(ContactFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param ContactFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(ContactFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}

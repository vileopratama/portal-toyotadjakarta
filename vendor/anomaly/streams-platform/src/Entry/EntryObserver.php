<?php namespace Anomaly\Streams\Platform\Entry;

use Anomaly\Streams\Platform\Entry\Command\DeleteEntryTranslations;
use Anomaly\Streams\Platform\Entry\Command\SetMetaInformation;
use Anomaly\Streams\Platform\Entry\Contract\EntryInterface;
use Anomaly\Streams\Platform\Entry\Event\EntryWasCreated;
use Anomaly\Streams\Platform\Entry\Event\EntryWasDeleted;
use Anomaly\Streams\Platform\Entry\Event\EntryWasRestored;
use Anomaly\Streams\Platform\Entry\Event\EntryWasSaved;
use Anomaly\Streams\Platform\Entry\Event\EntryWasUpdated;
use Anomaly\Streams\Platform\Model\Command\CascadeDelete;
use Anomaly\Streams\Platform\Model\Command\CascadeRestore;
use Anomaly\Streams\Platform\Model\EloquentModel;
use Anomaly\Streams\Platform\Model\Event\ModelsWereDeleted;
use Anomaly\Streams\Platform\Model\Event\ModelsWereUpdated;
use Anomaly\Streams\Platform\Support\Observer;

/**
 * Class EntryObserver
 *
 * @link    http://pyrocms.com/
 * @author  PyroCMS, Inc. <support@pyrocms.com>
 * @author  Ryan Thompson <ryan@pyrocms.com>
 *
 */
class EntryObserver extends Observer
{

    /**
     * Run before a record is created.
     *
     * @param EntryInterface $entry
     */
    public function creating(EntryInterface $entry)
    {
        $entry->fireFieldTypeEvents('entry_creating');
    }

    /**
     * Run after a record is created.
     *
     * @param EntryInterface $entry
     */
    public function created(EntryInterface $entry)
    {
        $entry->fireFieldTypeEvents('entry_created');

        $this->events->fire(new EntryWasCreated($entry));
    }

    /**
     * Run before a record is updated.
     *
     * @param EntryInterface $entry
     */
    public function updating(EntryInterface $entry)
    {
        //
    }

    /**
     * Run after a record is updated.
     *
     * @param EntryInterface $entry
     */
    public function updated(EntryInterface $entry)
    {
        $entry->fireFieldTypeEvents('entry_updated');

        $this->events->fire(new EntryWasUpdated($entry));
    }

    /**
     * Run after multiple entries have been updated.
     *
     * @param EntryInterface $entry
     */
    public function updatedMultiple(EntryInterface $entry)
    {
        $entry->flushCache();

        $this->events->fire(new ModelsWereUpdated($entry));
    }

    /**
     * Before saving an entry touch the
     * meta information.
     *
     * @param  EntryInterface $entry
     */
    public function saving(EntryInterface $entry)
    {
        //$entry->fireFieldTypeEvents('entry_saving');

        $this->commands->dispatch(new SetMetaInformation($entry));
    }

    /**
     * Run after saving a record.
     *
     * @param EntryInterface $entry
     */
    public function saved(EntryInterface $entry)
    {
        $entry->flushCache();
        $entry->fireFieldTypeEvents('entry_saved');

        $this->events->fire(new EntryWasSaved($entry));
    }

    /**
     * Run before a record is deleted.
     *
     * @param  EntryInterface|EloquentModel $entry
     */
    public function deleting(EntryInterface $entry)
    {
        $this->dispatch(new CascadeDelete($entry));
    }

    /**
     * Run after a record has been deleted.
     *
     * @param EntryInterface $entry
     */
    public function deleted(EntryInterface $entry)
    {
        $entry->flushCache();
        $entry->fireFieldTypeEvents('entry_deleted');

        $this->commands->dispatch(new DeleteEntryTranslations($entry));

        $this->events->fire(new EntryWasDeleted($entry));
    }

    /**
     * Run after entries records have been deleted.
     *
     * @param EntryInterface $entry
     */
    public function deletedMultiple(EntryInterface $entry)
    {
        $entry->flushCache();

        $this->events->fire(new ModelsWereDeleted($entry));
    }

    /**
     * Fired just before restoring.
     *
     * @param EntryInterface|EloquentModel $entry
     */
    public function restoring(EntryInterface $entry)
    {
        //
    }

    /**
     * Run after a record has been restored.
     *
     * @param EntryInterface|EloquentModel $entry
     */
    public function restored(EntryInterface $entry)
    {
        $entry->flushCache();
        $entry->fireFieldTypeEvents('entry_restored');

        $this->dispatch(new CascadeRestore($entry));

        $this->events->fire(new EntryWasRestored($entry));
    }
}

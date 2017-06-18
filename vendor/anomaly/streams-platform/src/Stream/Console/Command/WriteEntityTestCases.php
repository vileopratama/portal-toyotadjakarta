<?php namespace Anomaly\Streams\Platform\Stream\Console\Command;

use Anomaly\Streams\Platform\Addon\Addon;
use Anomaly\Streams\Platform\Support\Parser;
use Illuminate\Filesystem\Filesystem;
use Symfony\Component\Finder\SplFileInfo;

/**
 * Class WriteEntityTestCases
 *
 * @link   http://pyrocms.com/
 * @author PyroCMS, Inc. <support@pyrocms.com>
 * @author Ryan Thompson <ryan@pyrocms.com>
 */
class WriteEntityTestCases
{

    /**
     * The entity slug.
     *
     * @var string
     */
    private $slug;

    /**
     * The addon instance.
     *
     * @var Addon
     */
    private $addon;

    /**
     * The entity stream namespace.
     *
     * @var string
     */
    private $namespace;


    /**
     * Create a new WriteEntityTestCases instance.
     *
     * @param Addon $addon
     * @param       $slug
     * @param       $namespace
     */
    public function __construct(Addon $addon, $slug, $namespace)
    {
        $this->slug      = $slug;
        $this->addon     = $addon;
        $this->namespace = $namespace;
    }

    /**
     * Handle the command.
     *
     * @param Parser     $parser
     * @param Filesystem $filesystem
     */
    public function handle(Parser $parser, Filesystem $filesystem)
    {
        $suffix = ucfirst(camel_case($this->slug));
        $entity = str_singular($suffix);

        $addon     = ucfirst(camel_case($this->addon->getSlug() . '_' . $this->addon->getType()));
        $base      = $this->addon->getTransformedClass("Test\\{$addon}TestCase");
        $namespace = $this->addon->getTransformedClass("Test\\Unit\\{$entity}");
        $extends   = "{$addon}TestCase";

        $template = $filesystem->get(
            base_path("vendor/anomaly/streams-platform/resources/stubs/entity/test.stub")
        );

        /* @var SplFileInfo $file */
        foreach ($filesystem->allFiles($this->addon->getPath("src/{$entity}")) as $file) {

            // Skip interfaces.
            if (str_contains($file->getFilename(), 'Interface')) {
                continue;
            }

            $prefix   = str_replace($this->addon->getPath('src/'), '', $file->getPath());
            $basename = basename($file->getRealPath(), '.php');
            $class    = "{$basename}Test";

            $path = $this->addon->getPath("tests/Unit/{$prefix}/{$basename}Test.php");

            $filesystem->makeDirectory(dirname($path), 0755, true, true);

            $filesystem->put($path, $parser->parse($template, compact('class', 'namespace', 'base', 'extends')));
        }
    }
}

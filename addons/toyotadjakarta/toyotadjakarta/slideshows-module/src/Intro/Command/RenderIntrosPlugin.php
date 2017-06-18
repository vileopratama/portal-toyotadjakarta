<?php namespace Toyotadjakarta\SlideshowsModule\Intro\Command;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Anomaly\SettingsModule\Setting\Contract\SettingRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Config\Repository;

class RenderIntrosPlugin
{
    use DispatchesJobs;

    public function __construct()
    {

    }

    public function handle(SettingRepositoryInterface $settings, Request $request, Repository $config) {
        return view("toyotadjakarta.module.slideshows::plugins.intros");
    }


}
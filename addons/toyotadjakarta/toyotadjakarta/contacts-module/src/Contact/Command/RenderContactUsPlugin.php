<?php namespace Toyotadjakarta\SalesModule\Testimoni\Command;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Anomaly\SettingsModule\Setting\Contract\SettingRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Config\Repository;

class RenderContactUsPlugin
{
    use DispatchesJobs;

    public function __construct()
    {

    }

    public function handle(SettingRepositoryInterface $settings, Request $request, Repository $config) {
        return view("toyotadjakarta.module.contacts::plugins.contact-us");
    }


}
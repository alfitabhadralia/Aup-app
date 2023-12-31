<?php

namespace Database\Seeders;

use App\Models\Kegiatan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Kegiatan::factory()->count(40)->create();
        // \App\Models\User::factory(10)->create();
        // \App\Models\User::factory(10)->create();
    }
}

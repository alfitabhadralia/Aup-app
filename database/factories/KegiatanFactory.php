<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class KegiatanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'judul' => $this->faker->sentence(),
            'penulis' => 'admin',
            'kategori' => 'kegiatan',
            'deskripsi' => $this->faker->paragraph(),
            'headline' => $this->faker->numberBetween(0, 1),
            'gambar' => $this->faker->image(),
            'created_at'=> now()
        ];
    }

}

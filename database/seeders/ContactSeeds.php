<?php

namespace Database\Seeders;
use App\Models\Contact;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ContactSeeds extends Seeder
{

    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        for ($i=0; $i < 100; $i++) {
            Contact::create([
                'name' =>fake()->name('male'),
                'email' => fake()->email(),
                'phone' => fake()->phoneNumber('+880##########'),
                'address' => fake()->address('6'),
            ]);
        }
    }
}

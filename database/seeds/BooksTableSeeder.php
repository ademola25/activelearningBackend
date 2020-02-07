<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Book');
        
        for($i=0; $i<=40; $i++) {
            DB::table('books')->insert([
                    'title' => $faker->name,
                    'image_url' => $faker->imageUrl($width = 640, $height = 480),
                    'published_date' => NOW(),
                    'purchased' => $faker->boolean($chanceOfGettingTrue = 50),
                    'special_offer' => $faker->boolean,
                    'created_at' => NOW(),
                    'updated_at' => NOW(),
                ]);
        }
    }
}

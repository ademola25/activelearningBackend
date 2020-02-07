<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'user1',
            'email' => 'user@activelearning.ro',
            'phone' => '0806067222',
            'username' => 'users',
            'last_name' => 'Seks',
            'password' => Hash::make('password'),
            'created_at' => NOW(),
            'updated_at' => NOW(),
        ]);
        
        $faker = Faker::create('App\User');
        
        for($i=0; $i<=20; $i++) {
            DB::table('users')->insert([
                    'name' => $faker->name,
                    'last_name' => $faker->name,
                    'username' => $faker->unique()->username,
                    'phone' => $faker->phoneNumber,
                    'email' => $faker->unique()->email,
                    'password' => Hash::make('password'),
                    'created_at' => NOW(),
                    'updated_at' => NOW(),
                ]);
        }
    }
}

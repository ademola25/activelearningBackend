<?php

use Illuminate\Database\Seeder;

class UserRolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('role_user')->insert([
            'role' => 'staff',
        ]);

        DB::table('role_user')->insert([
            'role' => 'user',
        ]);
    }
}

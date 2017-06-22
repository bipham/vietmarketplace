<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->truncate();
        App\User::create([
        	'username' => 'nobikun1412',
        	'email' => 'nobikun1412@gmail.com',
        	'password' => bcrypt(123456),
        	'fullname' => 'Pham Tuan Anh',
        	'address' => 'Ho Chi Minh',
        	'phone' => '01223530707'
        ]);
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Faker\Factory as Faker;
use App\Models\Employee;


class EmployeeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create(); 
        for ($i = 0; $i < 20; $i++) { 
            Employee::create([
                'name' => $faker->name,
                'email' => $faker->email,
                'position' => $faker->jobTitle,
            ]);
    }
}
}

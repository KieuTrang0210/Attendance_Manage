<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Employee;
use App\Models\LeaveRequest;
use Faker\Factory as Faker;

class LeaveRequestTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        $employees = Employee::all();

        for ($i = 0; $i < 20; $i++) {
            $employee = $employees->random();

            LeaveRequest::create([
                'employee_id' => $employee->id,
                'start_date' => $faker->date,
                'end_date' => $faker->date,
                'status' => $faker->randomElement(['pending', 'approved', 'rejected']),
            ]);

    }
}
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Employee;
use App\Models\Attendance;

use Faker\Factory as Faker;


class AttendanceTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        $employees = Employee::all();

        for ($i = 0; $i < 30; $i++) {
            $employee = $employees->random();
            Attendance::create([
                'employee_id' => $employee->id,
                'date' => $faker->date,
                'check_in_time' => $faker->time,
                'check_out_time' => $faker->time,
            ]);

    }
}
}

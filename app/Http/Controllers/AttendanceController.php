<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Attendance;
use App\Models\Employee;
use Illuminate\Support\Facades\Validator;


class AttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $attendances = Attendance::orderBy('id', 'desc')->get();
        return view('attendances.index', compact('attendances'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $employees = Employee::all();
        return view('attendances.create', compact('employees'));

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'employee_id' => 'required',
            'date' => 'required|date',
            'check_in_time' => 'required',
            'check_out_time' => 'required|after:check_in_time',
        ]);

        if ($validator->fails()) {
            return redirect()->route('attendances.create')->with('error', 'Invalid input data!');
        }

        $attendance = Attendance::create($data);
        return redirect()->route('attendances.index')->with('success', 'Attendance created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $attendance = Attendance::where('id', $id)->first();
        $employees = Employee::all();
        return view('attendances.edit', compact('attendance', 'employees'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->all();

       $validator = Validator::make($data, [
            'employee_id' => 'required',
            'date' => 'required|date',
            'check_in_time' => 'required',
            'check_out_time' => 'required|after:check_in_time',
        ]);

        if ($validator->fails()) {
            return redirect()->route('attendances.edit')->with('error', 'Invalid input data!');
        }

        $attendance = Attendance::where('id', $id)->first();

        $attendance->update($data);
            return redirect()->route('attendances.index')->with('success', 'Attendance updated successfully!');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $attendance = Attendance::where('id', $id)->first();

        $attendance->delete();
        return redirect()->route('attendances.index')->with('success', 'Attendance deleted successfully');

    }
}

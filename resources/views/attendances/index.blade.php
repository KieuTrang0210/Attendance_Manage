@extends('layouts.base')

@section('title', 'Attendance Management')

@section('main')
    <div class="container">
        @if(session('success'))
            <div class="toast align-items-center text-white bg-success border-0 mx-auto mt-3" role="alert" aria-live="assertive" aria-atomic="true" id="myToast">
                <div class="d-flex">
                    <div class="toast-body">
                        {{ session('success') }}
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        @endif

 
        <div class="d-flex align-items-center">
            <h3 class="text-center text-success my-3">Attendances List</h3>
            <a href="{{ route('attendances.create') }}" class="btn btn-success ms-auto"> <i class="bi bi-plus-lg"></i> Add New Attendance</a>
        </div>


        <table class="table table-striped">
            <thead>
                <tr class="text-center">
                    <th scope="col">ID</th>
                    <th scope="col">Employee Name</th>
                    <th scope="col">Date</th>
                    <th scope="col">Check-in Time</th>
                    <th scope="col">Check-out Time</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($attendances as $attendance)
                    <tr>
                        <th scope="row" class="text-center">{{ $attendance->id }}</th>
                        <td class="text-center">{{ $attendance->employee->name }}</td>
                        <td class="text-center">{{ $attendance->date }}</td>
                        <td class="text-center">{{ $attendance->check_in_time }}</td>
                        <td class="text-center">{{ $attendance->check_out_time }}</td>
                        
                        <td class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-info"> <i class="bi bi-eye-fill"></i> </a>
                            <a href="{{ route('attendances.edit', $attendance->id) }}" class="btn btn-warning"> <i class="bi bi-pencil-fill"></i> </a>
                            <form action="{{ route('attendances.destroy', $attendance->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger text-dark" onclick="return confirm('Are you sure you want to delete?')">  <i class="bi bi-trash3-fill"></i>  </button>
                            </form>
                        </td>
                    </tr>
                @endforeach   
            </tbody>
        </table>
    </div>
@endsection

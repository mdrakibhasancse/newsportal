<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Interfaces\IDistrictRepository;
use App\Models\District;
use App\Models\Division;
use Illuminate\Http\Request;

class DistrictController extends Controller
{

    protected $districtRepo;

    public function __construct(IDistrictRepository $districtRepo)
    {
         $this->districtRepo = $districtRepo;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['districts'] = $this->districtRepo->myGet();
        return view('admin.district.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['divisions'] = Division::latest()->get();
        return view('admin.district.create',$data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name_en'     =>'required|string|unique:districts',
            'name_bn'     =>'required|string|unique:districts',
            'division_id' => 'required'
         ]);

         $this->districtRepo->districtStore($request);
         return redirect()->route('admin.districts.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $district = $this->districtRepo->myFind($id);
        if(!$district){
            return redirect()->back();
        }
        $data['district'] = $district;
        $data['divisions'] = Division::latest()->get();
        return view('admin.district.edit',$data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name_en'     =>'required|string|unique:districts,name_en,'.$id,
            'name_bn'     =>'required|string|unique:districts,name_bn,'.$id,
            'division_id' => 'required'
         ]);
         
         $this->districtRepo->districtUpdate($request,$id);
         return redirect()->route('admin.districts.index');
        

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->districtRepo->myDelete($id);
        return response()->json([
            'success' =>true,
            'message' => "District delete successfully"
        ]);
    }


    public function districtRemoveItems(Request $request){
        $district = District::whereIn('id',explode("," ,$request->strIds));
        $total    = $district->count();
        $district->delete();
        return response()->json([
            'success' => true,
            'message' => 'District delete successfully',
            'total'   =>  $total,
        ]);
   }
}

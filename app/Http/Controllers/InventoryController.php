<?php
namespace App\Http\Controllers;

use App\Models\Inventory;
use Illuminate\Http\Request;

class InventoryController extends Controller
{
    public function index()
    {
        $inventory = Inventory::all();
        return view('inventory.indexInventory', compact('inventory'));
    }

    public function create()
    {
        return view('inventory.createInventory');
    }

    public function store(Request $request)
    {
        Inventory::create($request->all());
        return redirect()->route('inventory.indexInventory')->with('success', 'Item added!');
    }

    public function edit(Inventory $inventory)
    {
        return view('inventory.editInventory', compact('inventory'));
    }

    public function update(Request $request, Inventory $inventory)
    {
        $inventory->update($request->all());
        return redirect()->route('inventory.indexInventory')->with('success', 'Item updated!');
    }

    public function destroy(Inventory $inventory)
    {
        $inventory->delete();
        return redirect()->route('inventory.indexInventory')->with('success', 'Item deleted!');
    }
}

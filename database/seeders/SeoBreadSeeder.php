<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\DataRow;
use TCG\Voyager\Models\DataType;
use TCG\Voyager\Models\Menu;
use TCG\Voyager\Models\MenuItem;
use TCG\Voyager\Models\Permission;
use TCG\Voyager\Models\Role;

class SeoBreadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $dataType = DataType::firstOrNew(['slug' => 'seos']);
        if (!$dataType->exists) {
            $dataType->fill([
                'name'                  => 'seos',
                'display_name_singular' => 'SEO Entry',
                'display_name_plural'   => 'SEO Engine',
                'icon'                  => 'voyager-search',
                'model_name'            => 'App\\Models\\Seo',
                'controller'            => '',
                'generate_permissions'  => 1,
                'server_side'           => 0,
                'details'               => '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null}',
            ])->save();
        }

        // Add DataRows
        $this->addDataRow($dataType->id, 'id', 'ID', 'number', 1, 0, 0, 0, 0, 0, '{}');
        $this->addDataRow($dataType->id, 'url_path', 'URL Path (e.g., ru/about)', 'text', 2, 1, 1, 1, 1, 1, '{}');
        $this->addDataRow($dataType->id, 'locale', 'Locale', 'text', 3, 1, 1, 1, 1, 1, '{"default":"ru"}');
        $this->addDataRow($dataType->id, 'title', 'SEO Title', 'text', 4, 1, 1, 1, 1, 1, '{}');
        $this->addDataRow($dataType->id, 'description', 'SEO Description', 'text_area', 5, 1, 1, 1, 1, 1, '{}');
        $this->addDataRow($dataType->id, 'keywords', 'Keywords', 'text_area', 6, 1, 1, 1, 1, 1, '{}');
        $this->addDataRow($dataType->id, 'image', 'OG Image', 'image', 7, 1, 1, 1, 1, 1, '{}');
        $this->addDataRow($dataType->id, 'json_ld', 'JSON-LD Schema', 'code_editor', 8, 1, 1, 1, 1, 0, '{"theme":"monokai","language":"json"}');
        $this->addDataRow($dataType->id, 'canonical_url', 'Canonical URL (Optional)', 'text', 9, 1, 1, 1, 1, 0, '{}');
        $this->addDataRow($dataType->id, 'created_at', 'Created At', 'timestamp', 10, 0, 1, 0, 0, 0, '{}');
        $this->addDataRow($dataType->id, 'updated_at', 'Updated At', 'timestamp', 11, 0, 0, 0, 0, 0, '{}');

        // Menu Item
        $menu = Menu::where('name', 'admin')->firstOrFail();
        $menuItem = MenuItem::firstOrNew([
            'menu_id' => $menu->id,
            'title'   => 'SEO Engine',
            'url'     => '',
            'route'   => 'voyager.seos.index',
        ]);
        if (!$menuItem->exists) {
            $menuItem->fill([
                'target'     => '_self',
                'icon_class' => 'voyager-search',
                'color'      => null,
                'parent_id'  => null,
                'order'      => 10,
            ])->save();
        }

        // Permissions
        Permission::generateFor('seos');
        $role = Role::where('name', 'admin')->firstOrFail();
        $permissions = Permission::where('table_name', 'seos')->get();
        foreach ($permissions as $permission) {
            $role->permissions()->syncWithoutDetaching([$permission->id]);
        }
    }

    protected function addDataRow($typeId, $field, $displayName, $type, $order, $browse, $read, $edit, $add, $delete, $details)
    {
        $dataRow = DataRow::firstOrNew(['data_type_id' => $typeId, 'field' => $field]);
        if (!$dataRow->exists) {
            $dataRow->fill([
                'type'         => $type,
                'display_name' => $displayName,
                'required'     => 0,
                'browse'       => $browse,
                'read'         => $read,
                'edit'         => $edit,
                'add'          => $add,
                'delete'       => $delete,
                'details'      => $details,
                'order'        => $order,
            ])->save();
        }
    }
}

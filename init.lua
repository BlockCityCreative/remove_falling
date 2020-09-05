minetest.register_on_mods_loaded(function()
    for name, def in pairs(minetest.registered_nodes) do
      (def.groups or {}).falling_node = nil
      minetest.override_item(name, {groups = def.groups})
    end
  end)

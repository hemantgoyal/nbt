!function(){this.init_sortable_menu=function(){var t;return t=$("#menu"),0!==t.length?(t.sortable({axis:"x",cursor:"crosshair",connectWith:".nested",update:function(){return $.post("/refinery/update_menu_positions",t.sortable("serialize",{key:"menu[]",expression:/plugin_([\w]*)$/}))}}).tabs(),t.sortable("disable"),t.find("#menu_reorder").click(function(t){return trigger_reordering(t,!0)}),t.find("#menu_reorder_done").click(function(t){return trigger_reordering(t,!1)}),t.find("> a").corner("top 5px")):void 0}}.call(this);
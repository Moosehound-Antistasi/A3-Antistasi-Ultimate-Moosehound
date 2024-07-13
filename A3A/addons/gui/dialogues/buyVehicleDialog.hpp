class A3A_BuyVehicleDialog : A3A_TabbedDialog
{
  idd = A3A_IDD_BUYVEHICLEDIALOG;
  onLoad = "['onLoad'] spawn A3A_fnc_buyVehicleDialog";
  onUnload = "['onUnload'] spawn A3A_fnc_buyVehicleDialog";

    class Controls
    {
        class TitlebarText : A3A_TitlebarText
        {
            idc = -1;
            text = $STR_antistasi_dialogs_buy_vehicle_titlebar;
            x = DIALOG_X;
            y = DIALOG_Y - 10 * GRID_H;
            w = DIALOG_W * GRID_W;
            h = 5 * GRID_H;
        };

        class TipText : A3A_TitlebarText
        {
          idc = -1;
          text = $STR_antistasi_dialogs_war_level_tip;
          font = A3A_NOTIFICATION_FONT;
          x = DIALOG_X;
          y = DIALOG_Y - 1 * GRID_H;
          w = DIALOG_W * GRID_W;
          h = 15 * GRID_H;
        };
    
        class TabButtons : A3A_ControlsGroupNoScrollbars
        {
            idc = A3A_IDC_MAINDIALOGTABBUTTONS;
            x = DIALOG_X;
            y = DIALOG_Y - 5 * GRID_H;
            w = DIALOG_W * GRID_W;
            h = 5 * GRID_H;

            class Controls
            {
                class civilianVehicleTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_civ;
                    onButtonClick = "[""switchTab"", [""civilian""]] call A3A_fnc_buyVehicleDialogCivil";
                    x = 0;
                    y = 0;
                    w = 30 * GRID_W;
                    h = 5 * GRID_H;
                };

                 class rebelVehicleTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_reb;
                    onButtonClick = "[""switchTab"", [""rebel""]] call A3A_fnc_buyVehicleDialog";
                    x = 30 * GRID_W;
                    y = 0;
                    w = 30 * GRID_W;
                    h = 5 * GRID_H;
                };

                class staticsTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_static;
                    onButtonClick = "[""switchTab"", [""static""]] call A3A_fnc_buyVehicleDialog";
                    x = 60 * GRID_W;
                    y = 0;
                    w = 30 * GRID_W;
                    h = 5 * GRID_H;
                };

                class OthersTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_other;
                    onButtonClick = "[""switchTab"", [""other""]] call A3A_fnc_buyVehicleDialog";
                    x = 90 * GRID_W;
                    y = 0;
                    w = 30 * GRID_W;
                    h = 5 * GRID_H;
                };
            };
        };

        // Main content
        class civilianVehicleTab : A3A_DefaultControlsGroup
        {
            idc = A3A_IDC_BUYCIVVEHICLEMAIN;
            show = false;

            class Controls
            {
                class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                {
                    idc = A3A_IDC_CIVVEHICLESGROUP;
                    x = 0;
                    y = 10 * GRID_H;
                    w = PX_W(DIALOG_W);
                    h = PX_H(DIALOG_H) - 10 * GRID_H;
                };

                class VehicleTabComboCivil : A3A_ComboBox_Small_BM
                {
                    idc = A3A_IDC_SETUP_CVTABLE;
                    fade = 0;
                    access = 1;
                    x = 0 * GRID_W;
                    y = 0;
                    w = 125 * GRID_W;
                    h = 5 * GRID_H;/* GRID_H */
                };

                class SelectTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_select;
                    onButtonClick = "[""switchTab"", [""all""]] call A3A_fnc_buyVehicleDialog";
                    x = 125 * GRID_W;
                    y = 0;
                    w = 35 * GRID_W;
                    h = 5 * GRID_H;
                };
                /* class VehicleTabCivAll : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLEALL;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPALL;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                }; */
                class VehicleTabCivCars : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLECARS;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPCARS;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                };
                class VehicleTabCivTrucks : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLETRUCKS;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPTRUCKS;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                };
                class VehicleTabCivBoats : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLEBOATS;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPBOATS;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                };
                class VehicleTabCivHeli : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLEHELI;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPHELI;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                };
                class VehicleTabCivPlane : A3A_DefaultControlsGroup
                {
                    idc = A3A_IDC_BUYCIVVEHICLEPLANE;
                    show = false;

                    class Controls
                    {
                        class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                        {
                            idc = A3A_IDC_CIVVEHICLESGROUPPLANE;
                            x = 0;
                            y = 5 * GRID_H;
                            w = PX_W(DIALOG_W);
                            h = PX_H(DIALOG_H) - 5 * GRID_H;
                        };
                    };
                };
            };
        };
            
        class rebelVehicleTab : A3A_DefaultControlsGroup
        {
            idc = A3A_IDC_BUYREBVEHICLEMAIN;
            show = false;

            class Controls
            {
                class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                {
                    idc = A3A_IDC_REBVEHICLESGROUP;
                    x = 0;
                    y = 10 * GRID_H;
                    w = PX_W(DIALOG_W);
                    h = PX_H(DIALOG_H) - 10 * GRID_H;
                };

                class VehicleTabComboRebel : A3A_ComboBox_Small_BM
                {
                    idc = A3A_IDC_SETUP_BMTABLEREBEL;
                    fade = 0;
                    access = 1;
                    x = 0 * GRID_W;
                    y = 0;
                    w = 125 * GRID_W;
                    h = 5 * GRID_H;/* GRID_H */
                };

                class SelectTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_select;
                    onButtonClick = "[""switchTab"", [""all""]] call A3A_fnc_buyVehicleDialog";
                    x = 125 * GRID_W;
                    y = 0;
                    w = 35 * GRID_W;
                    h = 5 * GRID_H;
                };
            };
        };

        class staticsTab : A3A_DefaultControlsGroup
        {
            idc = A3A_IDC_BUYSTATICMAIN;
            show = false;

            class Controls
            {
                class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                {
                    idc = A3A_IDC_STATICSGROUP;
                    x = 0;
                    y = 10 * GRID_H;
                    w = PX_W(DIALOG_W);
                    h = PX_H(DIALOG_H) - 10 * GRID_H;
                };

                class VehicleTabComboStatic : A3A_ComboBox_Small_BM
                {
                    idc = A3A_IDC_SETUP_BMTABLESTATICS;
                    fade = 0;
                    access = 1;
                    x = 0 * GRID_W;
                    y = 0;
                    w = 125 * GRID_W;
                    h = 5 * GRID_H;/* GRID_H */
                };

                class SelectTabButton : A3A_Button
                {
                    idc = -1;
                    text = $STR_antistasi_dialogs_vehicle_tab_select;
                    onButtonClick = "[""switchTab"", [""all""]] call A3A_fnc_buyVehicleDialog";
                    x = 125 * GRID_W;
                    y = 0;
                    w = 35 * GRID_W;
                    h = 5 * GRID_H;
                };
            };
        };

        class OtherTab : A3A_DefaultControlsGroup
        {
            idc = A3A_IDC_BUYOTHERMAIN;
            show = false;

            class Controls
            {
                class VehiclesControlsGroup : A3A_ControlsGroupNoHScrollbars
                {
                    idc = A3A_IDC_OTHERGROUP;
                    x = 0;
                    y = 10 * GRID_H;
                    w = PX_W(DIALOG_W);
                    h = PX_H(DIALOG_H) - 10 * GRID_H;
                };
            };
        };

        class CloseButton : A3A_CloseButton
        {
            idc = -1;
            x = DIALOG_X + DIALOG_W * GRID_W - 5 * GRID_W;
            y = DIALOG_Y - 10 * GRID_H;
        };
    };

    // Used for preview renders. Has to be defined inline. Class inheritance incompatible. ctrlCreate incompatible.
    class Objects
    {
        class VehiclePreview
        {
            idc = A3A_IDC_BUYOBJECTRENDER;

            type = 82;
            model = "\A3\Structures_F\Items\Food\Can_V3_F.p3d";
            scale = 0.00001;  // Hide unless there is a mouse hover. This is overwritten by proper ctrlShow command on initialisation.

            direction[] = {0, -0.35, -0.65};
            up[] = {0, 0.65, -0.35};

            x = 0.5;
            y = 0.5;
            z = 0.2;

            xBack = 0.5;
            yBack = 0.5;
            zBack = 1.2;

            inBack = 1;
            enableZoom = 1;
            zoomDuration = 0.001;
        };
    };
};
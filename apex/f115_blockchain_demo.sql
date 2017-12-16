set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.3.00.05'
,p_default_workspace_id=>18243942530459705
,p_default_application_id=>115
,p_default_owner=>'BLOCKCHAIN'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 115 - Blockchain Demo
--
-- Application Export:
--   Application:     115
--   Name:            Blockchain Demo
--   Date and Time:   10:08 Saturday December 16, 2017
--   Exported By:     DHOCHLEITNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.3.00.05
--   Instance ID:     218208257351820
--

-- Application Statistics:
--   Pages:                      3
--     Items:                    6
--     Processes:                8
--     Regions:                  5
--     Buttons:                  6
--     Dynamic Actions:          6
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          5
--     Validations:              1

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,115)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BLOCKCHAIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Blockchain Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BLOCKCHAIN')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E1698020674BA56601A2F75BC3F34284ED9B9A66ECD95E25AEFFE08376E79FEE'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(18298621798311114)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Blockchain Demo'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_default_error_display_loc=>'INLINE_IN_NOTIFICATION'
,p_last_updated_by=>'DHOCHLEITNER'
,p_last_upd_yyyymmddhh24miss=>'20171216100712'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18246236494311000)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18299879737311131)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Blockchain'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18298388020311095)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18298570868311111)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18245607502310999)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18245727860311000)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18245839413311000)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18245908454311000)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18246020996311000)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18246145025311000)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18311373047365984)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_DE.DANIELH.APEXALERTIFY'
,p_attribute_01=>'Alert'
,p_attribute_02=>'Confirm'
,p_attribute_03=>'This is an alert message.'
,p_attribute_04=>'This is an confirm message.'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(18299763179311129)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18300156451311131)
,p_parent_id=>0
,p_short_name=>'Blockchain'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18246306428311004)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246421937311019)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246595814311019)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246642110311019)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246780210311019)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246825894311022)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18246937843311022)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247084773311022)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247113466311022)
,p_page_template_id=>wwv_flow_api.id(18246306428311004)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18247209521311023)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247347064311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247472209311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247502052311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247617199311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247796546311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247812003311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18247958477311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248060242311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248149200311025)
,p_page_template_id=>wwv_flow_api.id(18247209521311023)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18248229041311025)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248363625311028)
,p_page_template_id=>wwv_flow_api.id(18248229041311025)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248434240311028)
,p_page_template_id=>wwv_flow_api.id(18248229041311025)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18248577266311028)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248697961311031)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248788384311031)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248844230311031)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18248919142311031)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249084139311032)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249188068311032)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249240291311032)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249354342311032)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249487380311032)
,p_page_template_id=>wwv_flow_api.id(18248577266311028)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18249526295311032)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249610679311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249755168311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249847632311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18249992982311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250038927311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250164923311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250265196311036)
,p_page_template_id=>wwv_flow_api.id(18249526295311032)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18250310669311036)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250437050311039)
,p_page_template_id=>wwv_flow_api.id(18250310669311036)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250598473311039)
,p_page_template_id=>wwv_flow_api.id(18250310669311036)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250612190311039)
,p_page_template_id=>wwv_flow_api.id(18250310669311036)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18250867283311041)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18250982690311042)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251021743311042)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251122138311042)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251208333311043)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251318385311043)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251487050311043)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251550188311043)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251612271311043)
,p_page_template_id=>wwv_flow_api.id(18250867283311041)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18251704750311043)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251839117311043)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18251968440311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252065458311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252179176311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252253480311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252301900311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252468131311044)
,p_page_template_id=>wwv_flow_api.id(18251704750311043)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18252538498311044)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252633694311044)
,p_page_template_id=>wwv_flow_api.id(18252538498311044)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252706563311044)
,p_page_template_id=>wwv_flow_api.id(18252538498311044)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18252861629311044)
,p_page_template_id=>wwv_flow_api.id(18252538498311044)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18287568847311072)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18287632381311073)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18287797131311073)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18253093262311045)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18253162540311047)
,p_plug_template_id=>wwv_flow_api.id(18253093262311045)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18254809315311049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18254964024311049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18255013685311049)
,p_plug_template_id=>wwv_flow_api.id(18254964024311049)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18255152535311049)
,p_plug_template_id=>wwv_flow_api.id(18254964024311049)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18255257997311049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18255396187311049)
,p_plug_template_id=>wwv_flow_api.id(18255257997311049)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18255478598311049)
,p_plug_template_id=>wwv_flow_api.id(18255257997311049)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18256154583311049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18256291536311050)
,p_plug_template_id=>wwv_flow_api.id(18256154583311049)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18256382339311050)
,p_plug_template_id=>wwv_flow_api.id(18256154583311049)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18259587404311051)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18259606283311051)
,p_plug_template_id=>wwv_flow_api.id(18259587404311051)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18259700470311051)
,p_plug_template_id=>wwv_flow_api.id(18259587404311051)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261777397311054)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18262653332311054)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18262774530311055)
,p_plug_template_id=>wwv_flow_api.id(18262653332311054)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18263304925311055)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18263464879311055)
,p_plug_template_id=>wwv_flow_api.id(18263304925311055)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18264328568311055)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18264655787311055)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18264776433311055)
,p_plug_template_id=>wwv_flow_api.id(18264655787311055)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18264869738311055)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18264936902311055)
,p_plug_template_id=>wwv_flow_api.id(18264869738311055)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18265023299311055)
,p_plug_template_id=>wwv_flow_api.id(18264869738311055)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18268018674311057)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18268112833311057)
,p_plug_template_id=>wwv_flow_api.id(18268018674311057)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18268243999311057)
,p_plug_template_id=>wwv_flow_api.id(18268018674311057)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18269250724311059)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18269626313311059)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18269797073311059)
,p_plug_template_id=>wwv_flow_api.id(18269626313311059)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18278279401311065)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18279919005311066)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18282324866311067)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18283195746311067)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18284363857311068)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18284854816311068)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18284987744311068)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18285092633311068)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18285161441311069)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18285955181311069)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18286468496311069)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18270240451311059)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18270309933311061)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18272092281311062)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18274311614311063)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18274762763311063)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18274824522311063)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18274824522311063)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18276155400311064)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18276387382311064)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18277379997311064)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18287074988311070)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18287176318311071)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18287201337311071)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18287370267311072)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18287473585311072)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(18288165264311074)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(18288397530311078)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(18288231604311075)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(18288961701311083)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(18251704750311043)
,p_default_dialog_template=>wwv_flow_api.id(18250310669311036)
,p_error_template=>wwv_flow_api.id(18248229041311025)
,p_printer_friendly_template=>wwv_flow_api.id(18251704750311043)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(18248229041311025)
,p_default_button_template=>wwv_flow_api.id(18287632381311073)
,p_default_region_template=>wwv_flow_api.id(18264869738311055)
,p_default_chart_template=>wwv_flow_api.id(18264869738311055)
,p_default_form_template=>wwv_flow_api.id(18264869738311055)
,p_default_reportr_template=>wwv_flow_api.id(18264869738311055)
,p_default_tabform_template=>wwv_flow_api.id(18264869738311055)
,p_default_wizard_template=>wwv_flow_api.id(18264869738311055)
,p_default_menur_template=>wwv_flow_api.id(18269250724311059)
,p_default_listr_template=>wwv_flow_api.id(18264869738311055)
,p_default_irr_template=>wwv_flow_api.id(18264328568311055)
,p_default_report_template=>wwv_flow_api.id(18274824522311063)
,p_default_label_template=>wwv_flow_api.id(18287176318311071)
,p_default_menu_template=>wwv_flow_api.id(18288165264311074)
,p_default_calendar_template=>wwv_flow_api.id(18288231604311075)
,p_default_list_template=>wwv_flow_api.id(18282324866311067)
,p_default_nav_list_template=>wwv_flow_api.id(18285955181311069)
,p_default_top_nav_list_temp=>wwv_flow_api.id(18285955181311069)
,p_default_side_nav_list_temp=>wwv_flow_api.id(18285092633311068)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(18255257997311049)
,p_default_dialogr_template=>wwv_flow_api.id(18254809315311049)
,p_default_option_label=>wwv_flow_api.id(18287176318311071)
,p_default_required_label=>wwv_flow_api.id(18287370267311072)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(18284987744311068)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18288439584311079)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18288587759311080)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18288631655311080)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18288736758311080)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18288878795311080)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18253390262311048)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18253560500311049)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18253801843311049)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18254033421311049)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18255591794311049)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18255782435311049)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18256415481311050)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18256883822311050)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18257469598311050)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18258079031311050)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18258261727311050)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18259124595311051)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18260703865311051)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18261932152311054)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18262331113311054)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18262893998311055)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18263736130311055)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18268369211311057)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18268595297311058)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18268987942311058)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18269867889311059)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18270439022311062)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18270638184311062)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18272228268311062)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18272910795311062)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18273169527311062)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18273551466311062)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18274459985311063)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18274937355311063)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18275220333311063)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18275430322311064)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18276489363311064)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18278319479311066)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18279148279311066)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18280187084311066)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18280847813311066)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18281123141311067)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18281460079311067)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18282891778311067)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18283701164311067)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18286551906311069)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18287825428311074)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18289019128311090)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18289266376311090)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18290067244311090)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18290272605311090)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18291066918311091)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18291214223311091)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18292058895311091)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18292293336311091)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18293016516311091)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18293245059311091)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18293422639311091)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18293697723311091)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18293812377311091)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18294000772311091)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18294240700311091)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18294953008311092)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18295680234311092)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18296174526311092)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18296384488311092)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18296535932311092)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18296747912311092)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18297038954311092)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18297372803311092)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18297592676311092)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18297797087311092)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18297997400311092)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18250755516311039)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(18250310669311036)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18252937409311044)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(18252538498311044)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18253225144311047)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18253436152311048)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(18253390262311048)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18253676814311049)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(18253560500311049)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18253743023311049)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(18253560500311049)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18253903345311049)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(18253801843311049)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254171961311049)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(18254033421311049)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254211914311049)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(18253390262311048)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254314230311049)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(18253801843311049)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254478106311049)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(18253390262311048)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254579129311049)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(18253801843311049)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254611416311049)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(18253390262311048)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18254754679311049)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18253093262311045)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(18254033421311049)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18255641268311049)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18255257997311049)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18255805453311049)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(18255257997311049)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(18255782435311049)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18255964768311049)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(18255257997311049)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18256024089311049)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(18255257997311049)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(18255782435311049)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18256506603311050)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(18256415481311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18256618875311050)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(18256415481311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18256791392311050)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(18256415481311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18256926516311050)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257053930311050)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257185009311050)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257298073311050)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(18256415481311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257381998311050)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257553622311050)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257633336311050)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257716631311050)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257844433311050)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18257916830311050)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258119213311050)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(18258079031311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258369394311050)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258460681311050)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(18258079031311050)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258527921311050)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258602314311051)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258704021311051)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258814924311051)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18258931644311051)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259006115311051)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259200246311051)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(18259124595311051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259315352311051)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(18259124595311051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259456214311051)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18256154583311049)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259853410311051)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18259951655311051)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260026246311051)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260133553311051)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260205504311051)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260371697311051)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260409605311051)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260521205311051)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260679424311051)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260819565311052)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(18260703865311051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18260964304311052)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(18260703865311051)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261033788311052)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261126642311053)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261251026311054)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261304661311054)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476470311054)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261558020311054)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261614732311054)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18259587404311051)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261812876311054)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262035832311054)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(18261932152311054)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262117290311054)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(18261932152311054)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262247811311054)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(18261932152311054)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262483250311054)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(18262331113311054)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262545546311054)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18261777397311054)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(18262331113311054)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262903775311055)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18262653332311054)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(18262893998311055)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263030720311055)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18262653332311054)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263114848311055)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18262653332311054)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263285431311055)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18262653332311054)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263535608311055)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263688477311055)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263866248311055)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(18263736130311055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18263925752311055)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(18263736130311055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18264060479311055)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18264129937311055)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18264229874311055)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18263304925311055)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(18263736130311055)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18264451972311055)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264328568311055)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18264597512311055)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264328568311055)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265189444311055)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265218608311055)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265329664311055)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265468233311055)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(18256883822311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265518965311055)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265693616311055)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265758940311056)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265812911311056)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18265919602311056)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266091418311056)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266180904311056)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266231842311056)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266318684311056)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266484267311056)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266579359311056)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266634974311056)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266714260311056)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266848153311056)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18266963670311056)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(18257469598311050)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267089369311056)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(18258079031311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267100604311056)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267285359311056)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(18258079031311050)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267372997311057)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267400161311057)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267561957311057)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267602190311057)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(18258261727311050)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267782224311057)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267879960311057)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18267997365311057)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(18264869738311055)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(18255591794311049)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18268461964311057)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(18268369211311057)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18268662305311058)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(18268595297311058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18268798904311058)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18268811532311058)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(18268595297311058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269060369311058)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(18268987942311058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269147050311058)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18268018674311057)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(18268987942311058)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269397797311059)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18269250724311059)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(18261932152311054)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269479841311059)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18269250724311059)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269512547311059)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(18269250724311059)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(18261932152311054)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18269908273311059)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(18269626313311059)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(18269867889311059)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270011240311059)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18269626313311059)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(18269867889311059)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270171515311059)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(18269626313311059)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270524484311062)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(18270439022311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270728811311062)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270824828311062)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(18270439022311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18270941086311062)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271070911311062)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(18270439022311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271113441311062)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271287842311062)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271304532311062)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(18270439022311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271469020311062)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(18270439022311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271551444311062)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271695649311062)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271799265311062)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271818081311062)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18271994658311062)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18270309933311061)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272109350311062)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272351690311062)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(18272228268311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272482950311062)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272558604311062)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(18272228268311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272684183311062)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272752413311062)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(18272228268311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18272825157311062)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273036748311062)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(18272910795311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273279532311062)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(18273169527311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273354296311062)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(18273169527311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273452128311062)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(18272910795311062)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273697716311062)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(18273551466311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273734910311062)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(18273551466311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273839763311062)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(18272910795311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18273921139311062)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18274086753311063)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(18272228268311062)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18274113076311063)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18274236043311063)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18272092281311062)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18274572381311063)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18274311614311063)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(18274459985311063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18274656828311063)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18274311614311063)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(18274459985311063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275002443311063)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(18274937355311063)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275103833311063)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(18274937355311063)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275386062311063)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(18275220333311063)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275569267311064)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(18275430322311064)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275675688311064)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(18275430322311064)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275761064311064)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(18275430322311064)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275836826311064)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(18275220333311063)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18275916776311064)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276085282311064)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18274824522311063)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(18275430322311064)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276246805311064)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(18276155400311064)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(18272910795311062)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276587705311064)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276650711311064)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276767935311064)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276869656311064)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18276967542311064)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277054373311064)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277142272311064)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277253503311064)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(18276387382311064)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277411784311064)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277503023311064)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277603850311064)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277702141311064)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277839789311064)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(18270638184311062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18277995614311064)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278042931311064)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278167314311064)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(18277379997311064)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(18276489363311064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278499136311066)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278564735311066)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278686979311066)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278720928311066)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278868981311066)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18278946781311066)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279079623311066)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279216746311066)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(18279148279311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279327035311066)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(18279148279311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279433387311066)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279593012311066)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(18279148279311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279666603311066)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279722150311066)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(18279148279311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18279815534311066)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(18278279401311065)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(18279148279311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280041048311066)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280293649311066)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(18280187084311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280308756311066)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280406714311066)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(18280187084311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280514301311066)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280651071311066)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(18280187084311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280729745311066)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18280909821311066)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281020639311067)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281299546311067)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(18281123141311067)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281365310311067)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281568157311067)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(18281460079311067)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281647330311067)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(18281460079311067)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281706353311067)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281835868311067)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18281979358311067)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(18280187084311066)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282041097311067)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(18281123141311067)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282199848311067)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282286792311067)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18279919005311066)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282420215311067)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282524927311067)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282649084311067)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282706483311067)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18282900906311067)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(18282891778311067)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283080120311067)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18282324866311067)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(18282891778311067)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283253357311067)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283387241311067)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283475619311067)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283568753311067)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283638907311067)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283861431311067)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(18283701164311067)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18283923979311068)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284003040311068)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284100813311068)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284206788311068)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(18283195746311067)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284450351311068)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(18284363857311068)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284590521311068)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18284363857311068)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284654050311068)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18284363857311068)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18284710967311068)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18284363857311068)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285284243311069)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(18281460079311067)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285355275311069)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(18278319479311066)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285406238311069)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(18281460079311067)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285594696311069)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(18283701164311067)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285635598311069)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285772226311069)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(18280847813311066)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18285808976311069)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(18285161441311069)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(18283701164311067)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286056777311069)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(18285955181311069)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286108852311069)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(18285955181311069)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286269729311069)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(18285955181311069)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286396800311069)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(18285955181311069)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286666158311069)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18286468496311069)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(18286551906311069)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286760097311069)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(18286468496311069)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(18286551906311069)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286846724311069)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(18286468496311069)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(18286551906311069)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18286966068311069)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(18286468496311069)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18287916502311074)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(18287825428311074)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18288012743311074)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(18287825428311074)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289126933311090)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(18289019128311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289385870311090)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(18289266376311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289404591311090)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(18289019128311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289537944311090)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(18289266376311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289656024311090)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(18289019128311090)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289737122311090)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(18289266376311090)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289821463311090)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(18289019128311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18289910865311090)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(18289266376311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290141166311090)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(18290067244311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290321150311090)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(18290272605311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290429577311090)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(18290067244311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290596015311090)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(18290272605311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290640609311090)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(18290067244311090)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290771625311091)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(18290272605311090)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290809851311091)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(18290067244311090)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18290925553311091)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(18290272605311090)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291135045311091)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(18291066918311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291377027311091)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(18291214223311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291403963311091)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(18291066918311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291537763311091)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(18291214223311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291658417311091)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(18291066918311091)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291769751311091)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(18291214223311091)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291812436311091)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(18291066918311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18291907518311091)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(18291214223311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292159524311091)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(18292058895311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292394475311091)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(18292293336311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292464230311091)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(18292058895311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292520241311091)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(18292293336311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292696450311091)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(18292058895311091)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292721922311091)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(18292293336311091)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292894952311091)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(18292058895311091)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18292993259311091)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(18292293336311091)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18293180919311091)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(18293016516311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18293397577311091)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(18293245059311091)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18293525183311091)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(18293422639311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18293712270311091)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(18293697723311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18293960589311091)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(18293812377311091)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294179934311091)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(18294000772311091)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294393088311091)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(18294240700311091)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294401156311091)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(18294240700311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294574405311091)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(18293245059311091)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294618560311091)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(18293422639311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294726635311091)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(18293697723311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18294849944311091)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(18293812377311091)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295034641311092)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(18294953008311092)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295141122311092)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(18294953008311092)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295244888311092)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(18294953008311092)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295317379311092)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(18293016516311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295479113311092)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(18294240700311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295576430311092)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(18294000772311091)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295780192311092)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(18295680234311092)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295819586311092)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(18293016516311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18295983225311092)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(18294000772311091)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296010024311092)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(18293016516311091)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296258303311092)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(18296174526311092)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296444454311092)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(18296384488311092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296638282311092)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(18296535932311092)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296872077311092)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(18296747912311092)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18296955095311092)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(18296747912311092)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18297113495311092)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(18297038954311092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18297258390311092)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(18296384488311092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18297493858311092)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(18297372803311092)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18297684094311092)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(18297592676311092)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18297879074311092)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(18297797087311092)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18298067503311092)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(18297997400311092)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18298133493311092)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18298273295311092)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(18297372803311092)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(18298621798311114)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/de_danielh_apexalertify
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(165356670171608382)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DE.DANIELH.APEXALERTIFY'
,p_display_name=>'APEX Alertify'
,p_category=>'NOTIFICATION'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DE.DANIELH.APEXALERTIFY'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#js/alertify#MIN#.js',
'#PLUGIN_FILES#js/apexalertify#MIN#.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#css/alertify#MIN#.css',
'#PLUGIN_FILES#css/default#MIN#.css'))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Alertify',
' * Version: 1.1 (29.07.2017)',
' * Author:  Daniel Hochleitner',
' *-------------------------------------',
'*/',
'FUNCTION render_apexalertify(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                             p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result                 apex_plugin.t_dynamic_action_render_result;',
'  l_alert_title_global     p_plugin.attribute_01%TYPE := p_plugin.attribute_01;',
'  l_confirm_title_global   p_plugin.attribute_02%TYPE := p_plugin.attribute_02;',
'  l_alert_message_global   p_plugin.attribute_03%TYPE := p_plugin.attribute_03;',
'  l_confirm_message_global p_plugin.attribute_04%TYPE := p_plugin.attribute_04;',
'  --',
'  l_alertify_type         p_dynamic_action.attribute_01%TYPE := p_dynamic_action.attribute_01;',
'  l_alert_confirm_title   p_dynamic_action.attribute_02%TYPE := p_dynamic_action.attribute_02;',
'  l_alert_confirm_message p_dynamic_action.attribute_03%TYPE := p_dynamic_action.attribute_03;',
'  l_ok_label              p_dynamic_action.attribute_04%TYPE := p_dynamic_action.attribute_04;',
'  l_cancel_label          p_dynamic_action.attribute_05%TYPE := p_dynamic_action.attribute_05;',
'  l_alertify_transition   p_dynamic_action.attribute_06%TYPE := p_dynamic_action.attribute_06;',
'  l_alertify_modal        p_dynamic_action.attribute_07%TYPE := p_dynamic_action.attribute_07;',
'  l_alertify_movable      p_dynamic_action.attribute_08%TYPE := p_dynamic_action.attribute_08;',
'  l_alertify_closable     p_dynamic_action.attribute_09%TYPE := p_dynamic_action.attribute_09;',
'  l_alertify_frameless    p_dynamic_action.attribute_10%TYPE := p_dynamic_action.attribute_10;',
'  l_message_type          p_dynamic_action.attribute_11%TYPE := p_dynamic_action.attribute_11;',
'  l_message_item          p_dynamic_action.attribute_12%TYPE := p_dynamic_action.attribute_12;',
'  l_button_order          p_dynamic_action.attribute_13%TYPE := p_dynamic_action.attribute_13;',
'  --',
'  l_title   VARCHAR2(1000);',
'  l_message VARCHAR2(2000) := '''';',
'  --',
'BEGIN',
'  -- attribute defaults',
'  IF l_alertify_type = ''alert'' THEN',
'    l_title := nvl(l_alert_confirm_title,',
'                   l_alert_title_global);',
'    IF l_message_type = ''text'' THEN',
'      l_message := nvl(l_alert_confirm_message,',
'                       l_alert_message_global);',
'    END IF;',
'  ELSIF l_alertify_type = ''confirm'' THEN',
'    l_title := nvl(l_alert_confirm_title,',
'                   l_confirm_title_global);',
'    IF l_message_type = ''text'' THEN',
'      l_message := nvl(l_alert_confirm_message,',
'                       l_confirm_message_global);',
'    END IF;',
'  END IF;',
'  l_ok_label           := nvl(l_ok_label,',
'                              ''OK'');',
'  l_cancel_label       := nvl(l_cancel_label,',
'                              ''CANCEL'');',
'  l_alertify_modal     := nvl(l_alertify_modal,',
'                              ''true'');',
'  l_alertify_movable   := nvl(l_alertify_movable,',
'                              ''false'');',
'  l_alertify_closable  := nvl(l_alertify_closable,',
'                              ''true'');',
'  l_alertify_frameless := nvl(l_alertify_frameless,',
'                              ''false'');',
'  l_button_order       := nvl(l_button_order,',
'                              ''false'');',
'',
'  -- Escape Input',
'  l_title        := apex_escape.html(l_title);',
'  l_message      := apex_escape.html(l_message);',
'  l_ok_label     := apex_escape.html(l_ok_label);',
'  l_cancel_label := apex_escape.html(l_cancel_label);',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  --',
'  --',
'  l_result.javascript_function := ''apexAlertify.showAlertify'';',
'  l_result.attribute_01        := l_alertify_type;',
'  l_result.attribute_02        := l_title;',
'  l_result.attribute_03        := l_message;',
'  l_result.attribute_04        := l_ok_label;',
'  l_result.attribute_05        := l_cancel_label;',
'  l_result.attribute_06        := l_alertify_transition;',
'  l_result.attribute_07        := l_alertify_modal;',
'  l_result.attribute_08        := l_alertify_movable;',
'  l_result.attribute_09        := l_alertify_closable;',
'  l_result.attribute_10        := l_alertify_frameless;',
'  l_result.attribute_11        := l_message_type;',
'  l_result.attribute_12        := l_message_item;',
'  l_result.attribute_13        := l_button_order;',
'  --',
'  RETURN l_result;',
'  --',
'END render_apexalertify;'))
,p_api_version=>1
,p_render_function=>'render_apexalertify'
,p_standard_attributes=>'WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Show nice looking Alert and Confirm Dialogs'
,p_version_identifier=>'1.1'
,p_about_url=>'https://github.com/Dani3lSun/apex-plugin-apexalertify'
,p_files_version=>21
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165360105746616023)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Alert Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Alert'
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Global Alert Title for all Alertify Alerts App-Wide.<br>',
'This is the default Fallback, you can also define a Title per Dynamic Action.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165360874189619057)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Confirm Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Confirm'
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Global Confirm Title for all Alertify Confirms App-Wide.<br>',
'This is the default Fallback, you can also define a Title per Dynamic Action.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165361439728621465)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Alert Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'This is an alert message.'
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Global Alert Message for all Alertify Alerts App-Wide.<br>',
'This is the default Fallback, you can also define a Message per Dynamic Action.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165361890600624167)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Confirm Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'This is an confirm message.'
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Global Confirm Message for all Alertify Confirms App-Wide.<br>',
'This is the default Fallback, you can also define a Message per Dynamic Action.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165362854262627853)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'alert'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Type of the APEX Alertify message.<br>',
'You can choose between Alert & Confirm Dialogs'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165363351988628729)
,p_plugin_attribute_id=>wwv_flow_api.id(165362854262627853)
,p_display_sequence=>10
,p_display_value=>'Alert'
,p_return_value=>'alert'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165363668395629650)
,p_plugin_attribute_id=>wwv_flow_api.id(165362854262627853)
,p_display_sequence=>20
,p_display_value=>'Confirm'
,p_return_value=>'confirm'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165364464860634621)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Title of the APEX Alertify Dialog.<br>',
'This overrides the global title settings.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165365015469638201)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Message (Text)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(165375971553680021)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'text'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Message of the APEX Alertify Dialog.<br>',
'This overrides the global message settings.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165365478953640894)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'OK Button Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'OK'
,p_is_translatable=>true
,p_help_text=>'Label of the OK Button'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165366003090644546)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Cancel Button Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'CANCEL'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(165362854262627853)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'confirm'
,p_help_text=>'Label of the Cancel Button'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165366478324646680)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Transition'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'pulse'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Transition of the APEX Alertify Dialog.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165366979810647543)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>10
,p_display_value=>'Pulse'
,p_return_value=>'pulse'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165367404953648259)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>20
,p_display_value=>'Slide'
,p_return_value=>'slide'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165367841065649047)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>30
,p_display_value=>'Zoom'
,p_return_value=>'zoom'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165368260440650024)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>40
,p_display_value=>'Flip-X'
,p_return_value=>'flipx'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165368576514650625)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>50
,p_display_value=>'Flip-Y'
,p_return_value=>'flipy'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165369045925651365)
,p_plugin_attribute_id=>wwv_flow_api.id(165366478324646680)
,p_display_sequence=>60
,p_display_value=>'Fade'
,p_return_value=>'fade'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165369852687655052)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Modal'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Whether the APEX Alertify Dialog is Modal or not (Background darker and not focusable)'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165370298344655541)
,p_plugin_attribute_id=>wwv_flow_api.id(165369852687655052)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165370747613656148)
,p_plugin_attribute_id=>wwv_flow_api.id(165369852687655052)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165371548043663474)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Movable'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Whether the APEX Alertify Dialog is movable.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165371971815663914)
,p_plugin_attribute_id=>wwv_flow_api.id(165371548043663474)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165372442583664693)
,p_plugin_attribute_id=>wwv_flow_api.id(165371548043663474)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165373229117668666)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Closable'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Whether the APEX Alertify Dialog is closable (via X-Close-Button).'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165373744597669175)
,p_plugin_attribute_id=>wwv_flow_api.id(165373229117668666)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165374095025669625)
,p_plugin_attribute_id=>wwv_flow_api.id(165373229117668666)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165374623914675160)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Frameless'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(165362854262627853)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'alert'
,p_lov_type=>'STATIC'
,p_help_text=>'Whether the APEX Alertify Dialog is frameless (Without Header und Button Bar).'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165375090649675677)
,p_plugin_attribute_id=>wwv_flow_api.id(165374623914675160)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165375483496676199)
,p_plugin_attribute_id=>wwv_flow_api.id(165374623914675160)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165375971553680021)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>25
,p_prompt=>'Message Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'text'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Source of the Message Text.<br>',
'- Text (Static) - With Item Substitution (&P1_MY_ITEM.) - At Page Rendering<br>',
'- Item (Dynamic) - Get Text dynamically from Item using $v Javascript Function - At Page Runtime'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165376495711680443)
,p_plugin_attribute_id=>wwv_flow_api.id(165375971553680021)
,p_display_sequence=>10
,p_display_value=>'Text (Static)'
,p_return_value=>'text'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165376916741681378)
,p_plugin_attribute_id=>wwv_flow_api.id(165375971553680021)
,p_display_sequence=>20
,p_display_value=>'Item (Dynamic)'
,p_return_value=>'item'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165377676502687023)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>35
,p_prompt=>'Message (Item)'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(165375971553680021)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'item'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Message of the APEX Alertify Dialog from an Page Item.<br>',
'Gets the text dynamically at runtime using $v Javascript Function.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(165378225539691700)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Button Order'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(165362854262627853)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'confirm'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Order/Alignment of the Confirm Dialog Buttons.<br>',
'- Default: OK / Cancel<br>',
'- Reverse: Cancel / OK'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165378663692692781)
,p_plugin_attribute_id=>wwv_flow_api.id(165378225539691700)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(165379083772693634)
,p_plugin_attribute_id=>wwv_flow_api.id(165378225539691700)
,p_display_sequence=>20
,p_display_value=>'Reverse'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(165380923071719685)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_name=>'apexalertify-alert-ok-pressed'
,p_display_name=>'Alert OK Button pressed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(165381347986719685)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_name=>'apexalertify-confirm-cancel-pressed'
,p_display_name=>'Confirm Cancel Button pressed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(165381753220719686)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_name=>'apexalertify-confirm-ok-pressed'
,p_display_name=>'Confirm OK Button pressed'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20616C6572746966796A7320312E31302E3020687474703A2F2F616C6572746966796A732E636F6D0A202A20416C6572746966794A532069732061206A617661736372697074206672616D65776F726B20666F7220646576656C6F70696E';
wwv_flow_api.g_varchar2_table(2) := '67207072657474792062726F77736572206469616C6F677320616E64206E6F74696669636174696F6E732E0A202A20436F707972696768742032303137204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E63';
wwv_flow_api.g_varchar2_table(3) := '6F6D3E2028687474703A2F2F616C6572746966796A732E636F6D290A202A204C6963656E73656420756E6465722047504C2033203C68747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F67706C2D332E303E2A2F0A2E616C65';
wwv_flow_api.g_varchar2_table(4) := '7274696679202E616A732D64696D6D6572207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20313938313B0A2020746F703A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A20206C6566743A2030';
wwv_flow_api.g_varchar2_table(5) := '3B0A202070616464696E673A20303B0A20206D617267696E3A20303B0A20206261636B67726F756E642D636F6C6F723A20233235323532353B0A20206F7061636974793A202E353B0A7D0A2E616C657274696679202E616A732D6D6F64616C207B0A2020';
wwv_flow_api.g_varchar2_table(6) := '706F736974696F6E3A2066697865643B0A2020746F703A20303B0A202072696768743A20303B0A20206C6566743A20303B0A2020626F74746F6D3A20303B0A202070616464696E673A20303B0A20206F766572666C6F772D793A206175746F3B0A20207A';
wwv_flow_api.g_varchar2_table(7) := '2D696E6465783A20313938313B0A7D0A2E616C657274696679202E616A732D6469616C6F67207B0A2020706F736974696F6E3A2072656C61746976653B0A20206D617267696E3A203525206175746F3B0A20206D696E2D6865696768743A203131307078';
wwv_flow_api.g_varchar2_table(8) := '3B0A20206D61782D77696474683A2035303070783B0A202070616464696E673A20323470782032347078203020323470783B0A20206F75746C696E653A20303B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A2E616C65727469';
wwv_flow_api.g_varchar2_table(9) := '6679202E616A732D6469616C6F672E616A732D636170747572653A6265666F7265207B0A2020636F6E74656E743A2027273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A202072696768743A20303B0A2020626F74';
wwv_flow_api.g_varchar2_table(10) := '746F6D3A20303B0A20206C6566743A20303B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A20313B0A7D0A2E616C657274696679202E616A732D7265736574207B0A2020706F736974696F6E3A206162736F6C7574652021696D';
wwv_flow_api.g_varchar2_table(11) := '706F7274616E743B0A2020646973706C61793A20696E6C696E652021696D706F7274616E743B0A202077696474683A20302021696D706F7274616E743B0A20206865696768743A20302021696D706F7274616E743B0A20206F7061636974793A20302021';
wwv_flow_api.g_varchar2_table(12) := '696D706F7274616E743B0A7D0A2E616C657274696679202E616A732D636F6D6D616E6473207B0A2020706F736974696F6E3A206162736F6C7574653B0A202072696768743A203470783B0A20206D617267696E3A202D313470782032347078203020303B';
wwv_flow_api.g_varchar2_table(13) := '0A20207A2D696E6465783A20323B0A7D0A2E616C657274696679202E616A732D636F6D6D616E647320627574746F6E207B0A2020646973706C61793A206E6F6E653B0A202077696474683A20313070783B0A20206865696768743A20313070783B0A2020';
wwv_flow_api.g_varchar2_table(14) := '6D617267696E2D6C6566743A20313070783B0A202070616464696E673A20313070783B0A2020626F726465723A20303B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E642D7265706561';
wwv_flow_api.g_varchar2_table(15) := '743A206E6F2D7265706561743B0A20206261636B67726F756E642D706F736974696F6E3A2063656E7465723B0A2020637572736F723A20706F696E7465723B0A7D0A2E616C657274696679202E616A732D636F6D6D616E647320627574746F6E2E616A73';
wwv_flow_api.g_varchar2_table(16) := '2D636C6F7365207B0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E5355684555674141414251414141415543414D4141414336562B302F41';
wwv_flow_api.g_varchar2_table(17) := '414141696C424D5645554141414275626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D357562';
wwv_flow_api.g_varchar2_table(18) := '6D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3658396D4C4741';
wwv_flow_api.g_varchar2_table(19) := '4141414C585253546C4D41415149444267634A436773554A43597054314A5A57313168596D4E726247397763592B556D4A71646F71616F71713276734C4C5A3375446F362F33692F356C36414141416C6B6C455156515956313350787861435141784734';
wwv_flow_api.g_varchar2_table(20) := '54736F49765975396F4A4B6B662F3958382B466D546C694E726E6E57795541343371426A6474585177446D6B6E5A6D64366B5A41564E4A55755A4E61675A30395A334D6D31546943744E745A4B59443943767232765972346B642F37452F4E57686F4D55';
wwv_flow_api.g_varchar2_table(21) := '6D2F76546A422F6936524E734675776F43307A64646557535776675970326E7064574D324F6F526B5A6A57634A516B505350774F674633396D6136416E416E35663650704E4453736D63626344487741645A434B514365674D52674141414141456C4654';
wwv_flow_api.g_varchar2_table(22) := '6B5375516D4343293B0A20206261636B67726F756E642D73697A653A20313070783B0A7D0A2E616C657274696679202E616A732D636F6D6D616E647320627574746F6E2E616A732D6D6178696D697A65207B0A20206261636B67726F756E642D696D6167';
wwv_flow_api.g_varchar2_table(23) := '653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E5355684555674141414251414141415542414D414141422F7077412B414141414A31424D5645554141414275626D3575626D3575626D35';
wwv_flow_api.g_varchar2_table(24) := '75626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D367639417A454141414144485253546C4D4143536771623457337673486B357655527653776D414141414E456C455156514957324E6751414352554368775A4F67';
wwv_flow_api.g_varchar2_table(25) := '3541775848476337414152484D416F684A374E526D626B7344672B777A444774676C70316B734951784A7A4667425141506330386D6D4E6241695141414141424A52553545726B4A6767673D3D293B0A20206261636B67726F756E642D73697A653A2031';
wwv_flow_api.g_varchar2_table(26) := '3070783B0A7D0A2E616C657274696679202E616A732D686561646572207B0A20206D617267696E3A202D323470783B0A20206D617267696E2D626F74746F6D3A20303B0A202070616464696E673A203136707820323470783B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(27) := '6E642D636F6C6F723A20236666663B0A7D0A2E616C657274696679202E616A732D626F6479207B0A20206D696E2D6865696768743A20353670783B0A7D0A2E616C657274696679202E616A732D626F6479202E616A732D636F6E74656E74207B0A202070';
wwv_flow_api.g_varchar2_table(28) := '616464696E673A20313670782032347078203136707820313670783B0A7D0A2E616C657274696679202E616A732D666F6F746572207B0A202070616464696E673A203470783B0A20206D617267696E2D6C6566743A202D323470783B0A20206D61726769';
wwv_flow_api.g_varchar2_table(29) := '6E2D72696768743A202D323470783B0A20206D696E2D6865696768743A20343370783B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E61';
wwv_flow_api.g_varchar2_table(30) := '6A732D7072696D617279207B0A2020746578742D616C69676E3A2072696768743B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D7072696D617279202E616A732D627574746F6E207B0A20206D';
wwv_flow_api.g_varchar2_table(31) := '617267696E3A203470783B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D617578696C69617279207B0A2020666C6F61743A206C6566743B0A2020636C6561723A206E6F6E653B0A2020746578';
wwv_flow_api.g_varchar2_table(32) := '742D616C69676E3A206C6566743B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D617578696C69617279202E616A732D627574746F6E207B0A20206D617267696E3A203470783B0A7D0A2E616C';
wwv_flow_api.g_varchar2_table(33) := '657274696679202E616A732D666F6F746572202E616A732D627574746F6E73202E616A732D627574746F6E207B0A20206D696E2D77696474683A20383870783B0A20206D696E2D6865696768743A20333570783B0A7D0A2E616C657274696679202E616A';
wwv_flow_api.g_varchar2_table(34) := '732D68616E646C65207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A206E6F6E653B0A202077696474683A20313070783B0A20206865696768743A20313070783B0A202072696768743A20303B0A2020626F74746F';
wwv_flow_api.g_varchar2_table(35) := '6D3A20303B0A20207A2D696E6465783A20313B0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141416F414141414B4341';
wwv_flow_api.g_varchar2_table(36) := '59414141434E4D732B394141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A305256683051334A6C595852706232346756476C745A5141774E7938784D5338784E45';
wwv_flow_api.g_varchar2_table(37) := '4451596D4D41414141636445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D4141414151306C45515651596C61584E4D516F414941784430645437483635376C304B5833694A75556C';
wwv_flow_api.g_varchar2_table(38) := '42554E4F73505043474A6D37564470367279654D784D754473415148376F77573370796E3352533236694B7845524D4C4E3375674F61416B614C33735756696741414141424A52553545726B4A6767673D3D293B0A20202D7765626B69742D7472616E73';
wwv_flow_api.g_varchar2_table(39) := '666F726D3A207363616C6558283129202F2A72746C3A7363616C6558282D31292A2F3B0A202020202020202020207472616E73666F726D3A207363616C6558283129202F2A72746C3A7363616C6558282D31292A2F3B0A2020637572736F723A2073652D';
wwv_flow_api.g_varchar2_table(40) := '726573697A653B0A7D0A2E616C6572746966792E616A732D6E6F2D6F766572666C6F77202E616A732D626F6479202E616A732D636F6E74656E74207B0A20206F766572666C6F773A2068696464656E2021696D706F7274616E743B0A7D0A2E616C657274';
wwv_flow_api.g_varchar2_table(41) := '6966792E616A732D6E6F2D70616464696E672E616A732D6D6178696D697A6564202E616A732D626F6479202E616A732D636F6E74656E74207B0A20206C6566743A20303B0A202072696768743A20303B0A202070616464696E673A20303B0A7D0A2E616C';
wwv_flow_api.g_varchar2_table(42) := '6572746966792E616A732D6E6F2D70616464696E673A6E6F74282E616A732D6D6178696D697A656429202E616A732D626F6479207B0A20206D617267696E2D6C6566743A202D323470783B0A20206D617267696E2D72696768743A202D323470783B0A7D';
wwv_flow_api.g_varchar2_table(43) := '0A2E616C6572746966792E616A732D6E6F2D70616464696E673A6E6F74282E616A732D6D6178696D697A656429202E616A732D626F6479202E616A732D636F6E74656E74207B0A202070616464696E673A20303B0A7D0A2E616C6572746966792E616A73';
wwv_flow_api.g_varchar2_table(44) := '2D6E6F2D70616464696E672E616A732D726573697A61626C65202E616A732D626F6479202E616A732D636F6E74656E74207B0A20206C6566743A20303B0A202072696768743A20303B0A7D0A2E616C6572746966792E616A732D6D6178696D697A61626C';
wwv_flow_api.g_varchar2_table(45) := '65202E616A732D636F6D6D616E647320627574746F6E2E616A732D6D6178696D697A652C0A2E616C6572746966792E616A732D6D6178696D697A61626C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D726573746F7265207B0A2020';
wwv_flow_api.g_varchar2_table(46) := '646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A2E616C6572746966792E616A732D636C6F7361626C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D636C6F7365207B0A2020646973706C61793A20696E6C696E652D62';
wwv_flow_api.g_varchar2_table(47) := '6C6F636B3B0A7D0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D6469616C6F67207B0A202077696474683A20313030252021696D706F7274616E743B0A20206865696768743A20313030252021696D706F7274616E743B0A20';
wwv_flow_api.g_varchar2_table(48) := '206D61782D77696474683A206E6F6E652021696D706F7274616E743B0A20206D617267696E3A2030206175746F2021696D706F7274616E743B0A2020746F703A20302021696D706F7274616E743B0A20206C6566743A20302021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(49) := '0A7D0A2E616C6572746966792E616A732D6D6178696D697A65642E616A732D6D6F64656C657373202E616A732D6D6F64616C207B0A2020706F736974696F6E3A2066697865642021696D706F7274616E743B0A20206D696E2D6865696768743A20313030';
wwv_flow_api.g_varchar2_table(50) := '252021696D706F7274616E743B0A20206D61782D6865696768743A206E6F6E652021696D706F7274616E743B0A20206D617267696E3A20302021696D706F7274616E743B0A7D0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D';
wwv_flow_api.g_varchar2_table(51) := '636F6D6D616E647320627574746F6E2E616A732D6D6178696D697A65207B0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E53556845556741';
wwv_flow_api.g_varchar2_table(52) := '41414251414141415543414D4141414336562B302F414141415631424D5645554141414275626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D35';
wwv_flow_api.g_varchar2_table(53) := '75626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3559767756654141414148485253546C4D414151494C4542456B4A696F744C6938774D5646535A3278306C4B7172734D505A364F6E';
wwv_flow_api.g_varchar2_table(54) := '7A58427A696B5141414147464A52454655474E4F647A306B4F6743414D514E477134497A7A694C332F4F51305232356F51452F32723569314B41586870515537644B41774C526B4E544755626444793745715573494E393631456F6F4837432F30467A54';
wwv_flow_api.g_varchar2_table(55) := '697A6741716959647831526F6B57754376564E665150704461435766476B54444F636C38617765644F706277536158353144455541414141415355564F524B35435949493D293B0A20206261636B67726F756E642D73697A653A20313070783B0A7D0A2E';
wwv_flow_api.g_varchar2_table(56) := '616C6572746966792E616A732D726573697A61626C65202E616A732D6469616C6F672C0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D6469616C6F67207B0A202070616464696E673A20303B0A7D0A2E616C6572746966792E';
wwv_flow_api.g_varchar2_table(57) := '616A732D726573697A61626C65202E616A732D636F6D6D616E64732C0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D636F6D6D616E6473207B0A20206D617267696E3A20313470782032347078203020303B0A7D0A2E616C65';
wwv_flow_api.g_varchar2_table(58) := '72746966792E616A732D726573697A61626C65202E616A732D6865616465722C0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D686561646572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(59) := '303B0A20206C6566743A20303B0A202072696768743A20303B0A20206D617267696E3A20303B0A202070616464696E673A203136707820323470783B0A7D0A2E616C6572746966792E616A732D726573697A61626C65202E616A732D626F64792C0A2E61';
wwv_flow_api.g_varchar2_table(60) := '6C6572746966792E616A732D6D6178696D697A6564202E616A732D626F6479207B0A20206D696E2D6865696768743A2032323470783B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A2E616C6572746966792E616A732D72657369';
wwv_flow_api.g_varchar2_table(61) := '7A61626C65202E616A732D626F6479202E616A732D636F6E74656E742C0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D626F6479202E616A732D636F6E74656E74207B0A2020706F736974696F6E3A206162736F6C7574653B';
wwv_flow_api.g_varchar2_table(62) := '0A2020746F703A20353070783B0A202072696768743A20323470783B0A2020626F74746F6D3A20353070783B0A20206C6566743A20323470783B0A20206F766572666C6F773A206175746F3B0A7D0A2E616C6572746966792E616A732D726573697A6162';
wwv_flow_api.g_varchar2_table(63) := '6C65202E616A732D666F6F7465722C0A2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D666F6F746572207B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A202072696768743A20303B0A20';
wwv_flow_api.g_varchar2_table(64) := '20626F74746F6D3A20303B0A20206D617267696E3A20303B0A7D0A2E616C6572746966792E616A732D726573697A61626C653A6E6F74282E616A732D6D6178696D697A656429202E616A732D6469616C6F67207B0A20206D696E2D77696474683A203534';
wwv_flow_api.g_varchar2_table(65) := '3870783B0A7D0A2E616C6572746966792E616A732D726573697A61626C653A6E6F74282E616A732D6D6178696D697A656429202E616A732D68616E646C65207B0A2020646973706C61793A20626C6F636B3B0A7D0A2E616C6572746966792E616A732D6D';
wwv_flow_api.g_varchar2_table(66) := '6F7661626C653A6E6F74282E616A732D6D6178696D697A656429202E616A732D686561646572207B0A2020637572736F723A206D6F76653B0A7D0A2E616C6572746966792E616A732D6D6F64656C657373202E616A732D64696D6D65722C0A2E616C6572';
wwv_flow_api.g_varchar2_table(67) := '746966792E616A732D6D6F64656C657373202E616A732D7265736574207B0A2020646973706C61793A206E6F6E653B0A7D0A2E616C6572746966792E616A732D6D6F64656C657373202E616A732D6D6F64616C207B0A20206F766572666C6F773A207669';
wwv_flow_api.g_varchar2_table(68) := '7369626C653B0A20206D61782D77696474683A206E6F6E653B0A20206D61782D6865696768743A20303B0A7D0A2E616C6572746966792E616A732D6D6F64656C6573732E616A732D70696E6E61626C65202E616A732D636F6D6D616E647320627574746F';
wwv_flow_api.g_varchar2_table(69) := '6E2E616A732D70696E207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E53';
wwv_flow_api.g_varchar2_table(70) := '5568455567414141416F414141414B434159414141434E4D732B394141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A305256683051334A6C595852706232346756';
wwv_flow_api.g_varchar2_table(71) := '476C745A5141774E7938784D7938784E4F725A71756741414141636445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D41414141516B6C45515651596C6357504D5134414941774371';
wwv_flow_api.g_varchar2_table(72) := '5539753338476263624852574E314D764B51446851464D45704B496D474A41306743676E597730563072777873656735657254346F536B515649356439662B65392B7841304E624C705766697450584141414141456C46546B5375516D4343293B0A7D0A';
wwv_flow_api.g_varchar2_table(73) := '2E616C6572746966792E616A732D6D6F64656C6573732E616A732D756E70696E6E6564202E616A732D6D6F64616C207B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A2E616C6572746966792E616A732D6D6F64656C6573732E616A732D';
wwv_flow_api.g_varchar2_table(74) := '756E70696E6E6564202E616A732D636F6D6D616E647320627574746F6E2E616A732D70696E207B0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141';
wwv_flow_api.g_varchar2_table(75) := '414E535568455567414141416F414141414B434159414141434E4D732B394141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A305256683051334A6C595852706232';
wwv_flow_api.g_varchar2_table(76) := '346756476C745A5141774E7938784D7938784E4F725A71756741414141636445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D414141414F306C45515651596C5750382F2F382F417A';
wwv_flow_api.g_varchar2_table(77) := '4741695368563641714C6934747847732B434C6F424C4D59624333743565526D79615766425A687777596B58324E547850527669624B6A52685734774D4168786B5947624C7533704541414141415355564F524B35435949493D293B0A7D0A2E616C6572';
wwv_flow_api.g_varchar2_table(78) := '746966792E616A732D6D6F64656C6573733A6E6F74282E616A732D756E70696E6E656429202E616A732D626F6479207B0A20206D61782D6865696768743A2035303070783B0A20206F766572666C6F773A206175746F3B0A7D0A2E616C6572746966792E';
wwv_flow_api.g_varchar2_table(79) := '616A732D6261736963202E616A732D686561646572207B0A20206F7061636974793A20303B0A7D0A2E616C6572746966792E616A732D6261736963202E616A732D666F6F746572207B0A20207669736962696C6974793A2068696464656E3B0A7D0A2E61';
wwv_flow_api.g_varchar2_table(80) := '6C6572746966792E616A732D6672616D656C657373202E616A732D686561646572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A20206D696E2D686569';
wwv_flow_api.g_varchar2_table(81) := '6768743A20363070783B0A20206D617267696E3A20303B0A202070616464696E673A20303B0A20206F7061636974793A20303B0A20207A2D696E6465783A20313B0A7D0A2E616C6572746966792E616A732D6672616D656C657373202E616A732D666F6F';
wwv_flow_api.g_varchar2_table(82) := '746572207B0A2020646973706C61793A206E6F6E653B0A7D0A2E616C6572746966792E616A732D6672616D656C657373202E616A732D626F6479202E616A732D636F6E74656E74207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F';
wwv_flow_api.g_varchar2_table(83) := '703A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A20206C6566743A20303B0A7D0A2E616C6572746966792E616A732D6672616D656C6573733A6E6F74282E616A732D726573697A61626C6529202E616A732D6469616C6F6720';
wwv_flow_api.g_varchar2_table(84) := '7B0A202070616464696E672D746F703A20303B0A7D0A2E616C6572746966792E616A732D6672616D656C6573733A6E6F74282E616A732D726573697A61626C6529202E616A732D6469616C6F67202E616A732D636F6D6D616E6473207B0A20206D617267';
wwv_flow_api.g_varchar2_table(85) := '696E2D746F703A20303B0A7D0A2E616A732D6E6F2D6F766572666C6F77207B0A20206F766572666C6F773A2068696464656E2021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A2E616A732D6E6F2D6F766572666C6F772E61';
wwv_flow_api.g_varchar2_table(86) := '6A732D6669786564207B0A2020706F736974696F6E3A2066697865643B0A2020746F703A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A20206C6566743A20303B0A20206F766572666C6F772D793A207363726F6C6C21696D70';
wwv_flow_api.g_varchar2_table(87) := '6F7274616E743B0A7D0A2E616A732D6E6F2D73656C656374696F6E2C0A2E616A732D6E6F2D73656C656374696F6E202A207B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202020202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(88) := '743A206E6F6E653B0A2020202020202D6D732D757365722D73656C6563743A206E6F6E653B0A20202020202020202020757365722D73656C6563743A206E6F6E653B0A7D0A406D656469612073637265656E20616E6420286D61782D77696474683A2035';
wwv_flow_api.g_varchar2_table(89) := '3638707829207B0A20202E616C657274696679202E616A732D6469616C6F67207B0A202020206D696E2D77696474683A2031353070783B0A20207D0A20202E616C6572746966793A6E6F74282E616A732D6D6178696D697A656429202E616A732D6D6F64';
wwv_flow_api.g_varchar2_table(90) := '616C207B0A2020202070616464696E673A20302035253B0A20207D0A20202E616C6572746966793A6E6F74282E616A732D6D6178696D697A6564292E616A732D726573697A61626C65202E616A732D6469616C6F67207B0A202020206D696E2D77696474';
wwv_flow_api.g_varchar2_table(91) := '683A20696E697469616C3B0A202020206D696E2D77696474683A206175746F202F2A49452066616C6C6261636B2A2F3B0A20207D0A7D0A402D6D6F7A2D646F63756D656E742075726C2D7072656669782829207B0A20202E616C65727469667920627574';
wwv_flow_api.g_varchar2_table(92) := '746F6E3A666F637573207B0A202020206F75746C696E653A2031707820646F7474656420233335393344323B0A20207D0A7D0A2E616C657274696679202E616A732D64696D6D65722C0A2E616C657274696679202E616A732D6D6F64616C207B0A20202D';
wwv_flow_api.g_varchar2_table(93) := '7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A202020202020202020207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E736974696F6E2D70726F70';
wwv_flow_api.g_varchar2_table(94) := '657274793A206F7061636974792C207669736962696C6974793B0A20207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A206C696E6561723B0A20207472616E736974696F6E2D6475726174696F6E3A203235306D733B0A7D0A2E616C';
wwv_flow_api.g_varchar2_table(95) := '6572746966792E616A732D68696464656E202E616A732D64696D6D65722C0A2E616C6572746966792E616A732D68696464656E202E616A732D6D6F64616C207B0A20207669736962696C6974793A2068696464656E3B0A20206F7061636974793A20303B';
wwv_flow_api.g_varchar2_table(96) := '0A7D0A2E616C6572746966792E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A203530306D733B0A20202020202020202020616E';
wwv_flow_api.g_varchar2_table(97) := '696D6174696F6E2D6475726174696F6E3A203530306D733B0A7D0A2E616C6572746966792E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A20';
wwv_flow_api.g_varchar2_table(98) := '3235306D733B0A20202020202020202020616E696D6174696F6E2D6475726174696F6E3A203235306D733B0A7D0A2E616C657274696679202E616A732D6469616C6F672E616A732D7368616B65207B0A20202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(99) := '6E616D653A20616A732D7368616B653B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D7368616B653B0A20202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A202E31733B0A2020202020202020202061';
wwv_flow_api.g_varchar2_table(100) := '6E696D6174696F6E2D6475726174696F6E3A202E31733B0A20202D7765626B69742D616E696D6174696F6E2D66696C6C2D6D6F64653A20626F74683B0A20202020202020202020616E696D6174696F6E2D66696C6C2D6D6F64653A20626F74683B0A7D0A';
wwv_flow_api.g_varchar2_table(101) := '402D7765626B69742D6B65796672616D657320616A732D7368616B65207B0A202030252C0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(102) := '2020207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207D0A20203130252C0A20203330252C0A20203530252C0A20203730252C0A2020393025207B0A202020202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(103) := '72616E736C6174653364282D313070782C20302C2030293B0A2020202020202020202020207472616E73666F726D3A207472616E736C6174653364282D313070782C20302C2030293B0A20207D0A20203230252C0A20203430252C0A20203630252C0A20';
wwv_flow_api.g_varchar2_table(104) := '20383025207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428313070782C20302C2030293B0A2020202020202020202020207472616E73666F726D3A207472616E736C617465336428313070782C20302C2030';
wwv_flow_api.g_varchar2_table(105) := '293B0A20207D0A7D0A406B65796672616D657320616A732D7368616B65207B0A202030252C0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(106) := '202020207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207D0A20203130252C0A20203330252C0A20203530252C0A20203730252C0A2020393025207B0A202020202D7765626B69742D7472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(107) := '7472616E736C6174653364282D313070782C20302C2030293B0A2020202020202020202020207472616E73666F726D3A207472616E736C6174653364282D313070782C20302C2030293B0A20207D0A20203230252C0A20203430252C0A20203630252C0A';
wwv_flow_api.g_varchar2_table(108) := '2020383025207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428313070782C20302C2030293B0A2020202020202020202020207472616E73666F726D3A207472616E736C617465336428313070782C20302C20';
wwv_flow_api.g_varchar2_table(109) := '30293B0A20207D0A7D0A2E616C6572746966792E616A732D736C6964652E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D736C';
wwv_flow_api.g_varchar2_table(110) := '696465496E3B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D736C696465496E3B0A20202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E3137';
wwv_flow_api.g_varchar2_table(111) := '352C20302E3838352C20302E33322C20312E323735293B0A20202020202020202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E3137352C20302E3838352C20302E33322C20312E32373529';
wwv_flow_api.g_varchar2_table(112) := '3B0A7D0A2E616C6572746966792E616A732D736C6964652E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D736C6964654F75743B0A202020';
wwv_flow_api.g_varchar2_table(113) := '20202020202020616E696D6174696F6E2D6E616D653A20616A732D736C6964654F75743B0A20202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E362C202D302E32382C2030';
wwv_flow_api.g_varchar2_table(114) := '2E3733352C20302E303435293B0A20202020202020202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E362C202D302E32382C20302E3733352C20302E303435293B0A7D0A2E616C65727469';
wwv_flow_api.g_varchar2_table(115) := '66792E616A732D7A6F6F6D2E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D7A6F6F6D496E3B0A20202020202020202020616E';
wwv_flow_api.g_varchar2_table(116) := '696D6174696F6E2D6E616D653A20616A732D7A6F6F6D496E3B0A7D0A2E616C6572746966792E616A732D7A6F6F6D2E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(117) := '6E616D653A20616A732D7A6F6F6D4F75743B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D7A6F6F6D4F75743B0A7D0A2E616C6572746966792E616A732D666164652E616A732D696E3A6E6F74282E616A732D6869646465';
wwv_flow_api.g_varchar2_table(118) := '6E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D66616465496E3B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D66616465496E3B0A7D0A2E616C6572';
wwv_flow_api.g_varchar2_table(119) := '746966792E616A732D666164652E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D666164654F75743B0A20202020202020202020616E696D';
wwv_flow_api.g_varchar2_table(120) := '6174696F6E2D6E616D653A20616A732D666164654F75743B0A7D0A2E616C6572746966792E616A732D70756C73652E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D61';
wwv_flow_api.g_varchar2_table(121) := '74696F6E2D6E616D653A20616A732D70756C7365496E3B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D70756C7365496E3B0A7D0A2E616C6572746966792E616A732D70756C73652E616A732D6F75742E616A732D686964';
wwv_flow_api.g_varchar2_table(122) := '64656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D70756C73654F75743B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D70756C73654F75743B0A7D0A';
wwv_flow_api.g_varchar2_table(123) := '2E616C6572746966792E616A732D666C6970782E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D666C6970496E583B0A202020';
wwv_flow_api.g_varchar2_table(124) := '20202020202020616E696D6174696F6E2D6E616D653A20616A732D666C6970496E583B0A7D0A2E616C6572746966792E616A732D666C6970782E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B6974';
wwv_flow_api.g_varchar2_table(125) := '2D616E696D6174696F6E2D6E616D653A20616A732D666C69704F7574583B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D666C69704F7574583B0A7D0A2E616C6572746966792E616A732D666C6970792E616A732D696E3A';
wwv_flow_api.g_varchar2_table(126) := '6E6F74282E616A732D68696464656E29202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D666C6970496E593B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D';
wwv_flow_api.g_varchar2_table(127) := '666C6970496E593B0A7D0A2E616C6572746966792E616A732D666C6970792E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F67207B0A20202D7765626B69742D616E696D6174696F6E2D6E616D653A20616A732D666C69704F75';
wwv_flow_api.g_varchar2_table(128) := '74593B0A20202020202020202020616E696D6174696F6E2D6E616D653A20616A732D666C69704F7574593B0A7D0A402D7765626B69742D6B65796672616D657320616A732D70756C7365496E207B0A202030252C0A20203230252C0A20203430252C0A20';
wwv_flow_api.g_varchar2_table(129) := '203630252C0A20203830252C0A202031303025207B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E3231352C20302E36312C20302E3335352C2031293B0A20207D0A2020302520';
wwv_flow_api.g_varchar2_table(130) := '7B0A202020206F7061636974793A20303B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E332C';
wwv_flow_api.g_varchar2_table(131) := '20302E332C20302E33293B0A20207D0A2020323025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C20312E312C20312E31293B0A2020202020202020202020207472616E73666F726D3A207363616C6533';
wwv_flow_api.g_varchar2_table(132) := '6428312E312C20312E312C20312E31293B0A20207D0A2020343025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A2020202020202020202020207472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(133) := '7363616C65336428302E392C20302E392C20302E39293B0A20207D0A2020363025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E30332C20312E30332C20312E303329';
wwv_flow_api.g_varchar2_table(134) := '3B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E30332C20312E30332C20312E3033293B0A20207D0A2020383025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E39372C';
wwv_flow_api.g_varchar2_table(135) := '20302E39372C20302E3937293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E39372C20302E39372C20302E3937293B0A20207D0A202031303025207B0A202020206F7061636974793A20313B0A202020202D7765';
wwv_flow_api.g_varchar2_table(136) := '626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A7D0A406B65796672616D657320616A732D70756C73';
wwv_flow_api.g_varchar2_table(137) := '65496E207B0A202030252C0A20203230252C0A20203430252C0A20203630252C0A20203830252C0A202031303025207B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E3231352C';
wwv_flow_api.g_varchar2_table(138) := '20302E36312C20302E3335352C2031293B0A20207D0A20203025207B0A202020206F7061636974793A20303B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(139) := '202020207472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A20207D0A2020323025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C20312E312C20312E31293B0A2020';
wwv_flow_api.g_varchar2_table(140) := '202020202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E31293B0A20207D0A2020343025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E392C20302E392C20302E';
wwv_flow_api.g_varchar2_table(141) := '39293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A20207D0A2020363025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(142) := '3A207363616C65336428312E30332C20312E30332C20312E3033293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E30332C20312E30332C20312E3033293B0A20207D0A2020383025207B0A202020202D7765626B';
wwv_flow_api.g_varchar2_table(143) := '69742D7472616E73666F726D3A207363616C65336428302E39372C20302E39372C20302E3937293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E39372C20302E39372C20302E3937293B0A20207D0A2020313030';
wwv_flow_api.g_varchar2_table(144) := '25207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C203129';
wwv_flow_api.g_varchar2_table(145) := '3B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D70756C73654F7574207B0A2020323025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A202020';
wwv_flow_api.g_varchar2_table(146) := '2020202020202020207472616E73666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A20207D0A20203530252C0A2020353525207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(147) := '3A207363616C65336428312E312C20312E312C20312E31293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E31293B0A20207D0A202031303025207B0A202020206F7061636974793A2030';
wwv_flow_api.g_varchar2_table(148) := '3B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A20207D0A';
wwv_flow_api.g_varchar2_table(149) := '7D0A406B65796672616D657320616A732D70756C73654F7574207B0A2020323025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A2020202020202020202020207472616E73';
wwv_flow_api.g_varchar2_table(150) := '666F726D3A207363616C65336428302E392C20302E392C20302E39293B0A20207D0A20203530252C0A2020353525207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C';
wwv_flow_api.g_varchar2_table(151) := '20312E312C20312E31293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E31293B0A20207D0A202031303025207B0A202020206F7061636974793A20303B0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(152) := '7472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E332C20302E332C20302E33293B0A20207D0A7D0A402D7765626B69742D6B6579';
wwv_flow_api.g_varchar2_table(153) := '6672616D657320616A732D7A6F6F6D496E207B0A20203025207B0A202020206F7061636974793A20303B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A20202020202020';
wwv_flow_api.g_varchar2_table(154) := '20202020207472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A20207D0A202031303025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65';
wwv_flow_api.g_varchar2_table(155) := '336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A7D0A406B65796672616D657320616A732D7A6F6F6D496E207B0A20203025207B0A202020206F70616369';
wwv_flow_api.g_varchar2_table(156) := '74793A20303B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E32352C20302E32352C20';
wwv_flow_api.g_varchar2_table(157) := '302E3235293B0A20207D0A202031303025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(158) := '7363616C65336428312C20312C2031293B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D7A6F6F6D4F7574207B0A20203025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(159) := '6D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A202031303025207B0A202020206F7061636974793A20303B0A202020202D7765626B';
wwv_flow_api.g_varchar2_table(160) := '69742D7472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A20207D0A7D0A406B65';
wwv_flow_api.g_varchar2_table(161) := '796672616D657320616A732D7A6F6F6D4F7574207B0A20203025207B0A202020206F7061636974793A20313B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472';
wwv_flow_api.g_varchar2_table(162) := '616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A202031303025207B0A202020206F7061636974793A20303B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E32352C20302E32352C2030';
wwv_flow_api.g_varchar2_table(163) := '2E3235293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E32352C20302E32352C20302E3235293B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D66616465496E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(164) := '0A202020206F7061636974793A20303B0A20207D0A202031303025207B0A202020206F7061636974793A20313B0A20207D0A7D0A406B65796672616D657320616A732D66616465496E207B0A20203025207B0A202020206F7061636974793A20303B0A20';
wwv_flow_api.g_varchar2_table(165) := '207D0A202031303025207B0A202020206F7061636974793A20313B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D666164654F7574207B0A20203025207B0A202020206F7061636974793A20313B0A20207D0A202031303025';
wwv_flow_api.g_varchar2_table(166) := '207B0A202020206F7061636974793A20303B0A20207D0A7D0A406B65796672616D657320616A732D666164654F7574207B0A20203025207B0A202020206F7061636974793A20313B0A20207D0A202031303025207B0A202020206F7061636974793A2030';
wwv_flow_api.g_varchar2_table(167) := '3B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D666C6970496E58207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F7461746533642831';
wwv_flow_api.g_varchar2_table(168) := '2C20302C20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C203930646567293B0A202020207472616E736974696F6E2D74';
wwv_flow_api.g_varchar2_table(169) := '696D696E672D66756E6374696F6E3A20656173652D696E3B0A202020206F7061636974793A20303B0A20207D0A2020343025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F746174';
wwv_flow_api.g_varchar2_table(170) := '65336428312C20302C20302C202D3230646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D3230646567293B0A202020207472616E73';
wwv_flow_api.g_varchar2_table(171) := '6974696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C';
wwv_flow_api.g_varchar2_table(172) := '20302C203130646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C203130646567293B0A202020206F7061636974793A20313B0A20207D0A';
wwv_flow_api.g_varchar2_table(173) := '2020383025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D35646567293B0A2020202020202020202020207472616E73666F726D3A2070';
wwv_flow_api.g_varchar2_table(174) := '657273706563746976652834303070782920726F74617465336428312C20302C20302C202D35646567293B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A207065727370656374697665283430307078293B0A';
wwv_flow_api.g_varchar2_table(175) := '2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A7D0A406B65796672616D657320616A732D666C6970496E58207B0A20203025207B0A202020202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(176) := '726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428';
wwv_flow_api.g_varchar2_table(177) := '312C20302C20302C203930646567293B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A202020206F7061636974793A20303B0A20207D0A2020343025207B0A202020202D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(178) := '616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D3230646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74';
wwv_flow_api.g_varchar2_table(179) := '617465336428312C20302C20302C202D3230646567293B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363025207B0A202020202D7765626B69742D7472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(180) := '70657273706563746976652834303070782920726F74617465336428312C20302C20302C203130646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C2030';
wwv_flow_api.g_varchar2_table(181) := '2C20302C203130646567293B0A202020206F7061636974793A20313B0A20207D0A2020383025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C';
wwv_flow_api.g_varchar2_table(182) := '202D35646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D35646567293B0A20207D0A202031303025207B0A202020202D7765626B69';
wwv_flow_api.g_varchar2_table(183) := '742D7472616E73666F726D3A207065727370656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A7D0A402D7765626B69742D6B65796672616D6573';
wwv_flow_api.g_varchar2_table(184) := '20616A732D666C69704F757458207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A207065727370656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665';
wwv_flow_api.g_varchar2_table(185) := '283430307078293B0A20207D0A2020333025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D3230646567293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(186) := '20207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C202D3230646567293B0A202020206F7061636974793A20313B0A20207D0A202031303025207B0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(187) := '7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F';
wwv_flow_api.g_varchar2_table(188) := '74617465336428312C20302C20302C203930646567293B0A202020206F7061636974793A20303B0A20207D0A7D0A406B65796672616D657320616A732D666C69704F757458207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(189) := '3A207065727370656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A2020333025207B0A202020202D7765626B69742D7472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(190) := '70657273706563746976652834303070782920726F74617465336428312C20302C20302C202D3230646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20';
wwv_flow_api.g_varchar2_table(191) := '302C20302C202D3230646567293B0A202020206F7061636974793A20313B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C';
wwv_flow_api.g_varchar2_table(192) := '20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428312C20302C20302C203930646567293B0A202020206F7061636974793A20303B0A20207D0A';
wwv_flow_api.g_varchar2_table(193) := '7D0A402D7765626B69742D6B65796672616D657320616A732D666C6970496E59207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C2030';
wwv_flow_api.g_varchar2_table(194) := '2C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203930646567293B0A202020207472616E736974696F6E2D74696D696E672D';
wwv_flow_api.g_varchar2_table(195) := '66756E6374696F6E3A20656173652D696E3B0A202020206F7061636974793A20303B0A20207D0A2020343025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C';
wwv_flow_api.g_varchar2_table(196) := '20312C20302C202D3230646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D3230646567293B0A202020207472616E736974696F6E2D';
wwv_flow_api.g_varchar2_table(197) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203130';
wwv_flow_api.g_varchar2_table(198) := '646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203130646567293B0A202020206F7061636974793A20313B0A20207D0A202038302520';
wwv_flow_api.g_varchar2_table(199) := '7B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D35646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563';
wwv_flow_api.g_varchar2_table(200) := '746976652834303070782920726F74617465336428302C20312C20302C202D35646567293B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A207065727370656374697665283430307078293B0A202020202020';
wwv_flow_api.g_varchar2_table(201) := '2020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A7D0A406B65796672616D657320616A732D666C6970496E59207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A207065';
wwv_flow_api.g_varchar2_table(202) := '7273706563746976652834303070782920726F74617465336428302C20312C20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20';
wwv_flow_api.g_varchar2_table(203) := '302C203930646567293B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A202020206F7061636974793A20303B0A20207D0A2020343025207B0A202020202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(204) := '6D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D3230646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428';
wwv_flow_api.g_varchar2_table(205) := '302C20312C20302C202D3230646567293B0A202020207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363025207B0A202020202D7765626B69742D7472616E73666F726D3A20706572737065';
wwv_flow_api.g_varchar2_table(206) := '63746976652834303070782920726F74617465336428302C20312C20302C203130646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C2031';
wwv_flow_api.g_varchar2_table(207) := '30646567293B0A202020206F7061636974793A20313B0A20207D0A2020383025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D35646567';
wwv_flow_api.g_varchar2_table(208) := '293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D35646567293B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(209) := '73666F726D3A207065727370656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A7D0A402D7765626B69742D6B65796672616D657320616A732D66';
wwv_flow_api.g_varchar2_table(210) := '6C69704F757459207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A207065727370656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078';
wwv_flow_api.g_varchar2_table(211) := '293B0A20207D0A2020333025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D3135646567293B0A2020202020202020202020207472616E';
wwv_flow_api.g_varchar2_table(212) := '73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C202D3135646567293B0A202020206F7061636974793A20313B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E7366';
wwv_flow_api.g_varchar2_table(213) := '6F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203930646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F746174653364';
wwv_flow_api.g_varchar2_table(214) := '28302C20312C20302C203930646567293B0A202020206F7061636974793A20303B0A20207D0A7D0A406B65796672616D657320616A732D666C69704F757459207B0A20203025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273';
wwv_flow_api.g_varchar2_table(215) := '70656374697665283430307078293B0A2020202020202020202020207472616E73666F726D3A207065727370656374697665283430307078293B0A20207D0A2020333025207B0A202020202D7765626B69742D7472616E73666F726D3A20706572737065';
wwv_flow_api.g_varchar2_table(216) := '63746976652834303070782920726F74617465336428302C20312C20302C202D3135646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C20';
wwv_flow_api.g_varchar2_table(217) := '2D3135646567293B0A202020206F7061636974793A20313B0A20207D0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203930';
wwv_flow_api.g_varchar2_table(218) := '646567293B0A2020202020202020202020207472616E73666F726D3A2070657273706563746976652834303070782920726F74617465336428302C20312C20302C203930646567293B0A202020206F7061636974793A20303B0A20207D0A7D0A402D7765';
wwv_flow_api.g_varchar2_table(219) := '626B69742D6B65796672616D657320616A732D736C696465496E207B0A20203025207B0A202020206D617267696E2D746F703A202D313030253B0A20207D0A202031303025207B0A202020206D617267696E2D746F703A2035253B0A20207D0A7D0A406B';
wwv_flow_api.g_varchar2_table(220) := '65796672616D657320616A732D736C696465496E207B0A20203025207B0A202020206D617267696E2D746F703A202D313030253B0A20207D0A202031303025207B0A202020206D617267696E2D746F703A2035253B0A20207D0A7D0A402D7765626B6974';
wwv_flow_api.g_varchar2_table(221) := '2D6B65796672616D657320616A732D736C6964654F7574207B0A20203025207B0A202020206D617267696E2D746F703A2035253B0A20207D0A202031303025207B0A202020206D617267696E2D746F703A202D313030253B0A20207D0A7D0A406B657966';
wwv_flow_api.g_varchar2_table(222) := '72616D657320616A732D736C6964654F7574207B0A20203025207B0A202020206D617267696E2D746F703A2035253B0A20207D0A202031303025207B0A202020206D617267696E2D746F703A202D313030253B0A20207D0A7D0A2E616C6572746966792D';
wwv_flow_api.g_varchar2_table(223) := '6E6F746966696572207B0A2020706F736974696F6E3A2066697865643B0A202077696474683A20303B0A20206F766572666C6F773A2076697369626C653B0A20207A2D696E6465783A20313938323B0A20202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(224) := '207472616E736C617465336428302C20302C2030293B0A202020202020202020207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D65737361676520';
wwv_flow_api.g_varchar2_table(225) := '7B0A2020706F736974696F6E3A2072656C61746976653B0A202077696474683A2032363070783B0A20206D61782D6865696768743A20303B0A202070616464696E673A20303B0A20206F7061636974793A20303B0A20206D617267696E3A20303B0A2020';
wwv_flow_api.g_varchar2_table(226) := '2D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A202020202020202020207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E736974696F6E2D647572';
wwv_flow_api.g_varchar2_table(227) := '6174696F6E3A203235306D733B0A20207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A206C696E6561723B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D76697369626C65207B0A';
wwv_flow_api.g_varchar2_table(228) := '20207472616E736974696F6E2D6475726174696F6E3A203530306D733B0A20207472616E736974696F6E2D74696D696E672D66756E6374696F6E3A2063756269632D62657A69657228302E3137352C20302E3838352C20302E33322C20312E323735293B';
wwv_flow_api.g_varchar2_table(229) := '0A20206F7061636974793A20313B0A20206D61782D6865696768743A20313030253B0A202070616464696E673A20313570783B0A20206D617267696E2D746F703A20313070783B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D65';
wwv_flow_api.g_varchar2_table(230) := '73736167652E616A732D73756363657373207B0A20206261636B67726F756E643A20726762612839312C203138392C203131342C20302E3935293B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D6572';
wwv_flow_api.g_varchar2_table(231) := '726F72207B0A20206261636B67726F756E643A2072676261283231372C2039322C2039322C20302E3935293B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D7761726E696E67207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(232) := '726F756E643A2072676261283235322C203234382C203231352C20302E3935293B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D657373616765202E616A732D636C6F7365207B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(233) := '653B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A20313670783B0A20206865696768743A20313670783B0A2020637572736F723A20706F696E7465723B0A20206261636B67726F756E642D696D6167653A2075726C2864';
wwv_flow_api.g_varchar2_table(234) := '6174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E5355684555674141414167414141414943415941414144454437364C414141414247644254554541414C4750432F7868425141414146424A5245465547426C';
wwv_flow_api.g_varchar2_table(235) := '316A30454B41444549412B76652F50396639626831684569684E42666A56434F317637524B56714A4B346838674D35634150523432416B514570535850774D54796F6931336E354E3959714A65686D33466E72376E4C3144305A456244354F7562477943';
wwv_flow_api.g_varchar2_table(236) := '37613967782B39654E4141414141456C46546B5375516D4343293B0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A20206261636B67726F756E642D706F736974696F6E3A2063656E7465722063656E7465723B0A2020';
wwv_flow_api.g_varchar2_table(237) := '6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D746F70207B';
wwv_flow_api.g_varchar2_table(238) := '0A2020746F703A20313070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D626F74746F6D207B0A2020626F74746F6D3A20313070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D7269676874207B0A202072';
wwv_flow_api.g_varchar2_table(239) := '696768743A20313070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D7269676874202E616A732D6D657373616765207B0A202072696768743A202D33323070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D';
wwv_flow_api.g_varchar2_table(240) := '7269676874202E616A732D6D6573736167652E616A732D76697369626C65207B0A202072696768743A2032393070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D6C656674207B0A20206C6566743A20313070783B0A7D0A2E616C';
wwv_flow_api.g_varchar2_table(241) := '6572746966792D6E6F7469666965722E616A732D6C656674202E616A732D6D657373616765207B0A20206C6566743A202D33303070783B0A7D0A2E616C6572746966792D6E6F7469666965722E616A732D6C656674202E616A732D6D6573736167652E61';
wwv_flow_api.g_varchar2_table(242) := '6A732D76697369626C65207B0A20206C6566743A20303B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92427957426845223)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'css/alertify.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20616C6572746966796A7320312E31302E3020687474703A2F2F616C6572746966796A732E636F6D0A202A20416C6572746966794A532069732061206A617661736372697074206672616D65776F726B20666F7220646576656C6F70696E';
wwv_flow_api.g_varchar2_table(2) := '67207072657474792062726F77736572206469616C6F677320616E64206E6F74696669636174696F6E732E0A202A20436F707972696768742032303137204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E63';
wwv_flow_api.g_varchar2_table(3) := '6F6D3E2028687474703A2F2F616C6572746966796A732E636F6D290A202A204C6963656E73656420756E6465722047504C2033203C68747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F67706C2D332E303E2A2F0A2E616C65';
wwv_flow_api.g_varchar2_table(4) := '7274696679202E616A732D64696D6D65727B706F736974696F6E3A66697865643B7A2D696E6465783A313938313B746F703A303B72696768743A303B626F74746F6D3A303B6C6566743A303B70616464696E673A303B6D617267696E3A303B6261636B67';
wwv_flow_api.g_varchar2_table(5) := '726F756E642D636F6C6F723A233235323532353B6F7061636974793A2E357D2E616C657274696679202E616A732D6D6F64616C7B706F736974696F6E3A66697865643B746F703A303B72696768743A303B6C6566743A303B626F74746F6D3A303B706164';
wwv_flow_api.g_varchar2_table(6) := '64696E673A303B6F766572666C6F772D793A6175746F3B7A2D696E6465783A313938317D2E616C657274696679202E616A732D6469616C6F677B706F736974696F6E3A72656C61746976653B6D617267696E3A3525206175746F3B6D696E2D6865696768';
wwv_flow_api.g_varchar2_table(7) := '743A31313070783B6D61782D77696474683A35303070783B70616464696E673A323470782032347078203020323470783B6F75746C696E653A303B6261636B67726F756E642D636F6C6F723A236666667D2E616C657274696679202E616A732D6469616C';
wwv_flow_api.g_varchar2_table(8) := '6F672E616A732D636170747572653A6265666F72657B636F6E74656E743A27273B706F736974696F6E3A6162736F6C7574653B746F703A303B72696768743A303B626F74746F6D3A303B6C6566743A303B646973706C61793A626C6F636B3B7A2D696E64';
wwv_flow_api.g_varchar2_table(9) := '65783A317D2E616C657274696679202E616A732D72657365747B706F736974696F6E3A6162736F6C75746521696D706F7274616E743B646973706C61793A696E6C696E6521696D706F7274616E743B77696474683A3021696D706F7274616E743B686569';
wwv_flow_api.g_varchar2_table(10) := '6768743A3021696D706F7274616E743B6F7061636974793A3021696D706F7274616E747D2E616C657274696679202E616A732D636F6D6D616E64737B706F736974696F6E3A6162736F6C7574653B72696768743A3470783B6D617267696E3A2D31347078';
wwv_flow_api.g_varchar2_table(11) := '2032347078203020303B7A2D696E6465783A327D2E616C657274696679202E616A732D636F6D6D616E647320627574746F6E7B646973706C61793A6E6F6E653B77696474683A313070783B6865696768743A313070783B6D617267696E2D6C6566743A31';
wwv_flow_api.g_varchar2_table(12) := '3070783B70616464696E673A313070783B626F726465723A303B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D706F73697469';
wwv_flow_api.g_varchar2_table(13) := '6F6E3A63656E7465723B637572736F723A706F696E7465727D2E616C657274696679202E616A732D636F6D6D616E647320627574746F6E2E616A732D636C6F73657B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E';
wwv_flow_api.g_varchar2_table(14) := '673B6261736536342C6956424F5277304B47676F414141414E5355684555674141414251414141415543414D4141414336562B302F41414141696C424D5645554141414275626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D35';
wwv_flow_api.g_varchar2_table(15) := '75626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D35';
wwv_flow_api.g_varchar2_table(16) := '75626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3658396D4C47414141414C585253546C4D41415149444267634A436773554A43597054314A5A57313168596D4E726247397763592B';
wwv_flow_api.g_varchar2_table(17) := '556D4A71646F71616F71713276734C4C5A3375446F362F33692F356C36414141416C6B6C45515651595631335078786143514178473454736F49765975396F4A4B6B662F3958382B466D546C694E726E6E57795541343371426A6474585177446D6B6E5A';
wwv_flow_api.g_varchar2_table(18) := '6D64366B5A41564E4A55755A4E61675A30395A334D6D31546943744E745A4B59443943767232765972346B642F37452F4E57686F4D556D2F76546A422F6936524E734675776F43307A64646557535776675970326E7064574D324F6F526B5A6A57634A51';
wwv_flow_api.g_varchar2_table(19) := '6B505350774F674633396D6136416E416E35663650704E4453736D63626344487741645A434B514365674D52674141414141456C46546B5375516D4343293B6261636B67726F756E642D73697A653A313070787D2E616C657274696679202E616A732D63';
wwv_flow_api.g_varchar2_table(20) := '6F6D6D616E647320627574746F6E2E616A732D6D6178696D697A657B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E53556845556741414142514141';
wwv_flow_api.g_varchar2_table(21) := '41415542414D414141422F7077412B414141414A31424D5645554141414275626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D367639417A454141414144485253546C4D414353677162';
wwv_flow_api.g_varchar2_table(22) := '3457337673486B357655527653776D414141414E456C455156514957324E6751414352554368775A4F673541775848476337414152484D416F684A374E526D626B7344672B777A444774676C70316B734951784A7A4667425141506330386D6D4E624169';
wwv_flow_api.g_varchar2_table(23) := '5141414141424A52553545726B4A6767673D3D293B6261636B67726F756E642D73697A653A313070787D2E616C657274696679202E616A732D6865616465727B6D617267696E3A2D323470783B6D617267696E2D626F74746F6D3A303B70616464696E67';
wwv_flow_api.g_varchar2_table(24) := '3A3136707820323470783B6261636B67726F756E642D636F6C6F723A236666667D2E616C657274696679202E616A732D626F64797B6D696E2D6865696768743A353670787D2E616C657274696679202E616A732D626F6479202E616A732D636F6E74656E';
wwv_flow_api.g_varchar2_table(25) := '747B70616464696E673A313670782032347078203136707820313670787D2E616C657274696679202E616A732D666F6F7465727B70616464696E673A3470783B6D617267696E2D6C6566743A2D323470783B6D617267696E2D72696768743A2D32347078';
wwv_flow_api.g_varchar2_table(26) := '3B6D696E2D6865696768743A343370783B6261636B67726F756E642D636F6C6F723A236666667D2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D7072696D6172797B746578742D616C69676E3A726967';
wwv_flow_api.g_varchar2_table(27) := '68747D2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D7072696D617279202E616A732D627574746F6E7B6D617267696E3A3470787D2E616C657274696679202E616A732D666F6F746572202E616A732D';
wwv_flow_api.g_varchar2_table(28) := '627574746F6E732E616A732D617578696C696172797B666C6F61743A6C6566743B636C6561723A6E6F6E653B746578742D616C69676E3A6C6566747D2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E732E616A732D61';
wwv_flow_api.g_varchar2_table(29) := '7578696C69617279202E616A732D627574746F6E7B6D617267696E3A3470787D2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E73202E616A732D627574746F6E7B6D696E2D77696474683A383870783B6D696E2D6865';
wwv_flow_api.g_varchar2_table(30) := '696768743A333570787D2E616C657274696679202E616A732D68616E646C657B706F736974696F6E3A6162736F6C7574653B646973706C61793A6E6F6E653B77696474683A313070783B6865696768743A313070783B72696768743A303B626F74746F6D';
wwv_flow_api.g_varchar2_table(31) := '3A303B7A2D696E6465783A313B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141416F414141414B434159414141434E4D732B39';
wwv_flow_api.g_varchar2_table(32) := '4141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A305256683051334A6C595852706232346756476C745A5141774E7938784D5338784E454451596D4D4141414163';
wwv_flow_api.g_varchar2_table(33) := '6445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D4141414151306C45515651596C61584E4D516F414941784430645437483635376C304B5833694A75556C42554E4F73505043474A';
wwv_flow_api.g_varchar2_table(34) := '6D37564470367279654D784D754473415148376F77573370796E3352533236694B7845524D4C4E3375674F61416B614C33735756696741414141424A52553545726B4A6767673D3D293B2D7765626B69742D7472616E73666F726D3A7363616C65582831';
wwv_flow_api.g_varchar2_table(35) := '293B7472616E73666F726D3A7363616C65582831293B637572736F723A73652D726573697A657D2E616C6572746966792E616A732D6E6F2D6F766572666C6F77202E616A732D626F6479202E616A732D636F6E74656E747B6F766572666C6F773A686964';
wwv_flow_api.g_varchar2_table(36) := '64656E21696D706F7274616E747D2E616C6572746966792E616A732D6E6F2D70616464696E672E616A732D6D6178696D697A6564202E616A732D626F6479202E616A732D636F6E74656E747B6C6566743A303B72696768743A303B70616464696E673A30';
wwv_flow_api.g_varchar2_table(37) := '7D2E616C6572746966792E616A732D6E6F2D70616464696E673A6E6F74282E616A732D6D6178696D697A656429202E616A732D626F64797B6D617267696E2D6C6566743A2D323470783B6D617267696E2D72696768743A2D323470787D2E616C65727469';
wwv_flow_api.g_varchar2_table(38) := '66792E616A732D6E6F2D70616464696E673A6E6F74282E616A732D6D6178696D697A656429202E616A732D626F6479202E616A732D636F6E74656E747B70616464696E673A307D2E616C6572746966792E616A732D6E6F2D70616464696E672E616A732D';
wwv_flow_api.g_varchar2_table(39) := '726573697A61626C65202E616A732D626F6479202E616A732D636F6E74656E747B6C6566743A303B72696768743A307D2E616C6572746966792E616A732D6D6178696D697A61626C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D6D';
wwv_flow_api.g_varchar2_table(40) := '6178696D697A652C2E616C6572746966792E616A732D6D6178696D697A61626C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D726573746F72657B646973706C61793A696E6C696E652D626C6F636B7D2E616C6572746966792E616A';
wwv_flow_api.g_varchar2_table(41) := '732D636C6F7361626C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D636C6F73657B646973706C61793A696E6C696E652D626C6F636B7D2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D6469616C6F677B77';
wwv_flow_api.g_varchar2_table(42) := '696474683A3130302521696D706F7274616E743B6865696768743A3130302521696D706F7274616E743B6D61782D77696474683A6E6F6E6521696D706F7274616E743B6D617267696E3A30206175746F21696D706F7274616E743B746F703A3021696D70';
wwv_flow_api.g_varchar2_table(43) := '6F7274616E743B6C6566743A3021696D706F7274616E747D2E616C6572746966792E616A732D6D6178696D697A65642E616A732D6D6F64656C657373202E616A732D6D6F64616C7B706F736974696F6E3A666978656421696D706F7274616E743B6D696E';
wwv_flow_api.g_varchar2_table(44) := '2D6865696768743A3130302521696D706F7274616E743B6D61782D6865696768743A6E6F6E6521696D706F7274616E743B6D617267696E3A3021696D706F7274616E747D2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D636F6D';
wwv_flow_api.g_varchar2_table(45) := '6D616E647320627574746F6E2E616A732D6D6178696D697A657B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141425141414141';
wwv_flow_api.g_varchar2_table(46) := '5543414D4141414336562B302F414141415631424D5645554141414275626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D35';
wwv_flow_api.g_varchar2_table(47) := '75626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3575626D3559767756654141414148485253546C4D414151494C4542456B4A696F744C6938774D5646535A3278306C4B7172734D505A364F6E7A58427A696B5141';
wwv_flow_api.g_varchar2_table(48) := '414147464A52454655474E4F647A306B4F6743414D514E477134497A7A694C332F4F51305232356F51452F32723569314B41586870515537644B41774C526B4E544755626444793745715573494E393631456F6F4837432F30467A54697A674171695964';
wwv_flow_api.g_varchar2_table(49) := '7831526F6B57754376564E665150704461435766476B54444F636C38617765644F706277536158353144455541414141415355564F524B35435949493D293B6261636B67726F756E642D73697A653A313070787D2E616C6572746966792E616A732D7265';
wwv_flow_api.g_varchar2_table(50) := '73697A61626C65202E616A732D6469616C6F672C2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D6469616C6F677B70616464696E673A307D2E616C6572746966792E616A732D726573697A61626C65202E616A732D636F6D6D61';
wwv_flow_api.g_varchar2_table(51) := '6E64732C2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D636F6D6D616E64737B6D617267696E3A313470782032347078203020307D2E616C6572746966792E616A732D726573697A61626C65202E616A732D6865616465722C2E';
wwv_flow_api.g_varchar2_table(52) := '616C6572746966792E616A732D6D6178696D697A6564202E616A732D6865616465727B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B72696768743A303B6D617267696E3A303B70616464696E673A313670782032347078';
wwv_flow_api.g_varchar2_table(53) := '7D2E616C6572746966792E616A732D726573697A61626C65202E616A732D626F64792C2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D626F64797B6D696E2D6865696768743A32323470783B646973706C61793A696E6C696E65';
wwv_flow_api.g_varchar2_table(54) := '2D626C6F636B7D2E616C6572746966792E616A732D726573697A61626C65202E616A732D626F6479202E616A732D636F6E74656E742C2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D626F6479202E616A732D636F6E74656E74';
wwv_flow_api.g_varchar2_table(55) := '7B706F736974696F6E3A6162736F6C7574653B746F703A353070783B72696768743A323470783B626F74746F6D3A353070783B6C6566743A323470783B6F766572666C6F773A6175746F7D2E616C6572746966792E616A732D726573697A61626C65202E';
wwv_flow_api.g_varchar2_table(56) := '616A732D666F6F7465722C2E616C6572746966792E616A732D6D6178696D697A6564202E616A732D666F6F7465727B706F736974696F6E3A6162736F6C7574653B6C6566743A303B72696768743A303B626F74746F6D3A303B6D617267696E3A307D2E61';
wwv_flow_api.g_varchar2_table(57) := '6C6572746966792E616A732D726573697A61626C653A6E6F74282E616A732D6D6178696D697A656429202E616A732D6469616C6F677B6D696E2D77696474683A35343870787D2E616C6572746966792E616A732D726573697A61626C653A6E6F74282E61';
wwv_flow_api.g_varchar2_table(58) := '6A732D6D6178696D697A656429202E616A732D68616E646C657B646973706C61793A626C6F636B7D2E616C6572746966792E616A732D6D6F7661626C653A6E6F74282E616A732D6D6178696D697A656429202E616A732D6865616465727B637572736F72';
wwv_flow_api.g_varchar2_table(59) := '3A6D6F76657D2E616C6572746966792E616A732D6D6F64656C657373202E616A732D64696D6D65722C2E616C6572746966792E616A732D6D6F64656C657373202E616A732D72657365747B646973706C61793A6E6F6E657D2E616C6572746966792E616A';
wwv_flow_api.g_varchar2_table(60) := '732D6D6F64656C657373202E616A732D6D6F64616C7B6F766572666C6F773A76697369626C653B6D61782D77696474683A6E6F6E653B6D61782D6865696768743A307D2E616C6572746966792E616A732D6D6F64656C6573732E616A732D70696E6E6162';
wwv_flow_api.g_varchar2_table(61) := '6C65202E616A732D636F6D6D616E647320627574746F6E2E616A732D70696E7B646973706C61793A696E6C696E652D626C6F636B3B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F';
wwv_flow_api.g_varchar2_table(62) := '5277304B47676F414141414E535568455567414141416F414141414B434159414141434E4D732B394141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A3052566830';
wwv_flow_api.g_varchar2_table(63) := '51334A6C595852706232346756476C745A5141774E7938784D7938784E4F725A71756741414141636445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D41414141516B6C4551565159';
wwv_flow_api.g_varchar2_table(64) := '6C6357504D51344149417743715539753338476263624852574E314D764B51446851464D45704B496D474A41306743676E597730563072777873656735657254346F536B515649356439662B65392B7841304E624C705766697450584141414141456C46';
wwv_flow_api.g_varchar2_table(65) := '546B5375516D4343297D2E616C6572746966792E616A732D6D6F64656C6573732E616A732D756E70696E6E6564202E616A732D6D6F64616C7B706F736974696F6E3A6162736F6C7574657D2E616C6572746966792E616A732D6D6F64656C6573732E616A';
wwv_flow_api.g_varchar2_table(66) := '732D756E70696E6E6564202E616A732D636F6D6D616E647320627574746F6E2E616A732D70696E7B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E53';
wwv_flow_api.g_varchar2_table(67) := '5568455567414141416F414141414B434159414141434E4D732B394141414142484E4353565149434167496641686B6941414141416C7753466C7A4141414C45674141437849423074312B2F41414141425A305256683051334A6C595852706232346756';
wwv_flow_api.g_varchar2_table(68) := '476C745A5141774E7938784D7938784E4F725A71756741414141636445565964464E765A6E523359584A6C4145466B62324A6C49455A70636D563362334A7263794244557A626F764C4B4D414141414F306C45515651596C5750382F2F382F417A474169';
wwv_flow_api.g_varchar2_table(69) := '5368563641714C6934747847732B434C6F424C4D59624333743565526D79615766425A687777596B58324E547850527669624B6A52685734774D4168786B5947624C7533704541414141415355564F524B35435949493D297D2E616C6572746966792E61';
wwv_flow_api.g_varchar2_table(70) := '6A732D6D6F64656C6573733A6E6F74282E616A732D756E70696E6E656429202E616A732D626F64797B6D61782D6865696768743A35303070783B6F766572666C6F773A6175746F7D2E616C6572746966792E616A732D6261736963202E616A732D686561';
wwv_flow_api.g_varchar2_table(71) := '6465727B6F7061636974793A307D2E616C6572746966792E616A732D6261736963202E616A732D666F6F7465727B7669736962696C6974793A68696464656E7D2E616C6572746966792E616A732D6672616D656C657373202E616A732D6865616465727B';
wwv_flow_api.g_varchar2_table(72) := '706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B72696768743A303B6D696E2D6865696768743A363070783B6D617267696E3A303B70616464696E673A303B6F7061636974793A303B7A2D696E6465783A317D2E616C657274';
wwv_flow_api.g_varchar2_table(73) := '6966792E616A732D6672616D656C657373202E616A732D666F6F7465727B646973706C61793A6E6F6E657D2E616C6572746966792E616A732D6672616D656C657373202E616A732D626F6479202E616A732D636F6E74656E747B706F736974696F6E3A61';
wwv_flow_api.g_varchar2_table(74) := '62736F6C7574653B746F703A303B72696768743A303B626F74746F6D3A303B6C6566743A307D2E616C6572746966792E616A732D6672616D656C6573733A6E6F74282E616A732D726573697A61626C6529202E616A732D6469616C6F677B70616464696E';
wwv_flow_api.g_varchar2_table(75) := '672D746F703A307D2E616C6572746966792E616A732D6672616D656C6573733A6E6F74282E616A732D726573697A61626C6529202E616A732D6469616C6F67202E616A732D636F6D6D616E64737B6D617267696E2D746F703A307D2E616A732D6E6F2D6F';
wwv_flow_api.g_varchar2_table(76) := '766572666C6F777B6F766572666C6F773A68696464656E21696D706F7274616E743B6F75746C696E653A307D2E616A732D6E6F2D6F766572666C6F772E616A732D66697865647B706F736974696F6E3A66697865643B746F703A303B72696768743A303B';
wwv_flow_api.g_varchar2_table(77) := '626F74746F6D3A303B6C6566743A303B6F766572666C6F772D793A7363726F6C6C21696D706F7274616E747D2E616A732D6E6F2D73656C656374696F6E2C2E616A732D6E6F2D73656C656374696F6E202A7B2D7765626B69742D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(78) := '743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D406D656469612073637265656E20616E6420286D61782D77696474683A35363870';
wwv_flow_api.g_varchar2_table(79) := '78297B2E616C657274696679202E616A732D6469616C6F677B6D696E2D77696474683A31353070787D2E616C6572746966793A6E6F74282E616A732D6D6178696D697A656429202E616A732D6D6F64616C7B70616464696E673A302035257D2E616C6572';
wwv_flow_api.g_varchar2_table(80) := '746966793A6E6F74282E616A732D6D6178696D697A6564292E616A732D726573697A61626C65202E616A732D6469616C6F677B6D696E2D77696474683A696E697469616C3B6D696E2D77696474683A6175746F7D7D402D6D6F7A2D646F63756D656E7420';
wwv_flow_api.g_varchar2_table(81) := '75726C2D70726566697828297B2E616C65727469667920627574746F6E3A666F6375737B6F75746C696E653A31707820646F7474656420233335393364327D7D2E616C657274696679202E616A732D64696D6D65722C2E616C657274696679202E616A73';
wwv_flow_api.g_varchar2_table(82) := '2D6D6F64616C7B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30293B7472616E736974696F6E2D70726F70657274793A6F706163697479';
wwv_flow_api.g_varchar2_table(83) := '2C7669736962696C6974793B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A6C696E6561723B7472616E736974696F6E2D6475726174696F6E3A3235306D737D2E616C6572746966792E616A732D68696464656E202E616A732D6469';
wwv_flow_api.g_varchar2_table(84) := '6D6D65722C2E616C6572746966792E616A732D68696464656E202E616A732D6D6F64616C7B7669736962696C6974793A68696464656E3B6F7061636974793A307D2E616C6572746966792E616A732D696E3A6E6F74282E616A732D68696464656E29202E';
wwv_flow_api.g_varchar2_table(85) := '616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A3530306D733B616E696D6174696F6E2D6475726174696F6E3A3530306D737D2E616C6572746966792E616A732D6F75742E616A732D68696464656E202E61';
wwv_flow_api.g_varchar2_table(86) := '6A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A3235306D733B616E696D6174696F6E2D6475726174696F6E3A3235306D737D2E616C657274696679202E616A732D6469616C6F672E616A732D7368616B657B';
wwv_flow_api.g_varchar2_table(87) := '2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D7368616B653B616E696D6174696F6E2D6E616D653A616A732D7368616B653B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A2E31733B616E696D6174696F6E2D64';
wwv_flow_api.g_varchar2_table(88) := '75726174696F6E3A2E31733B2D7765626B69742D616E696D6174696F6E2D66696C6C2D6D6F64653A626F74683B616E696D6174696F6E2D66696C6C2D6D6F64653A626F74687D402D7765626B69742D6B65796672616D657320616A732D7368616B657B30';
wwv_flow_api.g_varchar2_table(89) := '252C313030257B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30297D3130252C3330252C3530252C3730252C3930257B2D7765626B6974';
wwv_flow_api.g_varchar2_table(90) := '2D7472616E73666F726D3A7472616E736C6174653364282D313070782C302C30293B7472616E73666F726D3A7472616E736C6174653364282D313070782C302C30297D3230252C3430252C3630252C3830257B2D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(91) := '3A7472616E736C617465336428313070782C302C30293B7472616E73666F726D3A7472616E736C617465336428313070782C302C30297D7D406B65796672616D657320616A732D7368616B657B30252C313030257B2D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(92) := '726D3A7472616E736C617465336428302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30297D3130252C3330252C3530252C3730252C3930257B2D7765626B69742D7472616E73666F726D3A7472616E736C6174653364';
wwv_flow_api.g_varchar2_table(93) := '282D313070782C302C30293B7472616E73666F726D3A7472616E736C6174653364282D313070782C302C30297D3230252C3430252C3630252C3830257B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428313070782C302C3029';
wwv_flow_api.g_varchar2_table(94) := '3B7472616E73666F726D3A7472616E736C617465336428313070782C302C30297D7D2E616C6572746966792E616A732D736C6964652E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F677B2D7765626B69742D616E';
wwv_flow_api.g_varchar2_table(95) := '696D6174696F6E2D6E616D653A616A732D736C696465496E3B616E696D6174696F6E2D6E616D653A616A732D736C696465496E3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A6965722830';
wwv_flow_api.g_varchar2_table(96) := '2E3137352C302E3838352C302E33322C312E323735293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302E3137352C302E3838352C302E33322C312E323735297D2E616C6572746966792E616A732D';
wwv_flow_api.g_varchar2_table(97) := '736C6964652E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D736C6964654F75743B616E696D6174696F6E2D6E616D653A616A732D736C6964654F7574';
wwv_flow_api.g_varchar2_table(98) := '3B2D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302E362C2D302E32382C302E3733352C302E303435293B616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A637562';
wwv_flow_api.g_varchar2_table(99) := '69632D62657A69657228302E362C2D302E32382C302E3733352C302E303435297D2E616C6572746966792E616A732D7A6F6F6D2E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F677B2D7765626B69742D616E696D';
wwv_flow_api.g_varchar2_table(100) := '6174696F6E2D6E616D653A616A732D7A6F6F6D496E3B616E696D6174696F6E2D6E616D653A616A732D7A6F6F6D496E7D2E616C6572746966792E616A732D7A6F6F6D2E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F677B2D77';
wwv_flow_api.g_varchar2_table(101) := '65626B69742D616E696D6174696F6E2D6E616D653A616A732D7A6F6F6D4F75743B616E696D6174696F6E2D6E616D653A616A732D7A6F6F6D4F75747D2E616C6572746966792E616A732D666164652E616A732D696E3A6E6F74282E616A732D6869646465';
wwv_flow_api.g_varchar2_table(102) := '6E29202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D66616465496E3B616E696D6174696F6E2D6E616D653A616A732D66616465496E7D2E616C6572746966792E616A732D666164652E616A732D6F75';
wwv_flow_api.g_varchar2_table(103) := '742E616A732D68696464656E202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D666164654F75743B616E696D6174696F6E2D6E616D653A616A732D666164654F75747D2E616C6572746966792E616A73';
wwv_flow_api.g_varchar2_table(104) := '2D70756C73652E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D70756C7365496E3B616E696D6174696F6E2D6E616D653A616A732D70756C';
wwv_flow_api.g_varchar2_table(105) := '7365496E7D2E616C6572746966792E616A732D70756C73652E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D70756C73654F75743B616E696D6174696F';
wwv_flow_api.g_varchar2_table(106) := '6E2D6E616D653A616A732D70756C73654F75747D2E616C6572746966792E616A732D666C6970782E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A61';
wwv_flow_api.g_varchar2_table(107) := '6A732D666C6970496E583B616E696D6174696F6E2D6E616D653A616A732D666C6970496E587D2E616C6572746966792E616A732D666C6970782E616A732D6F75742E616A732D68696464656E202E616A732D6469616C6F677B2D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(108) := '6D6174696F6E2D6E616D653A616A732D666C69704F7574583B616E696D6174696F6E2D6E616D653A616A732D666C69704F7574587D2E616C6572746966792E616A732D666C6970792E616A732D696E3A6E6F74282E616A732D68696464656E29202E616A';
wwv_flow_api.g_varchar2_table(109) := '732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D666C6970496E593B616E696D6174696F6E2D6E616D653A616A732D666C6970496E597D2E616C6572746966792E616A732D666C6970792E616A732D6F75742E61';
wwv_flow_api.g_varchar2_table(110) := '6A732D68696464656E202E616A732D6469616C6F677B2D7765626B69742D616E696D6174696F6E2D6E616D653A616A732D666C69704F7574593B616E696D6174696F6E2D6E616D653A616A732D666C69704F7574597D402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(111) := '616D657320616A732D70756C7365496E7B30252C3230252C3430252C3630252C3830252C313030257B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302E3231352C302E36312C302E3335352C3129';
wwv_flow_api.g_varchar2_table(112) := '7D30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E332C302E332C302E33293B7472616E73666F726D3A7363616C65336428302E332C302E332C302E33297D3230257B2D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(113) := '73666F726D3A7363616C65336428312E312C312E312C312E31293B7472616E73666F726D3A7363616C65336428312E312C312E312C312E31297D3430257B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E392C302E392C302E3929';
wwv_flow_api.g_varchar2_table(114) := '3B7472616E73666F726D3A7363616C65336428302E392C302E392C302E39297D3630257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E30332C312E30332C312E3033293B7472616E73666F726D3A7363';
wwv_flow_api.g_varchar2_table(115) := '616C65336428312E30332C312E30332C312E3033297D3830257B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E39372C302E39372C302E3937293B7472616E73666F726D3A7363616C65336428302E39372C302E39372C302E3937';
wwv_flow_api.g_varchar2_table(116) := '297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D7D406B65796672616D657320616A732D70756C7365496E7B30';
wwv_flow_api.g_varchar2_table(117) := '252C3230252C3430252C3630252C3830252C313030257B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A63756269632D62657A69657228302E3231352C302E36312C302E3335352C31297D30257B6F7061636974793A303B2D776562';
wwv_flow_api.g_varchar2_table(118) := '6B69742D7472616E73666F726D3A7363616C65336428302E332C302E332C302E33293B7472616E73666F726D3A7363616C65336428302E332C302E332C302E33297D3230257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E312C';
wwv_flow_api.g_varchar2_table(119) := '312E312C312E31293B7472616E73666F726D3A7363616C65336428312E312C312E312C312E31297D3430257B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E392C302E392C302E39293B7472616E73666F726D3A7363616C653364';
wwv_flow_api.g_varchar2_table(120) := '28302E392C302E392C302E39297D3630257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E30332C312E30332C312E3033293B7472616E73666F726D3A7363616C65336428312E30332C312E30332C312E';
wwv_flow_api.g_varchar2_table(121) := '3033297D3830257B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E39372C302E39372C302E3937293B7472616E73666F726D3A7363616C65336428302E39372C302E39372C302E3937297D313030257B6F7061636974793A313B2D';
wwv_flow_api.g_varchar2_table(122) := '7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D7D402D7765626B69742D6B65796672616D657320616A732D70756C73654F75747B3230257B2D7765626B69';
wwv_flow_api.g_varchar2_table(123) := '742D7472616E73666F726D3A7363616C65336428302E392C302E392C302E39293B7472616E73666F726D3A7363616C65336428302E392C302E392C302E39297D3530252C3535257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(124) := '7363616C65336428312E312C312E312C312E31293B7472616E73666F726D3A7363616C65336428312E312C312E312C312E31297D313030257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E332C302E33';
wwv_flow_api.g_varchar2_table(125) := '2C302E33293B7472616E73666F726D3A7363616C65336428302E332C302E332C302E33297D7D406B65796672616D657320616A732D70756C73654F75747B3230257B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E392C302E392C';
wwv_flow_api.g_varchar2_table(126) := '302E39293B7472616E73666F726D3A7363616C65336428302E392C302E392C302E39297D3530252C3535257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E312C312E312C312E31293B7472616E73666F';
wwv_flow_api.g_varchar2_table(127) := '726D3A7363616C65336428312E312C312E312C312E31297D313030257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E332C302E332C302E33293B7472616E73666F726D3A7363616C65336428302E332C';
wwv_flow_api.g_varchar2_table(128) := '302E332C302E33297D7D402D7765626B69742D6B65796672616D657320616A732D7A6F6F6D496E7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235293B7472616E73';
wwv_flow_api.g_varchar2_table(129) := '666F726D3A7363616C65336428302E32352C302E32352C302E3235297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31';
wwv_flow_api.g_varchar2_table(130) := '297D7D406B65796672616D657320616A732D7A6F6F6D496E7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235293B7472616E73666F726D3A7363616C65336428302E';
wwv_flow_api.g_varchar2_table(131) := '32352C302E32352C302E3235297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D7D402D7765626B69742D6B6579';
wwv_flow_api.g_varchar2_table(132) := '6672616D657320616A732D7A6F6F6D4F75747B30257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D313030257B6F70616369';
wwv_flow_api.g_varchar2_table(133) := '74793A303B2D7765626B69742D7472616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235293B7472616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235297D7D406B65796672616D657320616A732D7A6F6F';
wwv_flow_api.g_varchar2_table(134) := '6D4F75747B30257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D313030257B6F7061636974793A303B2D7765626B69742D74';
wwv_flow_api.g_varchar2_table(135) := '72616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235293B7472616E73666F726D3A7363616C65336428302E32352C302E32352C302E3235297D7D402D7765626B69742D6B65796672616D657320616A732D66616465496E7B3025';
wwv_flow_api.g_varchar2_table(136) := '7B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D657320616A732D66616465496E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D402D7765626B69742D6B65796672616D657320616A73';
wwv_flow_api.g_varchar2_table(137) := '2D666164654F75747B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D406B65796672616D657320616A732D666164654F75747B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D402D7765626B69742D6B';
wwv_flow_api.g_varchar2_table(138) := '65796672616D657320616A732D666C6970496E587B30257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3930646567293B7472616E73666F726D3A70657273706563';
wwv_flow_api.g_varchar2_table(139) := '746976652834303070782920726F74617465336428312C302C302C3930646567293B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E3B6F7061636974793A307D3430257B2D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(140) := '3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E73';
wwv_flow_api.g_varchar2_table(141) := '6974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E7D3630257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3130646567293B7472616E73666F';
wwv_flow_api.g_varchar2_table(142) := '726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3130646567293B6F7061636974793A317D3830257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F746174';
wwv_flow_api.g_varchar2_table(143) := '65336428312C302C302C2D35646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D35646567297D313030257B2D7765626B69742D7472616E73666F726D3A706572737065637469';
wwv_flow_api.g_varchar2_table(144) := '7665283430307078293B7472616E73666F726D3A7065727370656374697665283430307078297D7D406B65796672616D657320616A732D666C6970496E587B30257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070';
wwv_flow_api.g_varchar2_table(145) := '782920726F74617465336428312C302C302C3930646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3930646567293B7472616E736974696F6E2D74696D696E672D66756E637469';
wwv_flow_api.g_varchar2_table(146) := '6F6E3A656173652D696E3B6F7061636974793A307D3430257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E73666F726D3A7065727370';
wwv_flow_api.g_varchar2_table(147) := '6563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E7D3630257B2D7765626B69742D7472616E73666F726D3A706572737065';
wwv_flow_api.g_varchar2_table(148) := '63746976652834303070782920726F74617465336428312C302C302C3130646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3130646567293B6F7061636974793A317D3830257B';
wwv_flow_api.g_varchar2_table(149) := '2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D35646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C30';
wwv_flow_api.g_varchar2_table(150) := '2C302C2D35646567297D313030257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B7472616E73666F726D3A7065727370656374697665283430307078297D7D402D7765626B69742D6B65796672616D6573';
wwv_flow_api.g_varchar2_table(151) := '20616A732D666C69704F7574587B30257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B7472616E73666F726D3A7065727370656374697665283430307078297D3330257B2D7765626B69742D7472616E73';
wwv_flow_api.g_varchar2_table(152) := '666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B6F';
wwv_flow_api.g_varchar2_table(153) := '7061636974793A317D313030257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3930646567293B7472616E73666F726D3A7065727370656374697665283430307078';
wwv_flow_api.g_varchar2_table(154) := '2920726F74617465336428312C302C302C3930646567293B6F7061636974793A307D7D406B65796672616D657320616A732D666C69704F7574587B30257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B74';
wwv_flow_api.g_varchar2_table(155) := '72616E73666F726D3A7065727370656374697665283430307078297D3330257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B7472616E73666F72';
wwv_flow_api.g_varchar2_table(156) := '6D3A70657273706563746976652834303070782920726F74617465336428312C302C302C2D3230646567293B6F7061636974793A317D313030257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F7461';
wwv_flow_api.g_varchar2_table(157) := '7465336428312C302C302C3930646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428312C302C302C3930646567293B6F7061636974793A307D7D402D7765626B69742D6B65796672616D65732061';
wwv_flow_api.g_varchar2_table(158) := '6A732D666C6970496E597B30257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3930646567293B7472616E73666F726D3A7065727370656374697665283430307078';
wwv_flow_api.g_varchar2_table(159) := '2920726F74617465336428302C312C302C3930646567293B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E3B6F7061636974793A307D3430257B2D7765626B69742D7472616E73666F726D3A706572737065637469';
wwv_flow_api.g_varchar2_table(160) := '76652834303070782920726F74617465336428302C312C302C2D3230646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D3230646567293B7472616E736974696F6E2D74696D69';
wwv_flow_api.g_varchar2_table(161) := '6E672D66756E6374696F6E3A656173652D696E7D3630257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3130646567293B7472616E73666F726D3A70657273706563';
wwv_flow_api.g_varchar2_table(162) := '746976652834303070782920726F74617465336428302C312C302C3130646567293B6F7061636974793A317D3830257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C';
wwv_flow_api.g_varchar2_table(163) := '2D35646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D35646567297D313030257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B';
wwv_flow_api.g_varchar2_table(164) := '7472616E73666F726D3A7065727370656374697665283430307078297D7D406B65796672616D657320616A732D666C6970496E597B30257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F7461746533';
wwv_flow_api.g_varchar2_table(165) := '6428302C312C302C3930646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3930646567293B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E';
wwv_flow_api.g_varchar2_table(166) := '3B6F7061636974793A307D3430257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D3230646567293B7472616E73666F726D3A706572737065637469766528343030';
wwv_flow_api.g_varchar2_table(167) := '70782920726F74617465336428302C312C302C2D3230646567293B7472616E736974696F6E2D74696D696E672D66756E6374696F6E3A656173652D696E7D3630257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070';
wwv_flow_api.g_varchar2_table(168) := '782920726F74617465336428302C312C302C3130646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3130646567293B6F7061636974793A317D3830257B2D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(169) := '616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D35646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D35646567297D';
wwv_flow_api.g_varchar2_table(170) := '313030257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B7472616E73666F726D3A7065727370656374697665283430307078297D7D402D7765626B69742D6B65796672616D657320616A732D666C69704F';
wwv_flow_api.g_varchar2_table(171) := '7574597B30257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B7472616E73666F726D3A7065727370656374697665283430307078297D3330257B2D7765626B69742D7472616E73666F726D3A7065727370';
wwv_flow_api.g_varchar2_table(172) := '6563746976652834303070782920726F74617465336428302C312C302C2D3135646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D3135646567293B6F7061636974793A317D31';
wwv_flow_api.g_varchar2_table(173) := '3030257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3930646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F746174653364';
wwv_flow_api.g_varchar2_table(174) := '28302C312C302C3930646567293B6F7061636974793A307D7D406B65796672616D657320616A732D666C69704F7574597B30257B2D7765626B69742D7472616E73666F726D3A7065727370656374697665283430307078293B7472616E73666F726D3A70';
wwv_flow_api.g_varchar2_table(175) := '65727370656374697665283430307078297D3330257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C2D3135646567293B7472616E73666F726D3A7065727370656374';
wwv_flow_api.g_varchar2_table(176) := '6976652834303070782920726F74617465336428302C312C302C2D3135646567293B6F7061636974793A317D313030257B2D7765626B69742D7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C30';
wwv_flow_api.g_varchar2_table(177) := '2C3930646567293B7472616E73666F726D3A70657273706563746976652834303070782920726F74617465336428302C312C302C3930646567293B6F7061636974793A307D7D402D7765626B69742D6B65796672616D657320616A732D736C696465496E';
wwv_flow_api.g_varchar2_table(178) := '7B30257B6D617267696E2D746F703A2D313030257D313030257B6D617267696E2D746F703A35257D7D406B65796672616D657320616A732D736C696465496E7B30257B6D617267696E2D746F703A2D313030257D313030257B6D617267696E2D746F703A';
wwv_flow_api.g_varchar2_table(179) := '35257D7D402D7765626B69742D6B65796672616D657320616A732D736C6964654F75747B30257B6D617267696E2D746F703A35257D313030257B6D617267696E2D746F703A2D313030257D7D406B65796672616D657320616A732D736C6964654F75747B';
wwv_flow_api.g_varchar2_table(180) := '30257B6D617267696E2D746F703A35257D313030257B6D617267696E2D746F703A2D313030257D7D2E616C6572746966792D6E6F7469666965727B706F736974696F6E3A66697865643B77696474683A303B6F766572666C6F773A76697369626C653B7A';
wwv_flow_api.g_varchar2_table(181) := '2D696E6465783A313938323B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30297D2E616C6572746966792D6E6F746966696572202E616A';
wwv_flow_api.g_varchar2_table(182) := '732D6D6573736167657B706F736974696F6E3A72656C61746976653B77696474683A32363070783B6D61782D6865696768743A303B70616464696E673A303B6F7061636974793A303B6D617267696E3A303B2D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(183) := '7472616E736C617465336428302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30293B7472616E736974696F6E2D6475726174696F6E3A3235306D733B7472616E736974696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(184) := '3A6C696E6561727D2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D76697369626C657B7472616E736974696F6E2D6475726174696F6E3A3530306D733B7472616E736974696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(185) := '74696F6E3A63756269632D62657A69657228302E3137352C302E3838352C302E33322C312E323735293B6F7061636974793A313B6D61782D6865696768743A313030253B70616464696E673A313570783B6D617267696E2D746F703A313070787D2E616C';
wwv_flow_api.g_varchar2_table(186) := '6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D737563636573737B6261636B67726F756E643A726762612839312C3138392C3131342C302E3935297D2E616C6572746966792D6E6F746966696572202E616A732D6D65';
wwv_flow_api.g_varchar2_table(187) := '73736167652E616A732D6572726F727B6261636B67726F756E643A72676261283231372C39322C39322C302E3935297D2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D7761726E696E677B6261636B67726F75';
wwv_flow_api.g_varchar2_table(188) := '6E643A72676261283235322C3234382C3231352C302E3935297D2E616C6572746966792D6E6F746966696572202E616A732D6D657373616765202E616A732D636C6F73657B706F736974696F6E3A6162736F6C7574653B746F703A303B72696768743A30';
wwv_flow_api.g_varchar2_table(189) := '3B77696474683A313670783B6865696768743A313670783B637572736F723A706F696E7465723B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E5355';
wwv_flow_api.g_varchar2_table(190) := '684555674141414167414141414943415941414144454437364C414141414247644254554541414C4750432F7868425141414146424A5245465547426C316A30454B41444549412B76652F50396639626831684569684E42666A56434F317637524B5671';
wwv_flow_api.g_varchar2_table(191) := '4A4B346838674D35634150523432416B514570535850774D54796F6931336E354E3959714A65686D33466E72376E4C3144305A456244354F756247794337613967782B39654E4141414141456C46546B5375516D4343293B6261636B67726F756E642D72';
wwv_flow_api.g_varchar2_table(192) := '65706561743A6E6F2D7265706561743B6261636B67726F756E642D706F736974696F6E3A63656E7465722063656E7465723B6261636B67726F756E642D636F6C6F723A7267626128302C302C302C302E35293B626F726465722D746F702D72696768742D';
wwv_flow_api.g_varchar2_table(193) := '7261646975733A3270787D2E616C6572746966792D6E6F7469666965722E616A732D746F707B746F703A313070787D2E616C6572746966792D6E6F7469666965722E616A732D626F74746F6D7B626F74746F6D3A313070787D2E616C6572746966792D6E';
wwv_flow_api.g_varchar2_table(194) := '6F7469666965722E616A732D72696768747B72696768743A313070787D2E616C6572746966792D6E6F7469666965722E616A732D7269676874202E616A732D6D6573736167657B72696768743A2D33323070787D2E616C6572746966792D6E6F74696669';
wwv_flow_api.g_varchar2_table(195) := '65722E616A732D7269676874202E616A732D6D6573736167652E616A732D76697369626C657B72696768743A32393070787D2E616C6572746966792D6E6F7469666965722E616A732D6C6566747B6C6566743A313070787D2E616C6572746966792D6E6F';
wwv_flow_api.g_varchar2_table(196) := '7469666965722E616A732D6C656674202E616A732D6D6573736167657B6C6566743A2D33303070787D2E616C6572746966792D6E6F7469666965722E616A732D6C656674202E616A732D6D6573736167652E616A732D76697369626C657B6C6566743A30';
wwv_flow_api.g_varchar2_table(197) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92428236118845224)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'css/alertify.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20616C6572746966796A7320312E31302E3020687474703A2F2F616C6572746966796A732E636F6D0A202A20416C6572746966794A532069732061206A617661736372697074206672616D65776F726B20666F7220646576656C6F70696E';
wwv_flow_api.g_varchar2_table(2) := '67207072657474792062726F77736572206469616C6F677320616E64206E6F74696669636174696F6E732E0A202A20436F707972696768742032303137204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E63';
wwv_flow_api.g_varchar2_table(3) := '6F6D3E2028687474703A2F2F616C6572746966796A732E636F6D29200A202A204C6963656E73656420756E6465722047504C2033203C68747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F67706C2D332E303E2A2F0A2E616C';
wwv_flow_api.g_varchar2_table(4) := '657274696679202E616A732D6469616C6F67207B0A20206261636B67726F756E642D636F6C6F723A2077686974653B0A2020626F782D736861646F773A203070782031357078203230707820307078207267626128302C20302C20302C20302E3235293B';
wwv_flow_api.g_varchar2_table(5) := '0A2020626F726465722D7261646975733A203270783B0A7D0A2E616C657274696679202E616A732D686561646572207B0A2020636F6C6F723A20626C61636B3B0A2020666F6E742D7765696768743A20626F6C643B0A20206261636B67726F756E643A20';
wwv_flow_api.g_varchar2_table(6) := '236661666166613B0A2020626F726465722D626F74746F6D3A20236565652031707820736F6C69643B0A2020626F726465722D7261646975733A2032707820327078203020303B0A7D0A2E616C657274696679202E616A732D626F6479207B0A2020636F';
wwv_flow_api.g_varchar2_table(7) := '6C6F723A20626C61636B3B0A7D0A2E616C657274696679202E616A732D626F6479202E616A732D636F6E74656E74202E616A732D696E707574207B0A2020646973706C61793A20626C6F636B3B0A202077696474683A20313030253B0A20207061646469';
wwv_flow_api.g_varchar2_table(8) := '6E673A203870783B0A20206D617267696E3A203470783B0A2020626F726465722D7261646975733A203270783B0A2020626F726465723A2031707820736F6C696420234343433B0A7D0A2E616C657274696679202E616A732D626F6479202E616A732D63';
wwv_flow_api.g_varchar2_table(9) := '6F6E74656E742070207B0A20206D617267696E3A20303B0A7D0A2E616C657274696679202E616A732D666F6F746572207B0A20206261636B67726F756E643A20236662666266623B0A2020626F726465722D746F703A20236565652031707820736F6C69';
wwv_flow_api.g_varchar2_table(10) := '643B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E73202E616A732D627574746F6E207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(11) := '6F723A207472616E73706172656E743B0A2020636F6C6F723A20233030303B0A2020626F726465723A20303B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A20626F6C643B0A2020746578742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(12) := '6D3A207570706572636173653B0A7D0A2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E73202E616A732D627574746F6E2E616A732D6F6B207B0A2020636F6C6F723A20233335393344323B0A7D0A2E616C6572746966';
wwv_flow_api.g_varchar2_table(13) := '792D6E6F746966696572202E616A732D6D657373616765207B0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C20302E3935293B0A2020636F6C6F723A20233030303B0A2020746578742D616C69676E3A2063656E74';
wwv_flow_api.g_varchar2_table(14) := '65723B0A2020626F726465723A20736F6C69642031707820236464643B0A2020626F726465722D7261646975733A203270783B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D73756363657373207B0A';
wwv_flow_api.g_varchar2_table(15) := '2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20726762612839312C203138392C203131342C20302E3935293B0A2020746578742D736861646F773A202D317078202D3170782030207267626128302C20302C20302C20302E3529';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D6572726F72207B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A2072676261283231372C2039322C2039322C20302E393529';
wwv_flow_api.g_varchar2_table(17) := '3B0A2020746578742D736861646F773A202D317078202D3170782030207267626128302C20302C20302C20302E35293B0A7D0A2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D7761726E696E67207B0A202062';
wwv_flow_api.g_varchar2_table(18) := '61636B67726F756E643A2072676261283235322C203234382C203231352C20302E3935293B0A2020626F726465722D636F6C6F723A20233939393B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92428695754845224)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'css/default.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20616C6572746966796A7320312E31302E3020687474703A2F2F616C6572746966796A732E636F6D0A202A20416C6572746966794A532069732061206A617661736372697074206672616D65776F726B20666F7220646576656C6F70696E';
wwv_flow_api.g_varchar2_table(2) := '67207072657474792062726F77736572206469616C6F677320616E64206E6F74696669636174696F6E732E0A202A20436F707972696768742032303137204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E63';
wwv_flow_api.g_varchar2_table(3) := '6F6D3E2028687474703A2F2F616C6572746966796A732E636F6D29200A202A204C6963656E73656420756E6465722047504C2033203C68747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F67706C2D332E303E2A2F0A2E616C';
wwv_flow_api.g_varchar2_table(4) := '657274696679202E616A732D6469616C6F677B6261636B67726F756E642D636F6C6F723A236666663B626F782D736861646F773A30203135707820323070782030207267626128302C302C302C2E3235293B626F726465722D7261646975733A3270787D';
wwv_flow_api.g_varchar2_table(5) := '2E616C657274696679202E616A732D6865616465727B636F6C6F723A233030303B666F6E742D7765696768743A3730303B6261636B67726F756E643A236661666166613B626F726465722D626F74746F6D3A236565652031707820736F6C69643B626F72';
wwv_flow_api.g_varchar2_table(6) := '6465722D7261646975733A32707820327078203020307D2E616C657274696679202E616A732D626F64797B636F6C6F723A233030307D2E616C657274696679202E616A732D626F6479202E616A732D636F6E74656E74202E616A732D696E7075747B6469';
wwv_flow_api.g_varchar2_table(7) := '73706C61793A626C6F636B3B77696474683A313030253B70616464696E673A3870783B6D617267696E3A3470783B626F726465722D7261646975733A3270783B626F726465723A31707820736F6C696420234343437D2E616C657274696679202E616A73';
wwv_flow_api.g_varchar2_table(8) := '2D626F6479202E616A732D636F6E74656E7420707B6D617267696E3A307D2E616C657274696679202E616A732D666F6F7465727B6261636B67726F756E643A236662666266623B626F726465722D746F703A236565652031707820736F6C69643B626F72';
wwv_flow_api.g_varchar2_table(9) := '6465722D7261646975733A30203020327078203270787D2E616C657274696679202E616A732D666F6F746572202E616A732D627574746F6E73202E616A732D627574746F6E7B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B63';
wwv_flow_api.g_varchar2_table(10) := '6F6C6F723A233030303B626F726465723A303B666F6E742D73697A653A313470783B666F6E742D7765696768743A3730303B746578742D7472616E73666F726D3A7570706572636173657D2E616C657274696679202E616A732D666F6F746572202E616A';
wwv_flow_api.g_varchar2_table(11) := '732D627574746F6E73202E616A732D627574746F6E2E616A732D6F6B7B636F6C6F723A233335393344327D2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167657B6261636B67726F756E643A72676261283235352C3235352C32';
wwv_flow_api.g_varchar2_table(12) := '35352C2E3935293B636F6C6F723A233030303B746578742D616C69676E3A63656E7465723B626F726465723A31707820736F6C696420236464643B626F726465722D7261646975733A3270787D2E616C6572746966792D6E6F746966696572202E616A73';
wwv_flow_api.g_varchar2_table(13) := '2D6D6573736167652E616A732D737563636573737B636F6C6F723A236666663B6261636B67726F756E643A726762612839312C3138392C3131342C2E3935293B746578742D736861646F773A2D317078202D3170782030207267626128302C302C302C2E';
wwv_flow_api.g_varchar2_table(14) := '35297D2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D6572726F727B636F6C6F723A236666663B6261636B67726F756E643A72676261283231372C39322C39322C2E3935293B746578742D736861646F773A2D';
wwv_flow_api.g_varchar2_table(15) := '317078202D3170782030207267626128302C302C302C2E35297D2E616C6572746966792D6E6F746966696572202E616A732D6D6573736167652E616A732D7761726E696E677B6261636B67726F756E643A72676261283235322C3234382C3231352C2E39';
wwv_flow_api.g_varchar2_table(16) := '35293B626F726465722D636F6C6F723A233939397D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92429062441845225)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'css/default.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A20616C6572746966796A7320312E31302E3020687474703A2F2F616C6572746966796A732E636F6D0A202A20416C6572746966794A532069732061206A617661736372697074206672616D65776F726B20666F7220646576656C6F70696E';
wwv_flow_api.g_varchar2_table(2) := '67207072657474792062726F77736572206469616C6F677320616E64206E6F74696669636174696F6E732E0A202A20436F707972696768742032303137204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E63';
wwv_flow_api.g_varchar2_table(3) := '6F6D3E2028687474703A2F2F616C6572746966796A732E636F6D29200A202A204C6963656E73656420756E6465722047504C2033203C68747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F67706C2D332E303E2A2F0A282066';
wwv_flow_api.g_varchar2_table(4) := '756E6374696F6E20282077696E646F772029207B0A202020202775736520737472696374273B0A202020200A202020202F2A2A0A20202020202A204B65797320656E756D0A20202020202A204074797065207B4F626A6563747D0A20202020202A2F0A20';
wwv_flow_api.g_varchar2_table(5) := '202020766172206B657973203D207B0A2020202020202020454E5445523A2031332C0A20202020202020204553433A2032372C0A202020202020202046313A203131322C0A20202020202020204631323A203132332C0A20202020202020204C4546543A';
wwv_flow_api.g_varchar2_table(6) := '2033372C0A202020202020202052494748543A2033390A202020207D3B0A202020202F2A2A0A20202020202A2044656661756C74206F7074696F6E73200A20202020202A204074797065207B4F626A6563747D0A20202020202A2F0A2020202076617220';
wwv_flow_api.g_varchar2_table(7) := '64656661756C7473203D207B0A20202020202020206175746F52657365743A747275652C0A202020202020202062617369633A66616C73652C0A2020202020202020636C6F7361626C653A747275652C0A2020202020202020636C6F7361626C65427944';
wwv_flow_api.g_varchar2_table(8) := '696D6D65723A747275652C0A20202020202020206672616D656C6573733A66616C73652C0A20202020202020206D61696E7461696E466F6375733A747275652C202F2F676C6F62616C2064656661756C74206E6F742070657220696E7374616E63652C20';
wwv_flow_api.g_varchar2_table(9) := '6170706C69657320746F20616C6C206469616C6F67730A20202020202020206D6178696D697A61626C653A747275652C0A20202020202020206D6F64616C3A747275652C0A20202020202020206D6F7661626C653A747275652C0A20202020202020206D';
wwv_flow_api.g_varchar2_table(10) := '6F7665426F756E6465643A66616C73652C0A20202020202020206F766572666C6F773A747275652C0A202020202020202070616464696E673A20747275652C0A202020202020202070696E6E61626C653A747275652C0A202020202020202070696E6E65';
wwv_flow_api.g_varchar2_table(11) := '643A747275652C0A202020202020202070726576656E74426F647953686966743A66616C73652C202F2F676C6F62616C2064656661756C74206E6F742070657220696E7374616E63652C206170706C69657320746F20616C6C206469616C6F67730A2020';
wwv_flow_api.g_varchar2_table(12) := '202020202020726573697A61626C653A747275652C0A202020202020202073746172744D6178696D697A65643A66616C73652C0A20202020202020207472616E736974696F6E3A2770756C7365272C0A20202020202020206E6F7469666965723A7B0A20';
wwv_flow_api.g_varchar2_table(13) := '202020202020202020202064656C61793A352C0A202020202020202020202020706F736974696F6E3A27626F74746F6D2D7269676874272C0A202020202020202020202020636C6F7365427574746F6E3A66616C73650A20202020202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(14) := '202020202020676C6F73736172793A7B0A2020202020202020202020207469746C653A27416C6572746966794A53272C0A2020202020202020202020206F6B3A20274F4B272C0A20202020202020202020202063616E63656C3A202743616E63656C272C';
wwv_flow_api.g_varchar2_table(15) := '0A2020202020202020202020206163636370743A2027416363657074272C0A20202020202020202020202064656E793A202744656E79272C0A202020202020202020202020636F6E6669726D3A2027436F6E6669726D272C0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(16) := '206465636C696E653A20274465636C696E65272C0A202020202020202020202020636C6F73653A2027436C6F7365272C0A2020202020202020202020206D6178696D697A653A20274D6178696D697A65272C0A202020202020202020202020726573746F';
wwv_flow_api.g_varchar2_table(17) := '72653A2027526573746F7265272C0A20202020202020207D2C0A20202020202020207468656D653A7B0A202020202020202020202020696E7075743A27616A732D696E707574272C0A2020202020202020202020206F6B3A27616A732D6F6B272C0A2020';
wwv_flow_api.g_varchar2_table(18) := '2020202020202020202063616E63656C3A27616A732D63616E63656C272C0A20202020202020207D0A202020207D3B0A202020200A202020202F2F686F6C6473206F70656E206469616C6F677320696E7374616E6365730A20202020766172206F70656E';
wwv_flow_api.g_varchar2_table(19) := '4469616C6F6773203D205B5D3B0A0A202020202F2A2A0A20202020202A205B48656C7065725D202041646473207468652073706563696669656420636C6173732865732920746F2074686520656C656D656E742E0A20202020202A0A20202020202A2040';
wwv_flow_api.g_varchar2_table(20) := '656C656D656E74207B6E6F64657D20202020202054686520656C656D656E740A20202020202A2040636C6173734E616D65207B737472696E677D20204F6E65206F72206D6F72652073706163652D73657061726174656420636C617373657320746F2062';
wwv_flow_api.g_varchar2_table(21) := '6520616464656420746F2074686520636C61737320617474726962757465206F662074686520656C656D656E742E0A20202020202A200A20202020202A204072657475726E207B756E646566696E65647D0A20202020202A2F0A2020202066756E637469';
wwv_flow_api.g_varchar2_table(22) := '6F6E20616464436C61737328656C656D656E742C636C6173734E616D6573297B0A2020202020202020656C656D656E742E636C6173734E616D65202B3D20272027202B20636C6173734E616D65733B0A202020207D0A202020200A202020202F2A2A0A20';
wwv_flow_api.g_varchar2_table(23) := '202020202A205B48656C7065725D202052656D6F766573207468652073706563696669656420636C617373286573292066726F6D2074686520656C656D656E742E0A20202020202A0A20202020202A2040656C656D656E74207B6E6F64657D2020202020';
wwv_flow_api.g_varchar2_table(24) := '2054686520656C656D656E740A20202020202A2040636C6173734E616D65207B737472696E677D20204F6E65206F72206D6F72652073706163652D73657061726174656420636C617373657320746F2062652072656D6F7665642066726F6D2074686520';
wwv_flow_api.g_varchar2_table(25) := '636C61737320617474726962757465206F662074686520656C656D656E742E0A20202020202A200A20202020202A204072657475726E207B756E646566696E65647D0A20202020202A2F0A2020202066756E6374696F6E2072656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(26) := '656C656D656E742C20636C6173734E616D657329207B0A2020202020202020766172206F726967696E616C203D20656C656D656E742E636C6173734E616D652E73706C697428272027293B0A202020202020202076617220746F426552656D6F76656420';
wwv_flow_api.g_varchar2_table(27) := '3D20636C6173734E616D65732E73706C697428272027293B0A2020202020202020666F7220287661722078203D20303B2078203C20746F426552656D6F7665642E6C656E6774683B2078202B3D203129207B0A2020202020202020202020207661722069';
wwv_flow_api.g_varchar2_table(28) := '6E646578203D206F726967696E616C2E696E6465784F6628746F426552656D6F7665645B785D293B0A20202020202020202020202069662028696E646578203E202D31297B0A202020202020202020202020202020206F726967696E616C2E73706C6963';
wwv_flow_api.g_varchar2_table(29) := '6528696E6465782C31293B0A2020202020202020202020207D0A20202020202020207D0A2020202020202020656C656D656E742E636C6173734E616D65203D206F726967696E616C2E6A6F696E28272027293B0A202020207D0A0A202020202F2A2A0A20';
wwv_flow_api.g_varchar2_table(30) := '202020202A205B48656C7065725D2020436865636B732069662074686520646F63756D656E742069732052544C0A20202020202A0A20202020202A204072657475726E207B426F6F6C65616E7D20547275652069662074686520646F63756D656E742069';
wwv_flow_api.g_varchar2_table(31) := '732052544C2C2066616C7365206F74686572776973652E0A20202020202A2F0A2020202066756E6374696F6E2069735269676874546F4C65667428297B0A202020202020202072657475726E2077696E646F772E676574436F6D70757465645374796C65';
wwv_flow_api.g_varchar2_table(32) := '28646F63756D656E742E626F6479292E646972656374696F6E203D3D3D202772746C273B0A202020207D0A202020202F2A2A0A20202020202A205B48656C7065725D20204765742074686520646F63756D656E742063757272656E74207363726F6C6C54';
wwv_flow_api.g_varchar2_table(33) := '6F700A20202020202A0A20202020202A204072657475726E207B4E756D6265727D2063757272656E7420646F63756D656E74207363726F6C6C546F702076616C75650A20202020202A2F0A2020202066756E6374696F6E206765745363726F6C6C546F70';
wwv_flow_api.g_varchar2_table(34) := '28297B0A202020202020202072657475726E202828646F63756D656E742E646F63756D656E74456C656D656E7420262620646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F7029207C7C20646F63756D656E742E626F64';
wwv_flow_api.g_varchar2_table(35) := '792E7363726F6C6C546F70293B0A202020207D0A0A202020202F2A2A0A20202020202A205B48656C7065725D20204765742074686520646F63756D656E742063757272656E74207363726F6C6C4C6566740A20202020202A0A20202020202A2040726574';
wwv_flow_api.g_varchar2_table(36) := '75726E207B4E756D6265727D2063757272656E7420646F63756D656E74207363726F6C6C4C6566742076616C75650A20202020202A2F0A2020202066756E6374696F6E206765745363726F6C6C4C65667428297B0A202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(37) := '2828646F63756D656E742E646F63756D656E74456C656D656E7420262620646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C65667429207C7C20646F63756D656E742E626F64792E7363726F6C6C4C656674293B0A202020';
wwv_flow_api.g_varchar2_table(38) := '207D0A0A202020202F2A2A0A202020202A2048656C7065723A20636C65617220636F6E74656E74730A202020202A0A202020202A2F0A2020202066756E6374696F6E20636C656172436F6E74656E747328656C656D656E74297B0A202020202020202077';
wwv_flow_api.g_varchar2_table(39) := '68696C652028656C656D656E742E6C6173744368696C6429207B0A202020202020202020202020656C656D656E742E72656D6F76654368696C6428656C656D656E742E6C6173744368696C64293B0A20202020202020207D0A202020207D0A202020202F';
wwv_flow_api.g_varchar2_table(40) := '2A2A0A20202020202A20457874656E6473206120676976656E2070726F746F74797065206279206D657267696E672070726F706572746965732066726F6D206261736520696E746F207375622E0A20202020202A0A20202020202A2040737562207B4F62';
wwv_flow_api.g_varchar2_table(41) := '6A6563747D20737562205468652070726F746F74797065206265696E67206F7665727772697474656E2E0A20202020202A204062617365207B4F626A6563747D2062617365205468652070726F746F74797065206265696E67207772697474656E2E0A20';
wwv_flow_api.g_varchar2_table(42) := '202020202A0A20202020202A204072657475726E207B4F626A6563747D2054686520657874656E6465642070726F746F747970652E0A20202020202A2F0A2020202066756E6374696F6E20636F70792873726329207B0A20202020202020206966286E75';
wwv_flow_api.g_varchar2_table(43) := '6C6C203D3D3D20737263297B0A20202020202020202020202072657475726E207372633B0A20202020202020207D0A2020202020202020766172206370793B0A202020202020202069662841727261792E697341727261792873726329297B0A20202020';
wwv_flow_api.g_varchar2_table(44) := '2020202020202020637079203D205B5D3B0A202020202020202020202020666F722876617220783D303B783C7372632E6C656E6774683B782B3D31297B0A202020202020202020202020202020206370792E7075736828636F7079287372635B785D2929';
wwv_flow_api.g_varchar2_table(45) := '3B0A2020202020202020202020207D0A20202020202020202020202072657475726E206370793B0A20202020202020207D0A2020202020200A202020202020202069662873726320696E7374616E63656F662044617465297B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(46) := '202072657475726E206E65772044617465287372632E67657454696D652829293B0A20202020202020207D0A2020202020200A202020202020202069662873726320696E7374616E63656F6620526567457870297B0A2020202020202020202020206370';
wwv_flow_api.g_varchar2_table(47) := '79203D206E657720526567457870287372632E736F75726365293B0A2020202020202020202020206370792E676C6F62616C203D207372632E676C6F62616C3B0A2020202020202020202020206370792E69676E6F726543617365203D207372632E6967';
wwv_flow_api.g_varchar2_table(48) := '6E6F7265436173653B0A2020202020202020202020206370792E6D756C74696C696E65203D207372632E6D756C74696C696E653B0A2020202020202020202020206370792E6C617374496E646578203D207372632E6C617374496E6465783B0A20202020';
wwv_flow_api.g_varchar2_table(49) := '202020202020202072657475726E206370793B0A20202020202020207D0A20202020202020200A2020202020202020696628747970656F6620737263203D3D3D20276F626A65637427297B0A202020202020202020202020637079203D207B7D3B0A2020';
wwv_flow_api.g_varchar2_table(50) := '202020202020202020202F2F20636F7079206469616C6F6720706F746F74797065206F76657220646566696E6974696F6E2E0A202020202020202020202020666F7220287661722070726F7020696E2073726329207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(51) := '202020696620287372632E6861734F776E50726F70657274792870726F702929207B0A20202020202020202020202020202020202020206370795B70726F705D203D20636F7079287372635B70726F705D293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(52) := '7D0A2020202020202020202020207D0A20202020202020202020202072657475726E206370793B0A20202020202020207D0A202020202020202072657475726E207372633B0A202020207D0A202020202F2A2A0A2020202020202A2048656C7065723A20';
wwv_flow_api.g_varchar2_table(53) := '646573747275637420746865206469616C6F670A2020202020202A0A2020202020202A2F0A2020202066756E6374696F6E20646573747275637428696E7374616E63652C20696E697469616C697A65297B0A20202020202020202F2F64656C6574652074';
wwv_flow_api.g_varchar2_table(54) := '686520646F6D20616E642069742773207265666572656E6365732E0A202020202020202076617220726F6F74203D20696E7374616E63652E656C656D656E74732E726F6F743B0A2020202020202020726F6F742E706172656E744E6F64652E72656D6F76';
wwv_flow_api.g_varchar2_table(55) := '654368696C6428726F6F74293B0A202020202020202064656C65746520696E7374616E63652E656C656D656E74733B0A20202020202020202F2F636F7079206261636B20696E697469616C2073657474696E67732E0A2020202020202020696E7374616E';
wwv_flow_api.g_varchar2_table(56) := '63652E73657474696E6773203D20636F707928696E7374616E63652E5F5F73657474696E6773293B0A20202020202020202F2F72652D7265666572656E636520696E69742066756E6374696F6E2E0A2020202020202020696E7374616E63652E5F5F696E';
wwv_flow_api.g_varchar2_table(57) := '6974203D20696E697469616C697A653B0A20202020202020202F2F64656C657465205F5F696E7465726E616C207661726961626C6520746F20616C6C6F772072652D696E697469616C697A6174696F6E2E0A202020202020202064656C65746520696E73';
wwv_flow_api.g_varchar2_table(58) := '74616E63652E5F5F696E7465726E616C3B0A202020207D0A0A202020202F2A2A0A20202020202A20557365206120636C6F7375726520746F2072657475726E2070726F706572206576656E74206C697374656E6572206D6574686F642E2054727920746F';
wwv_flow_api.g_varchar2_table(59) := '207573650A20202020202A20606164644576656E744C697374656E6572602062792064656661756C74206275742066616C6C6261636B20746F20606174746163684576656E746020666F720A20202020202A20756E737570706F727465642062726F7773';
wwv_flow_api.g_varchar2_table(60) := '65722E2054686520636C6F737572652073696D706C7920656E7375726573207468617420746865207465737420646F65736E27740A20202020202A2068617070656E2065766572792074696D6520746865206D6574686F642069732063616C6C65642E0A';
wwv_flow_api.g_varchar2_table(61) := '20202020202A0A20202020202A2040706172616D202020207B4E6F64657D2020202020656C202020204E6F646520656C656D656E740A20202020202A2040706172616D202020207B537472696E677D2020206576656E74204576656E7420747970650A20';
wwv_flow_api.g_varchar2_table(62) := '202020202A2040706172616D202020207B46756E6374696F6E7D20666E2020202043616C6C6261636B206F66206576656E740A20202020202A204072657475726E2020207B46756E6374696F6E7D0A20202020202A2F0A20202020766172206F6E203D20';
wwv_flow_api.g_varchar2_table(63) := '2866756E6374696F6E202829207B0A202020202020202069662028646F63756D656E742E6164644576656E744C697374656E657229207B0A20202020202020202020202072657475726E2066756E6374696F6E2028656C2C206576656E742C20666E2C20';
wwv_flow_api.g_varchar2_table(64) := '7573654361707475726529207B0A20202020202020202020202020202020656C2E6164644576656E744C697374656E6572286576656E742C20666E2C2075736543617074757265203D3D3D2074727565293B0A2020202020202020202020207D3B0A2020';
wwv_flow_api.g_varchar2_table(65) := '2020202020207D20656C73652069662028646F63756D656E742E6174746163684576656E7429207B0A20202020202020202020202072657475726E2066756E6374696F6E2028656C2C206576656E742C20666E29207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(66) := '202020656C2E6174746163684576656E7428276F6E27202B206576656E742C20666E293B0A2020202020202020202020207D3B0A20202020202020207D0A202020207D2829293B0A0A202020202F2A2A0A20202020202A20557365206120636C6F737572';
wwv_flow_api.g_varchar2_table(67) := '6520746F2072657475726E2070726F706572206576656E74206C697374656E6572206D6574686F642E2054727920746F207573650A20202020202A206072656D6F76654576656E744C697374656E6572602062792064656661756C74206275742066616C';
wwv_flow_api.g_varchar2_table(68) := '6C6261636B20746F20606465746163684576656E746020666F720A20202020202A20756E737570706F727465642062726F777365722E2054686520636C6F737572652073696D706C7920656E7375726573207468617420746865207465737420646F6573';
wwv_flow_api.g_varchar2_table(69) := '6E27740A20202020202A2068617070656E2065766572792074696D6520746865206D6574686F642069732063616C6C65642E0A20202020202A0A20202020202A2040706172616D202020207B4E6F64657D2020202020656C202020204E6F646520656C65';
wwv_flow_api.g_varchar2_table(70) := '6D656E740A20202020202A2040706172616D202020207B537472696E677D2020206576656E74204576656E7420747970650A20202020202A2040706172616D202020207B46756E6374696F6E7D20666E2020202043616C6C6261636B206F66206576656E';
wwv_flow_api.g_varchar2_table(71) := '740A20202020202A204072657475726E2020207B46756E6374696F6E7D0A20202020202A2F0A20202020766172206F6666203D202866756E6374696F6E202829207B0A202020202020202069662028646F63756D656E742E72656D6F76654576656E744C';
wwv_flow_api.g_varchar2_table(72) := '697374656E657229207B0A20202020202020202020202072657475726E2066756E6374696F6E2028656C2C206576656E742C20666E2C207573654361707475726529207B0A20202020202020202020202020202020656C2E72656D6F76654576656E744C';
wwv_flow_api.g_varchar2_table(73) := '697374656E6572286576656E742C20666E2C2075736543617074757265203D3D3D2074727565293B0A2020202020202020202020207D3B0A20202020202020207D20656C73652069662028646F63756D656E742E6465746163684576656E7429207B0A20';
wwv_flow_api.g_varchar2_table(74) := '202020202020202020202072657475726E2066756E6374696F6E2028656C2C206576656E742C20666E29207B0A20202020202020202020202020202020656C2E6465746163684576656E7428276F6E27202B206576656E742C20666E293B0A2020202020';
wwv_flow_api.g_varchar2_table(75) := '202020202020207D3B0A20202020202020207D0A202020207D2829293B0A0A202020202F2A2A0A20202020202A2050726576656E742064656661756C74206576656E742066726F6D20666972696E670A20202020202A0A20202020202A2040706172616D';
wwv_flow_api.g_varchar2_table(76) := '20207B4576656E747D206576656E74204576656E74206F626A6563740A20202020202A204072657475726E207B756E646566696E65647D0A0A2020202066756E6374696F6E2070726576656E742028206576656E742029207B0A20202020202020206966';
wwv_flow_api.g_varchar2_table(77) := '2028206576656E742029207B0A20202020202020202020202069662028206576656E742E70726576656E7444656661756C742029207B0A202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0A2020202020';
wwv_flow_api.g_varchar2_table(78) := '202020202020207D20656C7365207B0A202020202020202020202020202020206576656E742E72657475726E56616C7565203D2066616C73653B0A2020202020202020202020207D0A20202020202020207D0A202020207D0A202020202A2F0A20202020';
wwv_flow_api.g_varchar2_table(79) := '766172207472616E736974696F6E203D202866756E6374696F6E202829207B0A202020202020202076617220742C20747970653B0A202020202020202076617220737570706F72746564203D2066616C73653B0A2020202020202020766172207472616E';
wwv_flow_api.g_varchar2_table(80) := '736974696F6E73203D207B0A20202020202020202020202027616E696D6174696F6E2720202020202020203A2027616E696D6174696F6E656E64272C0A202020202020202020202020274F416E696D6174696F6E27202020202020203A20276F416E696D';
wwv_flow_api.g_varchar2_table(81) := '6174696F6E456E64206F616E696D6174696F6E656E64272C0A202020202020202020202020276D73416E696D6174696F6E272020202020203A20274D53416E696D6174696F6E456E64272C0A202020202020202020202020274D6F7A416E696D6174696F';
wwv_flow_api.g_varchar2_table(82) := '6E2720202020203A2027616E696D6174696F6E656E64272C0A202020202020202020202020275765626B6974416E696D6174696F6E2720203A20277765626B6974416E696D6174696F6E456E64270A20202020202020207D3B0A0A202020202020202066';
wwv_flow_api.g_varchar2_table(83) := '6F7220287420696E207472616E736974696F6E7329207B0A20202020202020202020202069662028646F63756D656E742E646F63756D656E74456C656D656E742E7374796C655B745D20213D3D20756E646566696E656429207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(84) := '2020202020202074797065203D207472616E736974696F6E735B745D3B0A20202020202020202020202020202020737570706F72746564203D20747275653B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020207D';
wwv_flow_api.g_varchar2_table(85) := '0A20202020202020207D0A0A202020202020202072657475726E207B0A202020202020202020202020747970653A20747970652C0A202020202020202020202020737570706F727465643A20737570706F727465640A20202020202020207D3B0A202020';
wwv_flow_api.g_varchar2_table(86) := '207D2829293B0A0A202020202F2A2A0A202020202A2043726561746573206576656E742068616E646C65722064656C656761746520746861742073656E64732074686520696E7374616E6365206173206C61737420617267756D656E742E0A202020202A';
wwv_flow_api.g_varchar2_table(87) := '200A202020202A204072657475726E207B46756E6374696F6E7D20202020612066756E6374696F6E20777261707065722077686963682073656E64732074686520696E7374616E6365206173206C61737420617267756D656E742E0A202020202A2F0A20';
wwv_flow_api.g_varchar2_table(88) := '20202066756E6374696F6E2064656C656761746528636F6E746578742C206D6574686F6429207B0A202020202020202072657475726E2066756E6374696F6E202829207B0A20202020202020202020202069662028617267756D656E74732E6C656E6774';
wwv_flow_api.g_varchar2_table(89) := '68203E203029207B0A202020202020202020202020202020207661722061726773203D205B5D3B0A20202020202020202020202020202020666F7220287661722078203D20303B2078203C20617267756D656E74732E6C656E6774683B2078202B3D2031';
wwv_flow_api.g_varchar2_table(90) := '29207B0A2020202020202020202020202020202020202020617267732E7075736828617267756D656E74735B785D293B0A202020202020202020202020202020207D0A20202020202020202020202020202020617267732E7075736828636F6E74657874';
wwv_flow_api.g_varchar2_table(91) := '293B0A2020202020202020202020202020202072657475726E206D6574686F642E6170706C7928636F6E746578742C2061726773293B0A2020202020202020202020207D0A20202020202020202020202072657475726E206D6574686F642E6170706C79';
wwv_flow_api.g_varchar2_table(92) := '28636F6E746578742C205B6E756C6C2C20636F6E746578745D293B0A20202020202020207D3B0A202020207D0A202020202F2A2A0A202020202A2048656C70657220666F72206372656174696E672061206469616C6F6720636C6F7365206576656E742E';
wwv_flow_api.g_varchar2_table(93) := '0A202020202A200A202020202A204072657475726E207B6F626A6563747D0A202020202A2F0A2020202066756E6374696F6E20637265617465436C6F73654576656E7428696E6465782C20627574746F6E29207B0A202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(94) := '7B0A202020202020202020202020696E6465783A20696E6465782C0A202020202020202020202020627574746F6E3A20627574746F6E2C0A20202020202020202020202063616E63656C3A2066616C73650A20202020202020207D3B0A202020207D0A20';
wwv_flow_api.g_varchar2_table(95) := '2020202F2A2A0A202020202A2048656C70657220666F72206469737061746368696E67206576656E74732E0A202020202A0A202020202A2040706172616D20207B737472696E677D206576656E54797065205468652074797065206F6620746865206576';
wwv_flow_api.g_varchar2_table(96) := '656E7420746F2064697370746163682E0A202020202A2040706172616D20207B6F626A6563747D20696E7374616E636520546865206469616C6F6720696E7374616E6365206469737074616368696E6720746865206576656E742E0A202020202A0A2020';
wwv_flow_api.g_varchar2_table(97) := '20202A204072657475726E2020207B616E797D20202054686520726573756C74206F662074686520696E766F6B65642066756E6374696F6E2E0A202020202A2F0A2020202066756E6374696F6E2064697370617463684576656E74286576656E74547970';
wwv_flow_api.g_varchar2_table(98) := '652C20696E7374616E636529207B0A20202020202020206966202820747970656F6620696E7374616E63652E676574286576656E745479706529203D3D3D202766756E6374696F6E272029207B0A20202020202020202020202072657475726E20696E73';
wwv_flow_api.g_varchar2_table(99) := '74616E63652E676574286576656E7454797065292E63616C6C28696E7374616E6365293B0A20202020202020207D0A202020207D0A0A0A202020202F2A2A0A20202020202A20537570657220636C61737320666F7220616C6C206469616C6F67730A2020';
wwv_flow_api.g_varchar2_table(100) := '2020202A0A20202020202A204072657475726E207B4F626A6563747D090962617365206469616C6F672070726F746F747970650A20202020202A2F0A20202020766172206469616C6F67203D202866756E6374696F6E202829207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(101) := '766172202F2F686F6C647320746865206C697374206F662075736564206B6579732E0A202020202020202020202020757365644B657973203D205B5D2C0A2020202020202020202020202F2F64756D6D79207661726961626C652C207573656420746F20';
wwv_flow_api.g_varchar2_table(102) := '7472696767657220646F6D207265666C6F772E0A2020202020202020202020207265666C6F77203D206E756C6C2C0A2020202020202020202020202F2F636F6E646974696F6E20666F7220646574656374696E67207361666172690A2020202020202020';
wwv_flow_api.g_varchar2_table(103) := '202020206973536166617269203D2077696E646F772E6E6176696761746F722E757365724167656E742E696E6465784F6628275361666172692729203E202D312026262077696E646F772E6E6176696761746F722E757365724167656E742E696E646578';
wwv_flow_api.g_varchar2_table(104) := '4F6628274368726F6D652729203C20302C0A2020202020202020202020202F2F6469616C6F67206275696C64696E6720626C6F636B730A20202020202020202020202074656D706C61746573203D207B0A2020202020202020202020202020202064696D';
wwv_flow_api.g_varchar2_table(105) := '6D65723A273C64697620636C6173733D22616A732D64696D6D6572223E3C2F6469763E272C0A202020202020202020202020202020202F2A74616220696E64657820726571756972656420746F206669726520636C69636B206576656E74206265666F72';
wwv_flow_api.g_varchar2_table(106) := '6520626F647920666F6375732A2F0A202020202020202020202020202020206D6F64616C3A20273C64697620636C6173733D22616A732D6D6F64616C2220746162696E6465783D2230223E3C2F6469763E272C0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(107) := '6469616C6F673A20273C64697620636C6173733D22616A732D6469616C6F672220746162696E6465783D2230223E3C2F6469763E272C0A2020202020202020202020202020202072657365743A20273C627574746F6E20636C6173733D22616A732D7265';
wwv_flow_api.g_varchar2_table(108) := '736574223E3C2F627574746F6E3E272C0A20202020202020202020202020202020636F6D6D616E64733A20273C64697620636C6173733D22616A732D636F6D6D616E6473223E3C627574746F6E20636C6173733D22616A732D70696E223E3C2F62757474';
wwv_flow_api.g_varchar2_table(109) := '6F6E3E3C627574746F6E20636C6173733D22616A732D6D6178696D697A65223E3C2F627574746F6E3E3C627574746F6E20636C6173733D22616A732D636C6F7365223E3C2F627574746F6E3E3C2F6469763E272C0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(110) := '206865616465723A20273C64697620636C6173733D22616A732D686561646572223E3C2F6469763E272C0A20202020202020202020202020202020626F64793A20273C64697620636C6173733D22616A732D626F6479223E3C2F6469763E272C0A202020';
wwv_flow_api.g_varchar2_table(111) := '20202020202020202020202020636F6E74656E743A20273C64697620636C6173733D22616A732D636F6E74656E74223E3C2F6469763E272C0A20202020202020202020202020202020666F6F7465723A20273C64697620636C6173733D22616A732D666F';
wwv_flow_api.g_varchar2_table(112) := '6F746572223E3C2F6469763E272C0A20202020202020202020202020202020627574746F6E733A207B207072696D6172793A20273C64697620636C6173733D22616A732D7072696D61727920616A732D627574746F6E73223E3C2F6469763E272C206175';
wwv_flow_api.g_varchar2_table(113) := '78696C696172793A20273C64697620636C6173733D22616A732D617578696C6961727920616A732D627574746F6E73223E3C2F6469763E27207D2C0A20202020202020202020202020202020627574746F6E3A20273C627574746F6E20636C6173733D22';
wwv_flow_api.g_varchar2_table(114) := '616A732D627574746F6E223E3C2F627574746F6E3E272C0A20202020202020202020202020202020726573697A6548616E646C653A20273C64697620636C6173733D22616A732D68616E646C65223E3C2F6469763E272C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(115) := '7D2C0A2020202020202020202020202F2F636F6D6D6F6E20636C617373206E616D65730A202020202020202020202020636C6173736573203D207B0A20202020202020202020202020202020616E696D6174696F6E496E3A2027616A732D696E272C0A20';
wwv_flow_api.g_varchar2_table(116) := '202020202020202020202020202020616E696D6174696F6E4F75743A2027616A732D6F7574272C0A20202020202020202020202020202020626173653A2027616C657274696679272C0A2020202020202020202020202020202062617369633A27616A73';
wwv_flow_api.g_varchar2_table(117) := '2D6261736963272C0A20202020202020202020202020202020636170747572653A2027616A732D63617074757265272C0A20202020202020202020202020202020636C6F7361626C653A27616A732D636C6F7361626C65272C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(118) := '20202020202066697865643A2027616A732D6669786564272C0A202020202020202020202020202020206672616D656C6573733A27616A732D6672616D656C657373272C0A2020202020202020202020202020202068696464656E3A2027616A732D6869';
wwv_flow_api.g_varchar2_table(119) := '6464656E272C0A202020202020202020202020202020206D6178696D697A653A2027616A732D6D6178696D697A65272C0A202020202020202020202020202020206D6178696D697A65643A2027616A732D6D6178696D697A6564272C0A20202020202020';
wwv_flow_api.g_varchar2_table(120) := '2020202020202020206D6178696D697A61626C653A27616A732D6D6178696D697A61626C65272C0A202020202020202020202020202020206D6F64656C6573733A2027616A732D6D6F64656C657373272C0A202020202020202020202020202020206D6F';
wwv_flow_api.g_varchar2_table(121) := '7661626C653A2027616A732D6D6F7661626C65272C0A202020202020202020202020202020206E6F53656C656374696F6E3A2027616A732D6E6F2D73656C656374696F6E272C0A202020202020202020202020202020206E6F4F766572666C6F773A2027';
wwv_flow_api.g_varchar2_table(122) := '616A732D6E6F2D6F766572666C6F77272C0A202020202020202020202020202020206E6F50616464696E673A27616A732D6E6F2D70616464696E67272C0A2020202020202020202020202020202070696E3A27616A732D70696E272C0A20202020202020';
wwv_flow_api.g_varchar2_table(123) := '20202020202020202070696E6E61626C653A27616A732D70696E6E61626C65272C0A202020202020202020202020202020207072656669783A2027616A732D272C0A20202020202020202020202020202020726573697A61626C653A2027616A732D7265';
wwv_flow_api.g_varchar2_table(124) := '73697A61626C65272C0A20202020202020202020202020202020726573746F72653A2027616A732D726573746F7265272C0A202020202020202020202020202020207368616B653A27616A732D7368616B65272C0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(125) := '20756E70696E6E65643A27616A732D756E70696E6E6564272C0A2020202020202020202020207D3B0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20696E697469616C697A657320746865206469616C6F6720696E7374';
wwv_flow_api.g_varchar2_table(126) := '616E63650A2020202020202020202A200A2020202020202020202A204072657475726E097B4E756D6265727D0954686520746F74616C20636F756E74206F662063757272656E746C79206F70656E206D6F64616C732E0A2020202020202020202A2F0A20';
wwv_flow_api.g_varchar2_table(127) := '2020202020202066756E6374696F6E20696E697469616C697A6528696E7374616E6365297B0A2020202020202020202020200A20202020202020202020202069662821696E7374616E63652E5F5F696E7465726E616C297B0A0A20202020202020202020';
wwv_flow_api.g_varchar2_table(128) := '2020202020202F2F6E6F206E65656420746F206578706F736520696E697420616674657220746869732E0A2020202020202020202020202020202064656C65746520696E7374616E63652E5F5F696E69743B0A20202020202020202020202020200A2020';
wwv_flow_api.g_varchar2_table(129) := '20202020202020202020202020202F2F6B656570206120636F7079206F6620696E697469616C206469616C6F672073657474696E67730A2020202020202020202020202020202069662821696E7374616E63652E5F5F73657474696E6773297B0A202020';
wwv_flow_api.g_varchar2_table(130) := '2020202020202020202020202020202020696E7374616E63652E5F5F73657474696E6773203D20636F707928696E7374616E63652E73657474696E6773293B0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(131) := '696E206361736520746865207363726970742077617320696E636C75646564206265666F726520626F64792E0A202020202020202020202020202020202F2F6166746572206669727374206469616C6F67206765747320696E697469616C697A65642C20';
wwv_flow_api.g_varchar2_table(132) := '697420776F6E2774206265206E756C6C20616E796D6F7265210A202020202020202020202020202020206966286E756C6C203D3D3D207265666C6F77297B0A20202020202020202020202020202020202020202F2F2073657420746162696E6465782061';
wwv_flow_api.g_varchar2_table(133) := '7474726962757465206F6E20626F647920656C656D656E74207468697320616C6C6F77732073637269707420746F20676976652069740A20202020202020202020202020202020202020202F2F20666F63757320616674657220746865206469616C6F67';
wwv_flow_api.g_varchar2_table(134) := '20697320636C6F7365640A2020202020202020202020202020202020202020646F63756D656E742E626F64792E736574417474726962757465282027746162696E646578272C2027302720293B0A202020202020202020202020202020207D0A0A202020';
wwv_flow_api.g_varchar2_table(135) := '202020202020202020202020202F2F676574206469616C6F6720627574746F6E732F666F6375732073657475700A202020202020202020202020202020207661722073657475703B0A20202020202020202020202020202020696628747970656F662069';
wwv_flow_api.g_varchar2_table(136) := '6E7374616E63652E7365747570203D3D3D202766756E6374696F6E27297B0A20202020202020202020202020202020202020207365747570203D20696E7374616E63652E736574757028293B0A2020202020202020202020202020202020202020736574';
wwv_flow_api.g_varchar2_table(137) := '75702E6F7074696F6E73203D2073657475702E6F7074696F6E7320207C7C207B7D3B0A202020202020202020202020202020202020202073657475702E666F637573203D2073657475702E666F63757320207C7C207B7D3B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(138) := '20202020207D656C73657B0A20202020202020202020202020202020202020207365747570203D207B0A202020202020202020202020202020202020202020202020627574746F6E733A5B5D2C0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(139) := '2020666F6375733A7B0A20202020202020202020202020202020202020202020202020202020656C656D656E743A6E756C6C2C0A2020202020202020202020202020202020202020202020202020202073656C6563743A66616C73650A20202020202020';
wwv_flow_api.g_varchar2_table(140) := '20202020202020202020202020202020207D2C0A2020202020202020202020202020202020202020202020206F7074696F6E733A7B0A2020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(141) := '7D3B0A202020202020202020202020202020207D0A202020202020202020202020202020200A202020202020202020202020202020202F2F696E697469616C697A6520686F6F6B73206F626A6563742E0A20202020202020202020202020202020696628';
wwv_flow_api.g_varchar2_table(142) := '747970656F6620696E7374616E63652E686F6F6B7320213D3D20276F626A65637427297B0A2020202020202020202020202020202020202020696E7374616E63652E686F6F6B73203D207B7D3B0A202020202020202020202020202020207D0A0A202020';
wwv_flow_api.g_varchar2_table(143) := '202020202020202020202020202F2F636F707920627574746F6E7320646566696E74696F6E0A2020202020202020202020202020202076617220627574746F6E73446566696E6974696F6E203D205B5D3B0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(144) := '2841727261792E697341727261792873657475702E627574746F6E7329297B0A2020202020202020202020202020202020202020666F722876617220623D303B623C73657475702E627574746F6E732E6C656E6774683B622B3D31297B0A202020202020';
wwv_flow_api.g_varchar2_table(145) := '2020202020202020202020202020202020207661722072656620203D2073657475702E627574746F6E735B625D2C0A20202020202020202020202020202020202020202020202020202020637079203D207B7D3B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(146) := '202020202020202020666F722028766172206920696E2072656629207B0A20202020202020202020202020202020202020202020202020202020696620287265662E6861734F776E50726F706572747928692929207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(147) := '202020202020202020202020202020202020206370795B695D203D207265665B695D3B0A202020202020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(148) := '20202020202020202020202020202020627574746F6E73446566696E6974696F6E2E7075736828637079293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(149) := '202076617220696E7465726E616C203D20696E7374616E63652E5F5F696E7465726E616C203D207B0A20202020202020202020202020202020202020202F2A2A0A2020202020202020202020202020202020202020202A20466C616720686F6C64696E67';
wwv_flow_api.g_varchar2_table(150) := '20746865206F70656E207374617465206F6620746865206469616C6F670A2020202020202020202020202020202020202020202A200A2020202020202020202020202020202020202020202A204074797065207B426F6F6C65616E7D0A20202020202020';
wwv_flow_api.g_varchar2_table(151) := '20202020202020202020202020202A2F0A202020202020202020202020202020202020202069734F70656E3A66616C73652C0A20202020202020202020202020202020202020202F2A2A0A2020202020202020202020202020202020202020202A204163';
wwv_flow_api.g_varchar2_table(152) := '7469766520656C656D656E742069732074686520656C656D656E7420746861742077696C6C207265636569766520666F6375732061667465720A2020202020202020202020202020202020202020202A20636C6F73696E6720746865206469616C6F672E';
wwv_flow_api.g_varchar2_table(153) := '2049742064656661756C74732061732074686520626F6479207461672C20627574206765747320757064617465640A2020202020202020202020202020202020202020202A20746F20746865206C61737420666F637573656420656C656D656E74206265';
wwv_flow_api.g_varchar2_table(154) := '666F726520746865206469616C6F6720776173206F70656E65642E0A2020202020202020202020202020202020202020202A0A2020202020202020202020202020202020202020202A204074797065207B4E6F64657D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(155) := '20202020202020202A2F0A2020202020202020202020202020202020202020616374697665456C656D656E743A646F63756D656E742E626F64792C0A202020202020202020202020202020202020202074696D6572496E3A756E646566696E65642C0A20';
wwv_flow_api.g_varchar2_table(156) := '2020202020202020202020202020202020202074696D65724F75743A756E646566696E65642C0A2020202020202020202020202020202020202020627574746F6E733A20627574746F6E73446566696E6974696F6E2C0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(157) := '20202020202020666F6375733A2073657475702E666F6375732C0A20202020202020202020202020202020202020206F7074696F6E733A207B0A2020202020202020202020202020202020202020202020207469746C653A20756E646566696E65642C0A';
wwv_flow_api.g_varchar2_table(158) := '2020202020202020202020202020202020202020202020206D6F64616C3A20756E646566696E65642C0A20202020202020202020202020202020202020202020202062617369633A756E646566696E65642C0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(159) := '202020202020206672616D656C6573733A756E646566696E65642C0A20202020202020202020202020202020202020202020202070696E6E65643A20756E646566696E65642C0A2020202020202020202020202020202020202020202020206D6F766162';
wwv_flow_api.g_varchar2_table(160) := '6C653A20756E646566696E65642C0A2020202020202020202020202020202020202020202020206D6F7665426F756E6465643A756E646566696E65642C0A202020202020202020202020202020202020202020202020726573697A61626C653A20756E64';
wwv_flow_api.g_varchar2_table(161) := '6566696E65642C0A2020202020202020202020202020202020202020202020206175746F52657365743A20756E646566696E65642C0A202020202020202020202020202020202020202020202020636C6F7361626C653A20756E646566696E65642C0A20';
wwv_flow_api.g_varchar2_table(162) := '2020202020202020202020202020202020202020202020636C6F7361626C65427944696D6D65723A20756E646566696E65642C0A2020202020202020202020202020202020202020202020206D6178696D697A61626C653A20756E646566696E65642C0A';
wwv_flow_api.g_varchar2_table(163) := '20202020202020202020202020202020202020202020202073746172744D6178696D697A65643A20756E646566696E65642C0A20202020202020202020202020202020202020202020202070696E6E61626C653A20756E646566696E65642C0A20202020';
wwv_flow_api.g_varchar2_table(164) := '20202020202020202020202020202020202020207472616E736974696F6E3A20756E646566696E65642C0A20202020202020202020202020202020202020202020202070616464696E673A756E646566696E65642C0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(165) := '202020202020202020206F766572666C6F773A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E73686F773A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E636C';
wwv_flow_api.g_varchar2_table(166) := '6F73696E673A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E636C6F73653A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E666F6375733A756E646566696E65';
wwv_flow_api.g_varchar2_table(167) := '642C0A2020202020202020202020202020202020202020202020206F6E6D6F76653A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E6D6F7665643A756E646566696E65642C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(168) := '2020202020202020202020206F6E726573697A653A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E726573697A65643A756E646566696E65642C0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(169) := '206F6E6D6178696D697A653A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E6D6178696D697A65643A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E72657374';
wwv_flow_api.g_varchar2_table(170) := '6F72653A756E646566696E65642C0A2020202020202020202020202020202020202020202020206F6E726573746F7265643A756E646566696E65640A20202020202020202020202020202020202020207D2C0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(171) := '202020726573657448616E646C65723A756E646566696E65642C0A2020202020202020202020202020202020202020626567696E4D6F766548616E646C65723A756E646566696E65642C0A2020202020202020202020202020202020202020626567696E';
wwv_flow_api.g_varchar2_table(172) := '526573697A6548616E646C65723A756E646566696E65642C0A20202020202020202020202020202020202020206272696E67546F46726F6E7448616E646C65723A756E646566696E65642C0A20202020202020202020202020202020202020206D6F6461';
wwv_flow_api.g_varchar2_table(173) := '6C436C69636B48616E646C65723A756E646566696E65642C0A2020202020202020202020202020202020202020627574746F6E73436C69636B48616E646C65723A756E646566696E65642C0A2020202020202020202020202020202020202020636F6D6D';
wwv_flow_api.g_varchar2_table(174) := '616E6473436C69636B48616E646C65723A756E646566696E65642C0A20202020202020202020202020202020202020207472616E736974696F6E496E48616E646C65723A756E646566696E65642C0A202020202020202020202020202020202020202074';
wwv_flow_api.g_varchar2_table(175) := '72616E736974696F6E4F757448616E646C65723A756E646566696E65642C0A202020202020202020202020202020202020202064657374726F793A756E646566696E65640A202020202020202020202020202020207D3B0A0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(176) := '202020202076617220656C656D656E7473203D207B7D3B0A202020202020202020202020202020202F2F726F6F74206E6F64650A20202020202020202020202020202020656C656D656E74732E726F6F74203D20646F63756D656E742E63726561746545';
wwv_flow_api.g_varchar2_table(177) := '6C656D656E74282764697627293B0A202020202020202020202020202020200A20202020202020202020202020202020656C656D656E74732E726F6F742E636C6173734E616D65203D20636C61737365732E62617365202B20272027202B20636C617373';
wwv_flow_api.g_varchar2_table(178) := '65732E68696464656E202B202720273B0A0A20202020202020202020202020202020656C656D656E74732E726F6F742E696E6E657248544D4C203D2074656D706C617465732E64696D6D6572202B2074656D706C617465732E6D6F64616C3B0A20202020';
wwv_flow_api.g_varchar2_table(179) := '2020202020202020202020200A202020202020202020202020202020202F2F64696D6D65720A20202020202020202020202020202020656C656D656E74732E64696D6D6572203D20656C656D656E74732E726F6F742E66697273744368696C643B0A0A20';
wwv_flow_api.g_varchar2_table(180) := '2020202020202020202020202020202F2F6469616C6F670A20202020202020202020202020202020656C656D656E74732E6D6F64616C203D20656C656D656E74732E726F6F742E6C6173744368696C643B0A20202020202020202020202020202020656C';
wwv_flow_api.g_varchar2_table(181) := '656D656E74732E6D6F64616C2E696E6E657248544D4C203D2074656D706C617465732E6469616C6F673B0A20202020202020202020202020202020656C656D656E74732E6469616C6F67203D20656C656D656E74732E6D6F64616C2E6669727374436869';
wwv_flow_api.g_varchar2_table(182) := '6C643B0A20202020202020202020202020202020656C656D656E74732E6469616C6F672E696E6E657248544D4C203D2074656D706C617465732E7265736574202B2074656D706C617465732E636F6D6D616E6473202B2074656D706C617465732E686561';
wwv_flow_api.g_varchar2_table(183) := '646572202B2074656D706C617465732E626F6479202B2074656D706C617465732E666F6F746572202B2074656D706C617465732E726573697A6548616E646C65202B2074656D706C617465732E72657365743B0A0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(184) := '202F2F7265736574206C696E6B730A20202020202020202020202020202020656C656D656E74732E7265736574203D205B5D3B0A20202020202020202020202020202020656C656D656E74732E72657365742E7075736828656C656D656E74732E646961';
wwv_flow_api.g_varchar2_table(185) := '6C6F672E66697273744368696C64293B0A20202020202020202020202020202020656C656D656E74732E72657365742E7075736828656C656D656E74732E6469616C6F672E6C6173744368696C64293B0A202020202020202020202020202020200A2020';
wwv_flow_api.g_varchar2_table(186) := '20202020202020202020202020202F2F636F6D6D616E64730A20202020202020202020202020202020656C656D656E74732E636F6D6D616E6473203D207B7D3B0A20202020202020202020202020202020656C656D656E74732E636F6D6D616E64732E63';
wwv_flow_api.g_varchar2_table(187) := '6F6E7461696E6572203D20656C656D656E74732E72657365745B305D2E6E6578745369626C696E673B0A20202020202020202020202020202020656C656D656E74732E636F6D6D616E64732E70696E203D20656C656D656E74732E636F6D6D616E64732E';
wwv_flow_api.g_varchar2_table(188) := '636F6E7461696E65722E66697273744368696C643B0A20202020202020202020202020202020656C656D656E74732E636F6D6D616E64732E6D6178696D697A65203D20656C656D656E74732E636F6D6D616E64732E70696E2E6E6578745369626C696E67';
wwv_flow_api.g_varchar2_table(189) := '3B0A20202020202020202020202020202020656C656D656E74732E636F6D6D616E64732E636C6F7365203D20656C656D656E74732E636F6D6D616E64732E6D6178696D697A652E6E6578745369626C696E673B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(190) := '0A202020202020202020202020202020202F2F6865616465720A20202020202020202020202020202020656C656D656E74732E686561646572203D20656C656D656E74732E636F6D6D616E64732E636F6E7461696E65722E6E6578745369626C696E673B';
wwv_flow_api.g_varchar2_table(191) := '0A0A202020202020202020202020202020202F2F626F64790A20202020202020202020202020202020656C656D656E74732E626F6479203D20656C656D656E74732E6865616465722E6E6578745369626C696E673B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(192) := '2020656C656D656E74732E626F64792E696E6E657248544D4C203D2074656D706C617465732E636F6E74656E743B0A20202020202020202020202020202020656C656D656E74732E636F6E74656E74203D20656C656D656E74732E626F64792E66697273';
wwv_flow_api.g_varchar2_table(193) := '744368696C643B0A0A202020202020202020202020202020202F2F666F6F7465720A20202020202020202020202020202020656C656D656E74732E666F6F746572203D20656C656D656E74732E626F64792E6E6578745369626C696E673B0A2020202020';
wwv_flow_api.g_varchar2_table(194) := '2020202020202020202020656C656D656E74732E666F6F7465722E696E6E657248544D4C203D2074656D706C617465732E627574746F6E732E617578696C69617279202B2074656D706C617465732E627574746F6E732E7072696D6172793B0A20202020';
wwv_flow_api.g_varchar2_table(195) := '2020202020202020202020200A202020202020202020202020202020202F2F726573697A652068616E646C650A20202020202020202020202020202020656C656D656E74732E726573697A6548616E646C65203D20656C656D656E74732E666F6F746572';
wwv_flow_api.g_varchar2_table(196) := '2E6E6578745369626C696E673B0A0A202020202020202020202020202020202F2F627574746F6E730A20202020202020202020202020202020656C656D656E74732E627574746F6E73203D207B7D3B0A20202020202020202020202020202020656C656D';
wwv_flow_api.g_varchar2_table(197) := '656E74732E627574746F6E732E617578696C69617279203D20656C656D656E74732E666F6F7465722E66697273744368696C643B0A20202020202020202020202020202020656C656D656E74732E627574746F6E732E7072696D617279203D20656C656D';
wwv_flow_api.g_varchar2_table(198) := '656E74732E627574746F6E732E617578696C696172792E6E6578745369626C696E673B0A20202020202020202020202020202020656C656D656E74732E627574746F6E732E7072696D6172792E696E6E657248544D4C203D2074656D706C617465732E62';
wwv_flow_api.g_varchar2_table(199) := '7574746F6E3B0A20202020202020202020202020202020656C656D656E74732E627574746F6E54656D706C617465203D20656C656D656E74732E627574746F6E732E7072696D6172792E66697273744368696C643B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(200) := '20202F2F72656D6F766520627574746F6E2074656D706C6174650A20202020202020202020202020202020656C656D656E74732E627574746F6E732E7072696D6172792E72656D6F76654368696C6428656C656D656E74732E627574746F6E54656D706C';
wwv_flow_api.g_varchar2_table(201) := '617465293B0A202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020666F722876617220783D303B2078203C20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E732E6C';
wwv_flow_api.g_varchar2_table(202) := '656E6774683B20782B3D3129207B0A202020202020202020202020202020202020202076617220627574746F6E203D20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E735B785D3B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(203) := '0A20202020202020202020202020202020202020202F2F2061646420746F20746865206C697374206F662075736564206B6579732E0A2020202020202020202020202020202020202020696628757365644B6579732E696E6465784F6628627574746F6E';
wwv_flow_api.g_varchar2_table(204) := '2E6B657929203C2030297B0A202020202020202020202020202020202020202020202020757365644B6579732E7075736828627574746F6E2E6B6579293B0A20202020202020202020202020202020202020207D0A0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(205) := '202020202020627574746F6E2E656C656D656E74203D20656C656D656E74732E627574746F6E54656D706C6174652E636C6F6E654E6F646528293B0A2020202020202020202020202020202020202020627574746F6E2E656C656D656E742E696E6E6572';
wwv_flow_api.g_varchar2_table(206) := '48544D4C203D20627574746F6E2E746578743B0A2020202020202020202020202020202020202020696628747970656F6620627574746F6E2E636C6173734E616D65203D3D3D2027737472696E67272026262020627574746F6E2E636C6173734E616D65';
wwv_flow_api.g_varchar2_table(207) := '20213D3D202727297B0A202020202020202020202020202020202020202020202020616464436C61737328627574746F6E2E656C656D656E742C20627574746F6E2E636C6173734E616D65293B0A20202020202020202020202020202020202020207D0A';
wwv_flow_api.g_varchar2_table(208) := '2020202020202020202020202020202020202020666F7228766172206B657920696E20627574746F6E2E6174747273297B0A2020202020202020202020202020202020202020202020206966286B657920213D3D2027636C6173734E616D652720262620';
wwv_flow_api.g_varchar2_table(209) := '627574746F6E2E61747472732E6861734F776E50726F7065727479286B657929297B0A20202020202020202020202020202020202020202020202020202020627574746F6E2E656C656D656E742E736574417474726962757465286B65792C2062757474';
wwv_flow_api.g_varchar2_table(210) := '6F6E2E61747472735B6B65795D293B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020696628627574746F6E2E73636F706520';
wwv_flow_api.g_varchar2_table(211) := '3D3D3D2027617578696C6961727927297B0A202020202020202020202020202020202020202020202020656C656D656E74732E627574746F6E732E617578696C696172792E617070656E644368696C6428627574746F6E2E656C656D656E74293B0A2020';
wwv_flow_api.g_varchar2_table(212) := '2020202020202020202020202020202020207D656C73657B0A202020202020202020202020202020202020202020202020656C656D656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428627574746F6E2E656C656D656E74';
wwv_flow_api.g_varchar2_table(213) := '293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F6D616B6520656C656D656E74732070756269630A20202020202020202020202020202020696E73';
wwv_flow_api.g_varchar2_table(214) := '74616E63652E656C656D656E7473203D20656C656D656E74733B0A202020202020202020202020202020200A202020202020202020202020202020202F2F73617665206576656E742068616E646C6572732064656C6567617465730A2020202020202020';
wwv_flow_api.g_varchar2_table(215) := '2020202020202020696E7465726E616C2E726573657448616E646C6572203D2064656C656761746528696E7374616E63652C206F6E5265736574293B0A20202020202020202020202020202020696E7465726E616C2E626567696E4D6F766548616E646C';
wwv_flow_api.g_varchar2_table(216) := '6572203D2064656C656761746528696E7374616E63652C20626567696E4D6F7665293B0A20202020202020202020202020202020696E7465726E616C2E626567696E526573697A6548616E646C6572203D2064656C656761746528696E7374616E63652C';
wwv_flow_api.g_varchar2_table(217) := '20626567696E526573697A65293B0A20202020202020202020202020202020696E7465726E616C2E6272696E67546F46726F6E7448616E646C6572203D2064656C656761746528696E7374616E63652C206272696E67546F46726F6E74293B0A20202020';
wwv_flow_api.g_varchar2_table(218) := '202020202020202020202020696E7465726E616C2E6D6F64616C436C69636B48616E646C6572203D2064656C656761746528696E7374616E63652C206D6F64616C436C69636B48616E646C6572293B0A20202020202020202020202020202020696E7465';
wwv_flow_api.g_varchar2_table(219) := '726E616C2E627574746F6E73436C69636B48616E646C6572203D2064656C656761746528696E7374616E63652C20627574746F6E73436C69636B48616E646C6572293B0A20202020202020202020202020202020696E7465726E616C2E636F6D6D616E64';
wwv_flow_api.g_varchar2_table(220) := '73436C69636B48616E646C6572203D2064656C656761746528696E7374616E63652C20636F6D6D616E6473436C69636B48616E646C6572293B0A20202020202020202020202020202020696E7465726E616C2E7472616E736974696F6E496E48616E646C';
wwv_flow_api.g_varchar2_table(221) := '6572203D2064656C656761746528696E7374616E63652C2068616E646C655472616E736974696F6E496E4576656E74293B0A20202020202020202020202020202020696E7465726E616C2E7472616E736974696F6E4F757448616E646C6572203D206465';
wwv_flow_api.g_varchar2_table(222) := '6C656761746528696E7374616E63652C2068616E646C655472616E736974696F6E4F75744576656E74293B0A0A202020202020202020202020202020202F2F73657474696E67730A20202020202020202020202020202020666F7228766172206F704B65';
wwv_flow_api.g_varchar2_table(223) := '7920696E20696E7465726E616C2E6F7074696F6E73297B0A202020202020202020202020202020202020202069662873657475702E6F7074696F6E735B6F704B65795D20213D3D20756E646566696E6564297B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(224) := '20202020202020202F2F20696620666F756E6420696E2075736572206F7074696F6E730A202020202020202020202020202020202020202020202020696E7374616E63652E736574286F704B65792C2073657475702E6F7074696F6E735B6F704B65795D';
wwv_flow_api.g_varchar2_table(225) := '293B0A20202020202020202020202020202020202020207D656C736520696628616C6572746966792E64656661756C74732E6861734F776E50726F7065727479286F704B65792929207B0A2020202020202020202020202020202020202020202020202F';
wwv_flow_api.g_varchar2_table(226) := '2F20656C736520696620666F756E6420696E2064656661756C7473206F7074696F6E730A202020202020202020202020202020202020202020202020696E7374616E63652E736574286F704B65792C20616C6572746966792E64656661756C74735B6F70';
wwv_flow_api.g_varchar2_table(227) := '4B65795D293B0A20202020202020202020202020202020202020207D656C7365206966286F704B6579203D3D3D20277469746C65272029207B0A2020202020202020202020202020202020202020202020202F2F20656C7365206966207469746C65206B';
wwv_flow_api.g_varchar2_table(228) := '65792C2075736520616C6572746966792E64656661756C74732E676C6F73736172790A202020202020202020202020202020202020202020202020696E7374616E63652E736574286F704B65792C20616C6572746966792E64656661756C74732E676C6F';
wwv_flow_api.g_varchar2_table(229) := '73736172795B6F704B65795D293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A0A202020202020202020202020202020202F2F20616C6C6F7720646F6D20637573746F6D697A6174696F6E0A20';
wwv_flow_api.g_varchar2_table(230) := '202020202020202020202020202020696628747970656F6620696E7374616E63652E6275696C64203D3D3D202766756E6374696F6E27297B0A2020202020202020202020202020202020202020696E7374616E63652E6275696C6428293B0A2020202020';
wwv_flow_api.g_varchar2_table(231) := '20202020202020202020207D0A2020202020202020202020207D0A2020202020202020202020200A2020202020202020202020202F2F61646420746F2074686520656E64206F662074686520444F4D20747265652E0A202020202020202020202020646F';
wwv_flow_api.g_varchar2_table(232) := '63756D656E742E626F64792E617070656E644368696C6428696E7374616E63652E656C656D656E74732E726F6F74293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A206D61696E7461696E73';
wwv_flow_api.g_varchar2_table(233) := '207363726F6C6C20706F736974696F6E0A2020202020202020202A0A2020202020202020202A2F0A2020202020202020766172207363726F6C6C582C207363726F6C6C593B0A202020202020202066756E6374696F6E20736176655363726F6C6C506F73';
wwv_flow_api.g_varchar2_table(234) := '6974696F6E28297B0A2020202020202020202020207363726F6C6C58203D206765745363726F6C6C4C65667428293B0A2020202020202020202020207363726F6C6C59203D206765745363726F6C6C546F7028293B0A20202020202020207D0A20202020';
wwv_flow_api.g_varchar2_table(235) := '2020202066756E6374696F6E20726573746F72655363726F6C6C506F736974696F6E28297B0A20202020202020202020202077696E646F772E7363726F6C6C546F287363726F6C6C582C207363726F6C6C59293B0A20202020202020207D0A0A20202020';
wwv_flow_api.g_varchar2_table(236) := '202020202F2A2A0A2020202020202020202A2048656C7065723A20616464732F72656D6F766573206E6F2D6F766572666C6F7720636C6173732066726F6D20626F64790A2020202020202020202A0A2020202020202020202A2F0A202020202020202066';
wwv_flow_api.g_varchar2_table(237) := '756E6374696F6E20656E737572654E6F4F766572666C6F7728297B0A2020202020202020202020207661722072657175697265734E6F4F766572666C6F77203D20303B0A202020202020202020202020666F722876617220783D303B783C6F70656E4469';
wwv_flow_api.g_varchar2_table(238) := '616C6F67732E6C656E6774683B782B3D31297B0A2020202020202020202020202020202076617220696E7374616E6365203D206F70656E4469616C6F67735B785D3B0A20202020202020202020202020202020696628696E7374616E63652E69734D6F64';
wwv_flow_api.g_varchar2_table(239) := '616C2829207C7C20696E7374616E63652E69734D6178696D697A65642829297B0A202020202020202020202020202020202020202072657175697265734E6F4F766572666C6F772B3D313B0A202020202020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(240) := '2020202020207D0A20202020202020202020202069662872657175697265734E6F4F766572666C6F77203D3D3D203020262620646F63756D656E742E626F64792E636C6173734E616D652E696E6465784F6628636C61737365732E6E6F4F766572666C6F';
wwv_flow_api.g_varchar2_table(241) := '7729203E3D2030297B0A202020202020202020202020202020202F2F6C617374206F70656E206D6F64616C206F72206C617374206D6178696D697A6564206F6E650A2020202020202020202020202020202072656D6F7665436C61737328646F63756D65';
wwv_flow_api.g_varchar2_table(242) := '6E742E626F64792C20636C61737365732E6E6F4F766572666C6F77293B0A2020202020202020202020202020202070726576656E74426F647953686966742866616C7365293B0A2020202020202020202020207D656C7365206966287265717569726573';
wwv_flow_api.g_varchar2_table(243) := '4E6F4F766572666C6F77203E203020262620646F63756D656E742E626F64792E636C6173734E616D652E696E6465784F6628636C61737365732E6E6F4F766572666C6F7729203C2030297B0A202020202020202020202020202020202F2F666972737420';
wwv_flow_api.g_varchar2_table(244) := '6F70656E206D6F64616C206F72206669727374206D6178696D697A6564206F6E650A2020202020202020202020202020202070726576656E74426F647953686966742874727565293B0A20202020202020202020202020202020616464436C6173732864';
wwv_flow_api.g_varchar2_table(245) := '6F63756D656E742E626F64792C20636C61737365732E6E6F4F766572666C6F77293B0A2020202020202020202020207D0A20202020202020207D0A202020202020202076617220746F70203D2027272C20746F705363726F6C6C203D20303B0A20202020';
wwv_flow_api.g_varchar2_table(246) := '202020202F2A2A0A2020202020202020202A2048656C7065723A2070726576656E747320626F64792073686966742E0A2020202020202020202A0A2020202020202020202A2F0A202020202020202066756E6374696F6E2070726576656E74426F647953';
wwv_flow_api.g_varchar2_table(247) := '6869667428616464297B0A202020202020202020202020696628616C6572746966792E64656661756C74732E70726576656E74426F6479536869667420262620646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4865696768';
wwv_flow_api.g_varchar2_table(248) := '74203E20646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874297B0A2020202020202020202020202020202069662861646420297B2F2F2626206F70656E4469616C6F67735B6F70656E4469616C6F67732E6C65';
wwv_flow_api.g_varchar2_table(249) := '6E6774682D315D2E656C656D656E74732E6469616C6F672E636C69656E74486569676874203C3D20646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874297B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(250) := '746F705363726F6C6C203D207363726F6C6C593B0A2020202020202020202020202020202020202020746F70203D2077696E646F772E676574436F6D70757465645374796C6528646F63756D656E742E626F6479292E746F703B0A202020202020202020';
wwv_flow_api.g_varchar2_table(251) := '2020202020202020202020616464436C61737328646F63756D656E742E626F64792C20636C61737365732E6669786564293B0A2020202020202020202020202020202020202020646F63756D656E742E626F64792E7374796C652E746F70203D202D7363';
wwv_flow_api.g_varchar2_table(252) := '726F6C6C59202B20277078273B0A202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020207363726F6C6C59203D20746F705363726F6C6C3B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(253) := '646F63756D656E742E626F64792E7374796C652E746F70203D20746F703B0A202020202020202020202020202020202020202072656D6F7665436C61737328646F63756D656E742E626F64792C20636C61737365732E6669786564293B0A202020202020';
wwv_flow_api.g_varchar2_table(254) := '2020202020202020202020202020726573746F72655363726F6C6C506F736974696F6E28293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A09090A20202020202020202F2A2A0A20202020';
wwv_flow_api.g_varchar2_table(255) := '20202020202A205365747320746865206E616D65206F6620746865207472616E736974696F6E207573656420746F2073686F772F6869646520746865206469616C6F670A2020202020202020202A200A2020202020202020202A2040706172616D207B4F';
wwv_flow_api.g_varchar2_table(256) := '626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A2F0A202020202020202066756E6374696F6E207570646174655472616E736974696F6E28696E7374616E63';
wwv_flow_api.g_varchar2_table(257) := '652C2076616C75652C206F6C6456616C7565297B0A202020202020202020202020696628747970656F66206F6C6456616C7565203D3D3D2027737472696E6727297B0A2020202020202020202020202020202072656D6F7665436C61737328696E737461';
wwv_flow_api.g_varchar2_table(258) := '6E63652E656C656D656E74732E726F6F742C636C61737365732E707265666978202B20206F6C6456616C7565293B0A2020202020202020202020207D0A202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E';
wwv_flow_api.g_varchar2_table(259) := '726F6F742C20636C61737365732E707265666978202B2076616C7565293B0A2020202020202020202020207265666C6F77203D20696E7374616E63652E656C656D656E74732E726F6F742E6F666673657457696474683B0A20202020202020207D0A0909';
wwv_flow_api.g_varchar2_table(260) := '0A20202020202020202F2A2A0A2020202020202020202A20546F67676C657320746865206469616C6F6720646973706C6179206D6F64650A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E';
wwv_flow_api.g_varchar2_table(261) := '6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20757064617465';
wwv_flow_api.g_varchar2_table(262) := '446973706C61794D6F646528696E7374616E6365297B0A202020202020202020202020696628696E7374616E63652E67657428276D6F64616C2729297B0A0A202020202020202020202020202020202F2F6D616B65206D6F64616C0A2020202020202020';
wwv_flow_api.g_varchar2_table(263) := '202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6F64656C657373293B0A0A202020202020202020202020202020202F2F6F6E6C79206966206F70656E0A2020202020';
wwv_flow_api.g_varchar2_table(264) := '2020202020202020202020696628696E7374616E63652E69734F70656E2829297B0A2020202020202020202020202020202020202020756E62696E644D6F64656C6573734576656E747328696E7374616E6365293B0A0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(265) := '202020202020202F2F696E206361736520612070696E6E6564206D6F646C657373206469616C6F6720776173206D616465206D6F64616C207768696C65206F70656E2E0A2020202020202020202020202020202020202020757064617465416273506F73';
wwv_flow_api.g_varchar2_table(266) := '6974696F6E46697828696E7374616E6365293B0A0A2020202020202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A202020202020202020202020202020207D0A2020202020202020202020207D656C73657B0A2020';
wwv_flow_api.g_varchar2_table(267) := '20202020202020202020202020202F2F6D616B65206D6F64656C73730A20202020202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6F64656C657373293B0A0A2020';
wwv_flow_api.g_varchar2_table(268) := '20202020202020202020202020202F2F6F6E6C79206966206F70656E0A20202020202020202020202020202020696628696E7374616E63652E69734F70656E2829297B0A202020202020202020202020202020202020202062696E644D6F64656C657373';
wwv_flow_api.g_varchar2_table(269) := '4576656E747328696E7374616E6365293B0A0A20202020202020202020202020202020202020202F2F696E20636173652070696E2F756E70696E207761732063616C6C6564207768696C652061206D6F64616C206973206F70656E0A2020202020202020';
wwv_flow_api.g_varchar2_table(270) := '202020202020202020202020757064617465416273506F736974696F6E46697828696E7374616E6365293B0A0A2020202020202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(271) := '207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20546F67676C657320746865206469616C6F672062617369632076696577206D6F6465200A2020202020202020202A0A2020';
wwv_flow_api.g_varchar2_table(272) := '202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A20202020';
wwv_flow_api.g_varchar2_table(273) := '20202020202A2F0A202020202020202066756E6374696F6E2075706461746542617369634D6F646528696E7374616E6365297B0A20202020202020202020202069662028696E7374616E63652E67657428276261736963272929207B0A20202020202020';
wwv_flow_api.g_varchar2_table(274) := '2020202020202020202F2F2061646420636C6173730A20202020202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6261736963293B0A2020202020202020202020207D';
wwv_flow_api.g_varchar2_table(275) := '20656C7365207B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E';
wwv_flow_api.g_varchar2_table(276) := '6261736963293B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20546F67676C657320746865206469616C6F67206672616D656C6573732076696577206D6F6465200A20202020';
wwv_flow_api.g_varchar2_table(277) := '20202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E64656669';
wwv_flow_api.g_varchar2_table(278) := '6E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207570646174654672616D656C6573734D6F646528696E7374616E6365297B0A20202020202020202020202069662028696E7374616E63652E67657428276672616D65';
wwv_flow_api.g_varchar2_table(279) := '6C657373272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A20202020202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6672616D';
wwv_flow_api.g_varchar2_table(280) := '656C657373293B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C';
wwv_flow_api.g_varchar2_table(281) := '656D656E74732E726F6F742C20636C61737365732E6672616D656C657373293B0A2020202020202020202020207D0A20202020202020207D0A09090A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A204272696E6773207468';
wwv_flow_api.g_varchar2_table(282) := '65206D6F64656C657373206469616C6F6720746F2066726F6E742C20617474616368656420746F206D6F64656C657373206469616C6F67732E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E74';
wwv_flow_api.g_varchar2_table(283) := '20466F637573206576656E740A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B';
wwv_flow_api.g_varchar2_table(284) := '756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206272696E67546F46726F6E74286576656E742C20696E7374616E6365297B0A2020202020202020202020200A2020202020202020202020202F2F2044';
wwv_flow_api.g_varchar2_table(285) := '6F206E6F74206272696E6720746F2066726F6E742069662070726563656564656420627920616E206F70656E206D6F64616C0A20202020202020202020202076617220696E646578203D206F70656E4469616C6F67732E696E6465784F6628696E737461';
wwv_flow_api.g_varchar2_table(286) := '6E6365293B0A202020202020202020202020666F722876617220783D696E6465782B313B783C6F70656E4469616C6F67732E6C656E6774683B782B3D31297B0A202020202020202020202020202020206966286F70656E4469616C6F67735B785D2E6973';
wwv_flow_api.g_varchar2_table(287) := '4D6F64616C2829297B0A202020202020202020202020202020202020202072657475726E3B0A202020202020202020202020202020207D0A2020202020202020202020207D0A0909090A2020202020202020202020202F2F204272696E6720746F206672';
wwv_flow_api.g_varchar2_table(288) := '6F6E74206279206D616B696E6720697420746865206C617374206368696C642E0A202020202020202020202020696628646F63756D656E742E626F64792E6C6173744368696C6420213D3D20696E7374616E63652E656C656D656E74732E726F6F74297B';
wwv_flow_api.g_varchar2_table(289) := '0A20202020202020202020202020202020646F63756D656E742E626F64792E617070656E644368696C6428696E7374616E63652E656C656D656E74732E726F6F74293B0A202020202020202020202020202020202F2F616C736F206D616B652073757265';
wwv_flow_api.g_varchar2_table(290) := '206974732061742074686520656E64206F6620746865206C6973740A202020202020202020202020202020206F70656E4469616C6F67732E73706C696365286F70656E4469616C6F67732E696E6465784F6628696E7374616E6365292C31293B0A202020';
wwv_flow_api.g_varchar2_table(291) := '202020202020202020202020206F70656E4469616C6F67732E7075736828696E7374616E6365293B0A20202020202020202020202020202020736574466F63757328696E7374616E6365293B0A2020202020202020202020207D0A0909090A2020202020';
wwv_flow_api.g_varchar2_table(292) := '2020202020202072657475726E2066616C73653B0A20202020202020207D0A09090A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A207265666C65637473206469616C6F6773206F7074696F6E7320757064617465730A2020';
wwv_flow_api.g_varchar2_table(293) := '202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B537472696E677D206F7074696F6E2054';
wwv_flow_api.g_varchar2_table(294) := '68652075706461746564206F7074696F6E206E616D652E0A2020202020202020202A0A2020202020202020202A204072657475726E097B756E646566696E65647D090A2020202020202020202A2F0A202020202020202066756E6374696F6E206F707469';
wwv_flow_api.g_varchar2_table(295) := '6F6E5570646174656428696E7374616E63652C206F7074696F6E2C206F6C6456616C75652C206E657756616C7565297B0A202020202020202020202020737769746368286F7074696F6E297B0A2020202020202020202020206361736520277469746C65';
wwv_flow_api.g_varchar2_table(296) := '273A0A20202020202020202020202020202020696E7374616E63652E736574486561646572286E657756616C7565293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276D6F64616C273A0A2020';
wwv_flow_api.g_varchar2_table(297) := '2020202020202020202020202020757064617465446973706C61794D6F646528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276261736963273A0A2020202020202020';
wwv_flow_api.g_varchar2_table(298) := '202020202020202075706461746542617369634D6F646528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276672616D656C657373273A0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(299) := '202020207570646174654672616D656C6573734D6F646528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A20202020202020202020202063617365202770696E6E6564273A0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(300) := '2075706461746550696E6E656428696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A202020202020202020202020636173652027636C6F7361626C65273A0A2020202020202020202020202020202075706461746543';
wwv_flow_api.g_varchar2_table(301) := '6C6F7361626C6528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276D6178696D697A61626C65273A0A202020202020202020202020202020207570646174654D617869';
wwv_flow_api.g_varchar2_table(302) := '6D697A61626C6528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A20202020202020202020202063617365202770696E6E61626C65273A0A2020202020202020202020202020202075706461746550696E6E61626C';
wwv_flow_api.g_varchar2_table(303) := '6528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276D6F7661626C65273A0A202020202020202020202020202020207570646174654D6F7661626C6528696E7374616E';
wwv_flow_api.g_varchar2_table(304) := '6365293B0A20202020202020202020202020202020627265616B3B0A202020202020202020202020636173652027726573697A61626C65273A0A20202020202020202020202020202020757064617465526573697A61626C6528696E7374616E6365293B';
wwv_flow_api.g_varchar2_table(305) := '0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520277472616E736974696F6E273A0A202020202020202020202020202020207570646174655472616E736974696F6E28696E7374616E63652C6E6577';
wwv_flow_api.g_varchar2_table(306) := '56616C75652C206F6C6456616C7565293B0A20202020202020202020202020202020627265616B3B0A20202020202020202020202063617365202770616464696E67273A0A202020202020202020202020202020206966286E657756616C7565297B0A20';
wwv_flow_api.g_varchar2_table(307) := '2020202020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6E6F50616464696E67293B0A202020202020202020202020202020207D656C736520696628';
wwv_flow_api.g_varchar2_table(308) := '696E7374616E63652E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F6628636C61737365732E6E6F50616464696E6729203C2030297B0A2020202020202020202020202020202020202020616464436C61737328696E737461';
wwv_flow_api.g_varchar2_table(309) := '6E63652E656C656D656E74732E726F6F742C20636C61737365732E6E6F50616464696E67293B0A202020202020202020202020202020207D0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520276F76';
wwv_flow_api.g_varchar2_table(310) := '6572666C6F77273A0A202020202020202020202020202020206966286E657756616C7565297B0A202020202020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C617373';
wwv_flow_api.g_varchar2_table(311) := '65732E6E6F4F766572666C6F77293B0A202020202020202020202020202020207D656C736520696628696E7374616E63652E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F6628636C61737365732E6E6F4F766572666C6F77';
wwv_flow_api.g_varchar2_table(312) := '29203C2030297B0A2020202020202020202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6E6F4F766572666C6F77293B0A202020202020202020202020202020207D0A';
wwv_flow_api.g_varchar2_table(313) := '20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520277472616E736974696F6E273A0A202020202020202020202020202020207570646174655472616E736974696F6E28696E7374616E63652C6E657756';
wwv_flow_api.g_varchar2_table(314) := '616C75652C206F6C6456616C7565293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020207D0A0A2020202020202020202020202F2F20696E7465726E616C206F6E206F7074696F6E207570646174656420657665';
wwv_flow_api.g_varchar2_table(315) := '6E740A202020202020202020202020696628747970656F6620696E7374616E63652E686F6F6B732E6F6E757064617465203D3D3D202766756E6374696F6E27297B0A20202020202020202020202020202020696E7374616E63652E686F6F6B732E6F6E75';
wwv_flow_api.g_varchar2_table(316) := '70646174652E63616C6C28696E7374616E63652C206F7074696F6E2C206F6C6456616C75652C206E657756616C7565293B0A2020202020202020202020207D0A20202020202020207D0A09090A20202020202020202F2A2A0A2020202020202020202A20';
wwv_flow_api.g_varchar2_table(317) := '48656C7065723A207265666C65637473206469616C6F6773206F7074696F6E7320757064617465730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E';
wwv_flow_api.g_varchar2_table(318) := '7374616E63652E0A2020202020202020202A2040706172616D207B4F626A6563747D206F626A20546865206F626A65637420746F207365742F67657420612076616C7565206F6E2F66726F6D2E0A2020202020202020202A2040706172616D207B46756E';
wwv_flow_api.g_varchar2_table(319) := '6374696F6E7D2063616C6C6261636B205468652063616C6C6261636B2066756E6374696F6E20746F2063616C6C20696620746865206B65792077617320666F756E642E0A2020202020202020202A2040706172616D207B537472696E677C4F626A656374';
wwv_flow_api.g_varchar2_table(320) := '7D206B6579204120737472696E672073706563696679696E6720612070726F70657279206E616D65206F72206120636F6C6C656374696F6E206F66206B65792076616C75652070616972732E0A2020202020202020202A2040706172616D207B4F626A65';
wwv_flow_api.g_varchar2_table(321) := '63747D2076616C7565204F7074696F6E616C2C207468652076616C7565206173736F636961746564207769746820746865206B65792028696E206361736520697420776173206120737472696E67292E0A2020202020202020202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(322) := '537472696E677D206F7074696F6E205468652075706461746564206F7074696F6E206E616D652E0A2020202020202020202A0A2020202020202020202A204072657475726E097B4F626A6563747D20726573756C74206F626A656374200A202020202020';
wwv_flow_api.g_varchar2_table(323) := '2020202A0954686520726573756C74206F626A656374732068617320616E20276F70272070726F70657274792C20696E6469636174696E67206F662074686973206973206120534554206F7220474554206F7065726174696F6E2E0A2020202020202020';
wwv_flow_api.g_varchar2_table(324) := '202A09094745543A200A2020202020202020202A09092D20666F756E643A206120666C616720696E6469636174696E6720696620746865206B65792077617320666F756E64206F72206E6F742E0A2020202020202020202A09092D2076616C75653A2074';
wwv_flow_api.g_varchar2_table(325) := '68652070726F70657274792076616C75652E0A2020202020202020202A09095345543A0A2020202020202020202A09092D206974656D733A2061206C697374206F66206B65792076616C7565207061697273206F66207468652070726F70657274696573';
wwv_flow_api.g_varchar2_table(326) := '206265696E67207365742E0A2020202020202020202A090909096561636820636F6E7461696E733A0A2020202020202020202A09090909092D20666F756E643A206120666C616720696E6469636174696E6720696620746865206B65792077617320666F';
wwv_flow_api.g_varchar2_table(327) := '756E64206F72206E6F742E0A2020202020202020202A09090909092D206B65793A207468652070726F7065727479206B65792E0A2020202020202020202A09090909092D2076616C75653A207468652070726F70657274792076616C75652E0A20202020';
wwv_flow_api.g_varchar2_table(328) := '20202020202A2F0A202020202020202066756E6374696F6E2075706461746528696E7374616E63652C206F626A2C2063616C6C6261636B2C206B65792C2076616C7565297B0A20202020202020202020202076617220726573756C74203D207B6F703A75';
wwv_flow_api.g_varchar2_table(329) := '6E646566696E65642C206974656D733A205B5D207D3B0A202020202020202020202020696628747970656F662076616C7565203D3D3D2027756E646566696E65642720262620747970656F66206B6579203D3D3D2027737472696E672729207B0A202020';
wwv_flow_api.g_varchar2_table(330) := '202020202020202020202020202F2F6765740A20202020202020202020202020202020726573756C742E6F70203D2027676574273B0A202020202020202020202020202020206966286F626A2E6861734F776E50726F7065727479286B657929297B0A20';
wwv_flow_api.g_varchar2_table(331) := '20202020202020202020202020202020202020726573756C742E666F756E64203D20747275653B0A2020202020202020202020202020202020202020726573756C742E76616C7565203D206F626A5B6B65795D3B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(332) := '207D656C73657B0A2020202020202020202020202020202020202020726573756C742E666F756E64203D2066616C73653B0A2020202020202020202020202020202020202020726573756C742E76616C7565203D20756E646566696E65643B0A20202020';
wwv_flow_api.g_varchar2_table(333) := '2020202020202020202020207D0A2020202020202020202020207D0A202020202020202020202020656C73650A2020202020202020202020207B0A20202020202020202020202020202020766172206F6C643B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(334) := '2F2F7365740A20202020202020202020202020202020726573756C742E6F70203D2027736574273B0A20202020202020202020202020202020696628747970656F66206B6579203D3D3D20276F626A65637427297B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(335) := '2020202020202F2F736574206D756C7469706C650A20202020202020202020202020202020202020207661722061726773203D206B65793B0A2020202020202020202020202020202020202020666F7220287661722070726F7020696E20617267732920';
wwv_flow_api.g_varchar2_table(336) := '7B0A202020202020202020202020202020202020202020202020696620286F626A2E6861734F776E50726F70657274792870726F702929207B0A202020202020202020202020202020202020202020202020202020206966286F626A5B70726F705D2021';
wwv_flow_api.g_varchar2_table(337) := '3D3D20617267735B70726F705D297B0A20202020202020202020202020202020202020202020202020202020202020206F6C64203D206F626A5B70726F705D3B0A20202020202020202020202020202020202020202020202020202020202020206F626A';
wwv_flow_api.g_varchar2_table(338) := '5B70726F705D203D20617267735B70726F705D3B0A202020202020202020202020202020202020202020202020202020202020202063616C6C6261636B2E63616C6C28696E7374616E63652C70726F702C206F6C642C20617267735B70726F705D293B0A';
wwv_flow_api.g_varchar2_table(339) := '202020202020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020202020202020202020726573756C742E6974656D732E70757368287B20276B6579273A2070726F702C202776616C7565273A20';
wwv_flow_api.g_varchar2_table(340) := '617267735B70726F705D2C2027666F756E64273A747275657D293B0A2020202020202020202020202020202020202020202020207D656C73657B0A20202020202020202020202020202020202020202020202020202020726573756C742E6974656D732E';
wwv_flow_api.g_varchar2_table(341) := '70757368287B20276B6579273A2070726F702C202776616C7565273A20617267735B70726F705D2C2027666F756E64273A66616C73657D293B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(342) := '202020207D0A202020202020202020202020202020207D20656C73652069662028747970656F66206B6579203D3D3D2027737472696E6727297B0A20202020202020202020202020202020202020202F2F7365742073696E676C650A2020202020202020';
wwv_flow_api.g_varchar2_table(343) := '202020202020202020202020696620286F626A2E6861734F776E50726F7065727479286B65792929207B0A2020202020202020202020202020202020202020202020206966286F626A5B6B65795D20213D3D2076616C7565297B0A202020202020202020';
wwv_flow_api.g_varchar2_table(344) := '202020202020202020202020202020202020206F6C6420203D206F626A5B6B65795D3B0A202020202020202020202020202020202020202020202020202020206F626A5B6B65795D203D2076616C75653B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(345) := '2020202020202020202063616C6C6261636B2E63616C6C28696E7374616E63652C6B65792C206F6C642C2076616C7565293B0A2020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(346) := '20726573756C742E6974656D732E70757368287B276B6579273A206B65792C202776616C7565273A2076616C7565202C2027666F756E64273A747275657D293B0A0A20202020202020202020202020202020202020207D656C73657B0A20202020202020';
wwv_flow_api.g_varchar2_table(347) := '2020202020202020202020202020202020726573756C742E6974656D732E70757368287B276B6579273A206B65792C202776616C7565273A2076616C7565202C2027666F756E64273A66616C73657D293B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(348) := '20207D0A202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202F2F696E76616C696420706172616D730A20202020202020202020202020202020202020207468726F77206E6577204572726F';
wwv_flow_api.g_varchar2_table(349) := '72282761726773206D757374206265206120737472696E67206F72206F626A65637427293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020202020202072657475726E20726573756C743B0A202020';
wwv_flow_api.g_varchar2_table(350) := '20202020207D0A0A0A20202020202020202F2A2A0A2020202020202020202A205472696767657273206120636C6F7365206576656E742E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E';
wwv_flow_api.g_varchar2_table(351) := '6365095468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207472696767';
wwv_flow_api.g_varchar2_table(352) := '6572436C6F736528696E7374616E636529207B0A20202020202020202020202076617220666F756E643B0A2020202020202020202020207472696767657243616C6C6261636B28696E7374616E63652C2066756E6374696F6E2028627574746F6E29207B';
wwv_flow_api.g_varchar2_table(353) := '0A2020202020202020202020202020202072657475726E20666F756E64203D2028627574746F6E2E696E766F6B654F6E436C6F7365203D3D3D2074727565293B0A2020202020202020202020207D293B0A2020202020202020202020202F2F6E6F6E6520';
wwv_flow_api.g_varchar2_table(354) := '6F662074686520627574746F6E732072656769737465726564206173206F6E636C6F73652063616C6C6261636B0A2020202020202020202020202F2F636C6F736520746865206469616C6F670A2020202020202020202020206966202821666F756E6420';
wwv_flow_api.g_varchar2_table(355) := '262620696E7374616E63652E69734F70656E282929207B0A20202020202020202020202020202020696E7374616E63652E636C6F736528293B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020';
wwv_flow_api.g_varchar2_table(356) := '202020202A204469616C6F677320636F6D6D616E6473206576656E742068616E646C65722C20617474616368656420746F20746865206469616C6F6720636F6D6D616E647320656C656D656E742E0A2020202020202020202A0A2020202020202020202A';
wwv_flow_api.g_varchar2_table(357) := '2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365095468652064696C6F6720696E7374616E63652E0A20202020';
wwv_flow_api.g_varchar2_table(358) := '20202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20636F6D6D616E6473436C69636B48616E646C6572286576656E742C20696E7374';
wwv_flow_api.g_varchar2_table(359) := '616E636529207B0A20202020202020202020202076617220746172676574203D206576656E742E737263456C656D656E74207C7C206576656E742E7461726765743B0A202020202020202020202020737769746368202874617267657429207B0A202020';
wwv_flow_api.g_varchar2_table(360) := '2020202020202020206361736520696E7374616E63652E656C656D656E74732E636F6D6D616E64732E70696E3A0A202020202020202020202020202020206966202821696E7374616E63652E697350696E6E6564282929207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(361) := '2020202020202020202070696E28696E7374616E6365293B0A202020202020202020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020756E70696E28696E7374616E6365293B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(362) := '2020207D0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520696E7374616E63652E656C656D656E74732E636F6D6D616E64732E6D6178696D697A653A0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(363) := '202821696E7374616E63652E69734D6178696D697A6564282929207B0A20202020202020202020202020202020202020206D6178696D697A6528696E7374616E6365293B0A202020202020202020202020202020207D20656C7365207B0A202020202020';
wwv_flow_api.g_varchar2_table(364) := '2020202020202020202020202020726573746F726528696E7374616E6365293B0A202020202020202020202020202020207D0A20202020202020202020202020202020627265616B3B0A2020202020202020202020206361736520696E7374616E63652E';
wwv_flow_api.g_varchar2_table(365) := '656C656D656E74732E636F6D6D616E64732E636C6F73653A0A2020202020202020202020202020202074726967676572436C6F736528696E7374616E6365293B0A20202020202020202020202020202020627265616B3B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(366) := '7D0A20202020202020202020202072657475726E2066616C73653B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A2070696E7320746865206D6F64656C657373206469616C6F672E0A20202020';
wwv_flow_api.g_varchar2_table(367) := '20202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E636509546865206469616C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E6465';
wwv_flow_api.g_varchar2_table(368) := '66696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2070696E28696E7374616E636529207B0A2020202020202020202020202F2F70696E20746865206469616C6F670A202020202020202020202020696E7374616E63';
wwv_flow_api.g_varchar2_table(369) := '652E736574282770696E6E6564272C2074727565293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20756E70696E7320746865206D6F64656C657373206469616C6F672E0A20202020202020';
wwv_flow_api.g_varchar2_table(370) := '20202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365095468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65';
wwv_flow_api.g_varchar2_table(371) := '647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20756E70696E28696E7374616E636529207B0A2020202020202020202020202F2F756E70696E20746865206469616C6F67200A202020202020202020202020696E7374616E';
wwv_flow_api.g_varchar2_table(372) := '63652E736574282770696E6E6564272C2066616C7365293B0A20202020202020207D0A0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20656E6C617267657320746865206469616C6F6720746F2066696C6C2074686520';
wwv_flow_api.g_varchar2_table(373) := '656E746972652073637265656E2E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365095468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A202020202020';
wwv_flow_api.g_varchar2_table(374) := '2020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206D6178696D697A6528696E7374616E636529207B0A2020202020202020202020202F2F20616C6C6F772063757374';
wwv_flow_api.g_varchar2_table(375) := '6F6D20606F6E6D6178696D697A6560206D6574686F640A20202020202020202020202064697370617463684576656E7428276F6E6D6178696D697A65272C20696E7374616E6365293B0A2020202020202020202020202F2F6D6178696D697A6520746865';
wwv_flow_api.g_varchar2_table(376) := '206469616C6F67200A202020202020202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6178696D697A6564293B0A20202020202020202020202069662028696E7374616E63652E69';
wwv_flow_api.g_varchar2_table(377) := '734F70656E282929207B0A20202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A2020202020202020202020207D0A2020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E6D6178696D697A65';
wwv_flow_api.g_varchar2_table(378) := '6460206D6574686F640A20202020202020202020202064697370617463684576656E7428276F6E6D6178696D697A6564272C20696E7374616E6365293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2048656C70';
wwv_flow_api.g_varchar2_table(379) := '65723A2072657475726E7320746865206469616C6F6720746F2069747320666F726D65722073697A652E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365095468652064696C6F6720';
wwv_flow_api.g_varchar2_table(380) := '696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20726573746F726528696E7374616E63652920';
wwv_flow_api.g_varchar2_table(381) := '7B0A2020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E726573746F726560206D6574686F640A20202020202020202020202064697370617463684576656E7428276F6E726573746F7265272C20696E7374616E6365293B0A20';
wwv_flow_api.g_varchar2_table(382) := '20202020202020202020202F2F6D6178696D697A6520746865206469616C6F67200A20202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6178696D697A656429';
wwv_flow_api.g_varchar2_table(383) := '3B0A20202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A20202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A2020202020202020202020207D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(384) := '202F2F20616C6C6F7720637573746F6D20606F6E726573746F72656460206D6574686F640A20202020202020202020202064697370617463684576656E7428276F6E726573746F726564272C20696E7374616E6365293B0A20202020202020207D0A0A20';
wwv_flow_api.g_varchar2_table(385) := '202020202020202F2A2A0A2020202020202020202A2053686F77206F72206869646520746865206D6178696D697A6520626F782E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E636520';
wwv_flow_api.g_varchar2_table(386) := '5468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D206F6E205472756520746F2061646420746865206265686176696F722C2072656D6F766573206974206F74686572776973652E0A20';
wwv_flow_api.g_varchar2_table(387) := '20202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2075706461746550696E6E61626C6528696E7374616E636529207B0A202020';
wwv_flow_api.g_varchar2_table(388) := '20202020202020202069662028696E7374616E63652E676574282770696E6E61626C65272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A20202020202020202020202020202020616464436C61737328696E737461';
wwv_flow_api.g_varchar2_table(389) := '6E63652E656C656D656E74732E726F6F742C20636C61737365732E70696E6E61626C65293B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A202020202020202020';
wwv_flow_api.g_varchar2_table(390) := '2020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E70696E6E61626C65293B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A20';
wwv_flow_api.g_varchar2_table(391) := '20202020202020202A2048656C7065723A20466978657320746865206162736F6C75746C7920706F736974696F6E6564206D6F64616C2064697620706F736974696F6E2E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F';
wwv_flow_api.g_varchar2_table(392) := '626A6563747D20696E7374616E636520546865206469616C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066';
wwv_flow_api.g_varchar2_table(393) := '756E6374696F6E20616464416273506F736974696F6E46697828696E7374616E636529207B0A202020202020202020202020766172207363726F6C6C4C656674203D206765745363726F6C6C4C65667428293B0A202020202020202020202020696E7374';
wwv_flow_api.g_varchar2_table(394) := '616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E546F70203D206765745363726F6C6C546F702829202B20277078273B0A202020202020202020202020696E7374616E63652E656C656D656E74732E6D6F64616C2E737479';
wwv_flow_api.g_varchar2_table(395) := '6C652E6D617267696E4C656674203D207363726F6C6C4C656674202B20277078273B0A202020202020202020202020696E7374616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E5269676874203D20282D7363726F6C6C4C';
wwv_flow_api.g_varchar2_table(396) := '65667429202B20277078273B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A2052656D6F76657320746865206162736F6C75746C7920706F736974696F6E6564206D6F64616C2064697620706F';
wwv_flow_api.g_varchar2_table(397) := '736974696F6E206669782E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E636520546865206469616C6F6720696E7374616E63652E0A2020202020202020202A0A202020202020202020';
wwv_flow_api.g_varchar2_table(398) := '2A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2072656D6F7665416273506F736974696F6E46697828696E7374616E636529207B0A20202020202020202020202076617220';
wwv_flow_api.g_varchar2_table(399) := '6D617267696E546F70203D207061727365496E7428696E7374616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E546F702C203130293B0A202020202020202020202020766172206D617267696E4C656674203D2070617273';
wwv_flow_api.g_varchar2_table(400) := '65496E7428696E7374616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E4C6566742C203130293B0A202020202020202020202020696E7374616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E';
wwv_flow_api.g_varchar2_table(401) := '546F70203D2027273B0A202020202020202020202020696E7374616E63652E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E4C656674203D2027273B0A202020202020202020202020696E7374616E63652E656C656D656E74732E6D';
wwv_flow_api.g_varchar2_table(402) := '6F64616C2E7374796C652E6D617267696E5269676874203D2027273B0A0A20202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A2020202020202020202020202020202076617220746F70203D20302C0A20202020';
wwv_flow_api.g_varchar2_table(403) := '202020202020202020202020202020206C656674203D20300A202020202020202020202020202020203B0A2020202020202020202020202020202069662028696E7374616E63652E656C656D656E74732E6469616C6F672E7374796C652E746F7020213D';
wwv_flow_api.g_varchar2_table(404) := '3D20272729207B0A2020202020202020202020202020202020202020746F70203D207061727365496E7428696E7374616E63652E656C656D656E74732E6469616C6F672E7374796C652E746F702C203130293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(405) := '7D0A20202020202020202020202020202020696E7374616E63652E656C656D656E74732E6469616C6F672E7374796C652E746F70203D2028746F70202B20286D617267696E546F70202D206765745363726F6C6C546F7028292929202B20277078273B0A';
wwv_flow_api.g_varchar2_table(406) := '0A2020202020202020202020202020202069662028696E7374616E63652E656C656D656E74732E6469616C6F672E7374796C652E6C65667420213D3D20272729207B0A20202020202020202020202020202020202020206C656674203D20706172736549';
wwv_flow_api.g_varchar2_table(407) := '6E7428696E7374616E63652E656C656D656E74732E6469616C6F672E7374796C652E6C6566742C203130293B0A202020202020202020202020202020207D0A20202020202020202020202020202020696E7374616E63652E656C656D656E74732E646961';
wwv_flow_api.g_varchar2_table(408) := '6C6F672E7374796C652E6C656674203D20286C656674202B20286D617267696E4C656674202D206765745363726F6C6C4C65667428292929202B20277078273B0A2020202020202020202020207D0A20202020202020207D0A20202020202020202F2A2A';
wwv_flow_api.g_varchar2_table(409) := '0A2020202020202020202A2048656C7065723A20416464732F52656D6F76657320746865206162736F6C75746C7920706F736974696F6E6564206D6F64616C2064697620706F736974696F6E20666978206261736564206F6E206974732070696E6E6564';
wwv_flow_api.g_varchar2_table(410) := '2073657474696E672E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E636520546865206469616C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A20';
wwv_flow_api.g_varchar2_table(411) := '4072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20757064617465416273506F736974696F6E46697828696E7374616E636529207B0A2020202020202020202020202F2F20696620';
wwv_flow_api.g_varchar2_table(412) := '6D6F64656C65737320616E6420756E70696E6E656420616464206669780A2020202020202020202020206966202821696E7374616E63652E67657428276D6F64616C27292026262021696E7374616E63652E676574282770696E6E6564272929207B0A20';
wwv_flow_api.g_varchar2_table(413) := '202020202020202020202020202020616464416273506F736974696F6E46697828696E7374616E6365293B0A2020202020202020202020207D20656C7365207B0A2020202020202020202020202020202072656D6F7665416273506F736974696F6E4669';
wwv_flow_api.g_varchar2_table(414) := '7828696E7374616E6365293B0A2020202020202020202020207D0A20202020202020207D0A20202020202020202F2A2A0A2020202020202020202A20546F67676C657320746865206469616C6F6720706F736974696F6E206C6F636B207C206D6F64656C';
wwv_flow_api.g_varchar2_table(415) := '657373206F6E6C792E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C';
wwv_flow_api.g_varchar2_table(416) := '65616E7D206F6E205472756520746F206D616B65206974206D6F64616C2C2066616C7365206F74686572776973652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A';
wwv_flow_api.g_varchar2_table(417) := '2F0A202020202020202066756E6374696F6E2075706461746550696E6E656428696E7374616E636529207B0A20202020202020202020202069662028696E7374616E63652E676574282770696E6E6564272929207B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(418) := '202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E756E70696E6E6564293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A2020';
wwv_flow_api.g_varchar2_table(419) := '20202020202020202020202020202020202072656D6F7665416273506F736974696F6E46697828696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D20656C7365207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(420) := '2020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E756E70696E6E6564293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E2829202626202169';
wwv_flow_api.g_varchar2_table(421) := '6E7374616E63652E69734D6F64616C282929207B0A2020202020202020202020202020202020202020616464416273506F736974696F6E46697828696E7374616E6365293B0A202020202020202020202020202020207D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(422) := '7D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2053686F77206F72206869646520746865206D6178696D697A6520626F782E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A';
wwv_flow_api.g_varchar2_table(423) := '6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D206F6E205472756520746F2061646420746865206265686176696F722C2072656D6F7665732069';
wwv_flow_api.g_varchar2_table(424) := '74206F74686572776973652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207570646174654D6178696D697A61626C';
wwv_flow_api.g_varchar2_table(425) := '6528696E7374616E636529207B0A20202020202020202020202069662028696E7374616E63652E67657428276D6178696D697A61626C65272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A20202020202020202020';
wwv_flow_api.g_varchar2_table(426) := '202020202020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6178696D697A61626C65293B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(427) := '2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6178696D697A61626C65293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(428) := '7D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2053686F77206F7220686964652074686520636C6F736520626F782E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A656374';
wwv_flow_api.g_varchar2_table(429) := '7D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D206F6E205472756520746F2061646420746865206265686176696F722C2072656D6F766573206974206F';
wwv_flow_api.g_varchar2_table(430) := '74686572776973652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20757064617465436C6F7361626C6528696E7374';
wwv_flow_api.g_varchar2_table(431) := '616E636529207B0A20202020202020202020202069662028696E7374616E63652E6765742827636C6F7361626C65272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A20202020202020202020202020202020616464';
wwv_flow_api.g_varchar2_table(432) := '436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E636C6F7361626C65293B0A2020202020202020202020202020202062696E64436C6F7361626C654576656E747328696E7374616E6365293B0A2020202020';
wwv_flow_api.g_varchar2_table(433) := '202020202020207D20656C7365207B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20';
wwv_flow_api.g_varchar2_table(434) := '636C61737365732E636C6F7361626C65293B0A20202020202020202020202020202020756E62696E64436C6F7361626C654576656E747328696E7374616E6365293B0A2020202020202020202020207D0A20202020202020207D0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(435) := '2F2F20666C616720746F2063616E63656C20636C69636B206576656E7420696620616C72656164792068616E646C656420627920656E6420726573697A65206576656E742028746865206D6F757365646F776E2C206D6F7573656D6F76652C206D6F7573';
wwv_flow_api.g_varchar2_table(436) := '6575702073657175656E6365206669726573206120636C69636B206576656E742E292E0A20202020202020207661722063616E63656C436C69636B203D2066616C73653B0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A';
wwv_flow_api.g_varchar2_table(437) := '20636C6F73657320746865206D6F64616C206469616C6F67207768656E20636C69636B696E6720746865206D6F64616C0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E';
wwv_flow_api.g_varchar2_table(438) := '74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E64';
wwv_flow_api.g_varchar2_table(439) := '6566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206D6F64616C436C69636B48616E646C6572286576656E742C20696E7374616E636529207B0A20202020202020202020202076617220746172676574203D2065';
wwv_flow_api.g_varchar2_table(440) := '76656E742E737263456C656D656E74207C7C206576656E742E7461726765743B0A202020202020202020202020696620282163616E63656C436C69636B20262620746172676574203D3D3D20696E7374616E63652E656C656D656E74732E6D6F64616C20';
wwv_flow_api.g_varchar2_table(441) := '262620696E7374616E63652E6765742827636C6F7361626C65427944696D6D65722729203D3D3D207472756529207B0A2020202020202020202020202020202074726967676572436C6F736528696E7374616E6365293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(442) := '7D0A20202020202020202020202063616E63656C436C69636B203D2066616C73653B0A20202020202020202020202072657475726E2066616C73653B0A20202020202020207D0A0A20202020202020202F2F20666C616720746F2063616E63656C206B65';
wwv_flow_api.g_varchar2_table(443) := '797570206576656E7420696620616C72656164792068616E646C656420627920636C69636B206576656E7420287072657373696E6720456E746572206F6E206120666F63757374656420627574746F6E292E0A20202020202020207661722063616E6365';
wwv_flow_api.g_varchar2_table(444) := '6C4B65797570203D2066616C73653B0A20202020202020202F2A2A200A2020202020202020202A2048656C7065723A207472696767657273206120627574746F6E2063616C6C6261636B0A2020202020202020202A0A2020202020202020202A20407061';
wwv_flow_api.g_varchar2_table(445) := '72616D207B4F626A6563747D09095468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B46756E6374696F6E7D0943616C6C6261636B20746F20636865636B20776869636820627574746F6E20747269676765';
wwv_flow_api.g_varchar2_table(446) := '72656420746865206576656E742E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207472696767657243616C6C626163';
wwv_flow_api.g_varchar2_table(447) := '6B28696E7374616E63652C20636865636B29207B0A202020202020202020202020666F72202876617220696478203D20303B20696478203C20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E732E6C656E6774683B20696478202B3D20';
wwv_flow_api.g_varchar2_table(448) := '3129207B0A2020202020202020202020202020202076617220627574746F6E203D20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E735B6964785D3B0A202020202020202020202020202020206966202821627574746F6E2E656C656D';
wwv_flow_api.g_varchar2_table(449) := '656E742E64697361626C656420262620636865636B28627574746F6E2929207B0A202020202020202020202020202020202020202076617220636C6F73654576656E74203D20637265617465436C6F73654576656E74286964782C20627574746F6E293B';
wwv_flow_api.g_varchar2_table(450) := '0A202020202020202020202020202020202020202069662028747970656F6620696E7374616E63652E63616C6C6261636B203D3D3D202766756E6374696F6E2729207B0A202020202020202020202020202020202020202020202020696E7374616E6365';
wwv_flow_api.g_varchar2_table(451) := '2E63616C6C6261636B2E6170706C7928696E7374616E63652C205B636C6F73654576656E745D293B0A20202020202020202020202020202020202020207D0A20202020202020202020202020202020202020202F2F636C6F736520746865206469616C6F';
wwv_flow_api.g_varchar2_table(452) := '67206F6E6C79206966206E6F742063616E63656C65642E0A202020202020202020202020202020202020202069662028636C6F73654576656E742E63616E63656C203D3D3D2066616C736529207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(453) := '202020696E7374616E63652E636C6F736528293B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(454) := '7D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20436C69636B73206576656E742068616E646C65722C20617474616368656420746F20746865206469616C6F6720666F6F7465722E0A2020202020202020202A0A';
wwv_flow_api.g_varchar2_table(455) := '2020202020202020202A2040706172616D207B4576656E747D0909444F4D206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D09095468652064696C6F6720696E7374616E63652E0A20202020202020';
wwv_flow_api.g_varchar2_table(456) := '20202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20627574746F6E73436C69636B48616E646C6572286576656E742C20696E7374616E6365';
wwv_flow_api.g_varchar2_table(457) := '29207B0A20202020202020202020202076617220746172676574203D206576656E742E737263456C656D656E74207C7C206576656E742E7461726765743B0A2020202020202020202020207472696767657243616C6C6261636B28696E7374616E63652C';
wwv_flow_api.g_varchar2_table(458) := '2066756E6374696F6E2028627574746F6E29207B0A202020202020202020202020202020202F2F206966207468697320627574746F6E206361757365642074686520636C69636B2C2063616E63656C206B65797570206576656E740A2020202020202020';
wwv_flow_api.g_varchar2_table(459) := '202020202020202072657475726E20627574746F6E2E656C656D656E74203D3D3D20746172676574202626202863616E63656C4B65797570203D2074727565293B0A2020202020202020202020207D293B0A20202020202020207D0A0A20202020202020';
wwv_flow_api.g_varchar2_table(460) := '202F2A2A0A2020202020202020202A204B65797570206576656E742068616E646C65722C20617474616368656420746F2074686520646F63756D656E742E626F64790A2020202020202020202A0A2020202020202020202A2040706172616D207B457665';
wwv_flow_api.g_varchar2_table(461) := '6E747D0909444F4D206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D09095468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A20407265747572';
wwv_flow_api.g_varchar2_table(462) := '6E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206B6579757048616E646C6572286576656E7429207B0A2020202020202020202020202F2F68697474696E6720656E746572207768696C652062';
wwv_flow_api.g_varchar2_table(463) := '7574746F6E2068617320666F6375732077696C6C2074726967676572206B6579757020746F6F2E0A2020202020202020202020202F2F69676E6F72652069662068616E646C656420627920636C69636B48616E646C65720A202020202020202020202020';
wwv_flow_api.g_varchar2_table(464) := '6966202863616E63656C4B6579757029207B0A2020202020202020202020202020202063616E63656C4B65797570203D2066616C73653B0A2020202020202020202020202020202072657475726E3B0A2020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(465) := '20202020202076617220696E7374616E6365203D206F70656E4469616C6F67735B6F70656E4469616C6F67732E6C656E677468202D20315D3B0A202020202020202020202020766172206B6579436F6465203D206576656E742E6B6579436F64653B0A20';
wwv_flow_api.g_varchar2_table(466) := '202020202020202020202069662028696E7374616E63652E5F5F696E7465726E616C2E627574746F6E732E6C656E677468203D3D3D2030202626206B6579436F6465203D3D3D206B6579732E45534320262620696E7374616E63652E6765742827636C6F';
wwv_flow_api.g_varchar2_table(467) := '7361626C652729203D3D3D207472756529207B0A2020202020202020202020202020202074726967676572436C6F736528696E7374616E6365293B0A2020202020202020202020202020202072657475726E2066616C73653B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(468) := '20207D656C73652069662028757365644B6579732E696E6465784F66286B6579436F646529203E202D3129207B0A202020202020202020202020202020207472696767657243616C6C6261636B28696E7374616E63652C2066756E6374696F6E20286275';
wwv_flow_api.g_varchar2_table(469) := '74746F6E29207B0A202020202020202020202020202020202020202072657475726E20627574746F6E2E6B6579203D3D3D206B6579436F64653B0A202020202020202020202020202020207D293B0A202020202020202020202020202020207265747572';
wwv_flow_api.g_varchar2_table(470) := '6E2066616C73653B0A2020202020202020202020207D0A20202020202020207D0A20202020202020202F2A2A0A20202020202020202A204B6579646F776E206576656E742068616E646C65722C20617474616368656420746F2074686520646F63756D65';
wwv_flow_api.g_varchar2_table(471) := '6E742E626F64790A20202020202020202A0A20202020202020202A2040706172616D207B4576656E747D0909444F4D206576656E74206F626A6563742E0A20202020202020202A2040706172616D207B4F626A6563747D09095468652064696C6F672069';
wwv_flow_api.g_varchar2_table(472) := '6E7374616E63652E0A20202020202020202A200A20202020202020202A204072657475726E207B756E646566696E65647D0A20202020202020202A2F0A202020202020202066756E6374696F6E206B6579646F776E48616E646C6572286576656E742920';
wwv_flow_api.g_varchar2_table(473) := '7B0A20202020202020202020202076617220696E7374616E6365203D206F70656E4469616C6F67735B6F70656E4469616C6F67732E6C656E677468202D20315D3B0A202020202020202020202020766172206B6579436F6465203D206576656E742E6B65';
wwv_flow_api.g_varchar2_table(474) := '79436F64653B0A202020202020202020202020696620286B6579436F6465203D3D3D206B6579732E4C454654207C7C206B6579436F6465203D3D3D206B6579732E524947485429207B0A2020202020202020202020202020202076617220627574746F6E';
wwv_flow_api.g_varchar2_table(475) := '73203D20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E733B0A20202020202020202020202020202020666F7220287661722078203D20303B2078203C20627574746F6E732E6C656E6774683B2078202B3D203129207B0A2020202020';
wwv_flow_api.g_varchar2_table(476) := '20202020202020202020202020202069662028646F63756D656E742E616374697665456C656D656E74203D3D3D20627574746F6E735B785D2E656C656D656E7429207B0A2020202020202020202020202020202020202020202020207377697463682028';
wwv_flow_api.g_varchar2_table(477) := '6B6579436F646529207B0A20202020202020202020202020202020202020202020202063617365206B6579732E4C4546543A0A20202020202020202020202020202020202020202020202020202020627574746F6E735B2878207C7C20627574746F6E73';
wwv_flow_api.g_varchar2_table(478) := '2E6C656E67746829202D20315D2E656C656D656E742E666F63757328293B0A2020202020202020202020202020202020202020202020202020202072657475726E3B0A20202020202020202020202020202020202020202020202063617365206B657973';
wwv_flow_api.g_varchar2_table(479) := '2E52494748543A0A20202020202020202020202020202020202020202020202020202020627574746F6E735B2878202B203129202520627574746F6E732E6C656E6774685D2E656C656D656E742E666F63757328293B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(480) := '20202020202020202020202020202072657475726E3B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(481) := '207D656C736520696620286B6579436F6465203C206B6579732E463132202B2031202626206B6579436F6465203E206B6579732E4631202D203120262620757365644B6579732E696E6465784F66286B6579436F646529203E202D3129207B0A20202020';
wwv_flow_api.g_varchar2_table(482) := '2020202020202020202020206576656E742E70726576656E7444656661756C7428293B0A202020202020202020202020202020206576656E742E73746F7050726F7061676174696F6E28293B0A2020202020202020202020202020202074726967676572';
wwv_flow_api.g_varchar2_table(483) := '43616C6C6261636B28696E7374616E63652C2066756E6374696F6E2028627574746F6E29207B0A202020202020202020202020202020202020202072657475726E20627574746F6E2E6B6579203D3D3D206B6579436F64653B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(484) := '2020202020207D293B0A2020202020202020202020202020202072657475726E2066616C73653B0A2020202020202020202020207D0A20202020202020207D0A0A0A20202020202020202F2A2A0A2020202020202020202A205365747320666F63757320';
wwv_flow_api.g_varchar2_table(485) := '746F2070726F706572206469616C6F6720656C656D656E740A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020';
wwv_flow_api.g_varchar2_table(486) := '202A2040706172616D207B4E6F64657D205B72657365745461726765743D756E646566696E65645D20444F4D20656C656D656E7420746F20726573657420666F63757320746F2E0A2020202020202020202A0A2020202020202020202A20407265747572';
wwv_flow_api.g_varchar2_table(487) := '6E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20736574466F63757328696E7374616E63652C20726573657454617267657429207B0A2020202020202020202020202F2F207265736574207461';
wwv_flow_api.g_varchar2_table(488) := '726765742068617320616C7265616479206265656E2064657465726D696E65642E0A20202020202020202020202069662028726573657454617267657429207B0A2020202020202020202020202020202072657365745461726765742E666F6375732829';
wwv_flow_api.g_varchar2_table(489) := '3B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020202F2F2063757272656E7420696E7374616E636520666F6375732073657474696E67730A2020202020202020202020202020202076617220666F63757320';
wwv_flow_api.g_varchar2_table(490) := '3D20696E7374616E63652E5F5F696E7465726E616C2E666F6375733B0A202020202020202020202020202020202F2F2074686520666F63757320656C656D656E742E0A2020202020202020202020202020202076617220656C656D656E74203D20666F63';
wwv_flow_api.g_varchar2_table(491) := '75732E656C656D656E743B0A0A202020202020202020202020202020207377697463682028747970656F6620666F6375732E656C656D656E7429207B0A202020202020202020202020202020202F2F2061206E756D626572206D65616E73206120627574';
wwv_flow_api.g_varchar2_table(492) := '746F6E20696E6465780A202020202020202020202020202020206361736520276E756D626572273A0A202020202020202020202020202020202020202069662028696E7374616E63652E5F5F696E7465726E616C2E627574746F6E732E6C656E67746820';
wwv_flow_api.g_varchar2_table(493) := '3E20666F6375732E656C656D656E7429207B0A2020202020202020202020202020202020202020202020202F2F696E20626173696320766965772C20736B697020666F637573696E672074686520627574746F6E732E0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(494) := '202020202020202020202069662028696E7374616E63652E676574282762617369632729203D3D3D207472756529207B0A20202020202020202020202020202020202020202020202020202020656C656D656E74203D20696E7374616E63652E656C656D';
wwv_flow_api.g_varchar2_table(495) := '656E74732E72657365745B305D3B0A2020202020202020202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202020202020202020656C656D656E74203D20696E7374616E63652E5F5F696E74';
wwv_flow_api.g_varchar2_table(496) := '65726E616C2E627574746F6E735B666F6375732E656C656D656E745D2E656C656D656E743B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(497) := '202020202020627265616B3B0A202020202020202020202020202020202F2F206120737472696E67206D65616E7320717565727953656C6563746F7220746F2073656C6563742066726F6D206469616C6F6720626F647920636F6E74656E74732E0A2020';
wwv_flow_api.g_varchar2_table(498) := '2020202020202020202020202020636173652027737472696E67273A0A2020202020202020202020202020202020202020656C656D656E74203D20696E7374616E63652E656C656D656E74732E626F64792E717565727953656C6563746F7228666F6375';
wwv_flow_api.g_varchar2_table(499) := '732E656C656D656E74293B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020202F2F20612066756E6374696F6E2073686F756C642072657475726E2074686520666F63757320656C656D656E74';
wwv_flow_api.g_varchar2_table(500) := '2E0A2020202020202020202020202020202063617365202766756E6374696F6E273A0A2020202020202020202020202020202020202020656C656D656E74203D20666F6375732E656C656D656E742E63616C6C28696E7374616E6365293B0A2020202020';
wwv_flow_api.g_varchar2_table(501) := '202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A202020202020202020202020202020200A202020202020202020202020202020202F2F206966206E6F20666F63757320656C656D656E742C20646566';
wwv_flow_api.g_varchar2_table(502) := '61756C7420746F20666972737420726573657420656C656D656E742E0A202020202020202020202020202020206966202828747970656F6620656C656D656E74203D3D3D2027756E646566696E656427207C7C20656C656D656E74203D3D3D206E756C6C';
wwv_flow_api.g_varchar2_table(503) := '2920262620696E7374616E63652E5F5F696E7465726E616C2E627574746F6E732E6C656E677468203D3D3D203029207B0A2020202020202020202020202020202020202020656C656D656E74203D20696E7374616E63652E656C656D656E74732E726573';
wwv_flow_api.g_varchar2_table(504) := '65745B305D3B0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F20666F6375730A2020202020202020202020202020202069662028656C656D656E7420262620656C656D656E742E666F63757329207B0A2020';
wwv_flow_api.g_varchar2_table(505) := '202020202020202020202020202020202020656C656D656E742E666F63757328293B0A20202020202020202020202020202020202020202F2F2069662073656C65637461626C650A202020202020202020202020202020202020202069662028666F6375';
wwv_flow_api.g_varchar2_table(506) := '732E73656C65637420262620656C656D656E742E73656C65637429207B0A202020202020202020202020202020202020202020202020656C656D656E742E73656C65637428293B0A20202020202020202020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(507) := '202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20466F637573206576656E742068616E646C65722C20617474616368656420746F20646F63756D656E';
wwv_flow_api.g_varchar2_table(508) := '742E626F647920616E64206469616C6F6773206F776E207265736574206C696E6B732E0A2020202020202020202A2068616E646C65732074686520666F63757320666F72206D6F64616C206469616C6F6773206F6E6C792E0A2020202020202020202A0A';
wwv_flow_api.g_varchar2_table(509) := '2020202020202020202A2040706172616D207B4576656E747D206576656E7420444F4D20666F637573206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F';
wwv_flow_api.g_varchar2_table(510) := '6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206F6E5265736574286576656E742C20696E';
wwv_flow_api.g_varchar2_table(511) := '7374616E636529207B0A0A2020202020202020202020202F2F2073686F756C6420776F726B206F6E206C617374206D6F64616C206966207472696767657265642066726F6D20646F63756D656E742E626F6479200A202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(512) := '2821696E7374616E636529207B0A20202020202020202020202020202020666F7220287661722078203D206F70656E4469616C6F67732E6C656E677468202D20313B2078203E202D313B2078202D3D203129207B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(513) := '2020202020696620286F70656E4469616C6F67735B785D2E69734D6F64616C282929207B0A202020202020202020202020202020202020202020202020696E7374616E6365203D206F70656E4469616C6F67735B785D3B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(514) := '202020202020202020202020627265616B3B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020207D0A2020202020202020202020202F2F206966206D6F64616C0A202020';
wwv_flow_api.g_varchar2_table(515) := '20202020202020202069662028696E7374616E636520262620696E7374616E63652E69734D6F64616C282929207B0A202020202020202020202020202020202F2F2064657465726D696E652072657365742074617267657420746F20656E61626C652066';
wwv_flow_api.g_varchar2_table(516) := '6F72776172642F6261636B7761726420746162206379636C652E0A202020202020202020202020202020207661722072657365745461726765742C20746172676574203D206576656E742E737263456C656D656E74207C7C206576656E742E7461726765';
wwv_flow_api.g_varchar2_table(517) := '743B0A20202020202020202020202020202020766172206C6173745265736574456C656D656E74203D20746172676574203D3D3D20696E7374616E63652E656C656D656E74732E72657365745B315D207C7C2028696E7374616E63652E5F5F696E746572';
wwv_flow_api.g_varchar2_table(518) := '6E616C2E627574746F6E732E6C656E677468203D3D3D203020262620746172676574203D3D3D20646F63756D656E742E626F6479293B0A0A202020202020202020202020202020202F2F206966206C617374207265736574206C696E6B2C207468656E20';
wwv_flow_api.g_varchar2_table(519) := '676F20746F206D6178696D697A65206F7220636C6F73650A20202020202020202020202020202020696620286C6173745265736574456C656D656E7429207B0A202020202020202020202020202020202020202069662028696E7374616E63652E676574';
wwv_flow_api.g_varchar2_table(520) := '28276D6178696D697A61626C65272929207B0A2020202020202020202020202020202020202020202020207265736574546172676574203D20696E7374616E63652E656C656D656E74732E636F6D6D616E64732E6D6178696D697A653B0A202020202020';
wwv_flow_api.g_varchar2_table(521) := '20202020202020202020202020207D20656C73652069662028696E7374616E63652E6765742827636C6F7361626C65272929207B0A2020202020202020202020202020202020202020202020207265736574546172676574203D20696E7374616E63652E';
wwv_flow_api.g_varchar2_table(522) := '656C656D656E74732E636F6D6D616E64732E636C6F73653B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F206966206E6F2072657365742074617267';
wwv_flow_api.g_varchar2_table(523) := '657420666F756E642C207472792066696E64696E6720746865206265737420627574746F6E0A20202020202020202020202020202020696620287265736574546172676574203D3D3D20756E646566696E656429207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(524) := '2020202020202069662028747970656F6620696E7374616E63652E5F5F696E7465726E616C2E666F6375732E656C656D656E74203D3D3D20276E756D6265722729207B0A2020202020202020202020202020202020202020202020202F2F20627574746F';
wwv_flow_api.g_varchar2_table(525) := '6E20666F63757320656C656D656E742C20676F20746F20666972737420617661696C61626C6520627574746F6E0A20202020202020202020202020202020202020202020202069662028746172676574203D3D3D20696E7374616E63652E656C656D656E';
wwv_flow_api.g_varchar2_table(526) := '74732E72657365745B305D29207B0A202020202020202020202020202020202020202020202020202020207265736574546172676574203D20696E7374616E63652E656C656D656E74732E627574746F6E732E617578696C696172792E66697273744368';
wwv_flow_api.g_varchar2_table(527) := '696C64207C7C20696E7374616E63652E656C656D656E74732E627574746F6E732E7072696D6172792E66697273744368696C643B0A2020202020202020202020202020202020202020202020207D20656C736520696620286C6173745265736574456C65';
wwv_flow_api.g_varchar2_table(528) := '6D656E7429207B0A202020202020202020202020202020202020202020202020202020202F2F7265737461727420746865206379636C6520627920676F696E6720746F206669727374207265736574206C696E6B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(529) := '202020202020202020202020207265736574546172676574203D20696E7374616E63652E656C656D656E74732E72657365745B305D3B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(530) := '207D20656C7365207B0A2020202020202020202020202020202020202020202020202F2F2077696C6C2072656163682068657265207768656E2074617070696E67206261636B77617264732C20736F20676F20746F206C617374206368696C640A202020';
wwv_flow_api.g_varchar2_table(531) := '2020202020202020202020202020202020202020202F2F2054686520666F63757320656C656D656E742053484F554C44204E4F54206265206120627574746F6E20286C6F676963616C6C7921292E0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(532) := '20202069662028746172676574203D3D3D20696E7374616E63652E656C656D656E74732E72657365745B305D29207B0A202020202020202020202020202020202020202020202020202020207265736574546172676574203D20696E7374616E63652E65';
wwv_flow_api.g_varchar2_table(533) := '6C656D656E74732E627574746F6E732E7072696D6172792E6C6173744368696C64207C7C20696E7374616E63652E656C656D656E74732E627574746F6E732E617578696C696172792E6C6173744368696C643B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(534) := '20202020202020207D0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A202020202020202020202020202020202F2F20666F6375730A20202020202020202020202020202020736574466F63757328';
wwv_flow_api.g_varchar2_table(535) := '696E7374616E63652C207265736574546172676574293B0A2020202020202020202020207D0A20202020202020207D0A20202020202020202F2A2A0A2020202020202020202A205472616E736974696F6E20696E207472616E736974696F6E656E642065';
wwv_flow_api.g_varchar2_table(536) := '76656E742068616E646C65722E200A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D09095472616E736974696F6E456E64206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(537) := '4F626A6563747D09095468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(538) := '68616E646C655472616E736974696F6E496E4576656E74286576656E742C20696E7374616E636529207B0A2020202020202020202020202F2F20636C656172207468652074696D65720A202020202020202020202020636C65617254696D656F75742869';
wwv_flow_api.g_varchar2_table(539) := '6E7374616E63652E5F5F696E7465726E616C2E74696D6572496E293B0A0A2020202020202020202020202F2F206F6E6365207472616E736974696F6E20697320636F6D706C6574652C2073657420666F6375730A20202020202020202020202073657446';
wwv_flow_api.g_varchar2_table(540) := '6F63757328696E7374616E6365293B0A0A2020202020202020202020202F2F726573746F7265207363726F6C6C20746F2070726576656E7420646F63756D656E74206A756D700A202020202020202020202020726573746F72655363726F6C6C506F7369';
wwv_flow_api.g_varchar2_table(541) := '74696F6E28293B0A0A2020202020202020202020202F2F20616C6C6F772068616E646C696E67206B6579207570206166746572207472616E736974696F6E20656E6465642E0A20202020202020202020202063616E63656C4B65797570203D2066616C73';
wwv_flow_api.g_varchar2_table(542) := '653B0A0A2020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E666F63757360206D6574686F640A20202020202020202020202064697370617463684576656E7428276F6E666F637573272C20696E7374616E6365293B0A0A2020';
wwv_flow_api.g_varchar2_table(543) := '202020202020202020202F2F20756E62696E6420746865206576656E740A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E6469616C6F672C207472616E736974696F6E2E747970652C20696E7374616E63652E5F5F';
wwv_flow_api.g_varchar2_table(544) := '696E7465726E616C2E7472616E736974696F6E496E48616E646C6572293B0A0A20202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E616E696D6174696F6E496E29';
wwv_flow_api.g_varchar2_table(545) := '3B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A205472616E736974696F6E206F7574207472616E736974696F6E656E64206576656E742068616E646C65722E200A2020202020202020202A0A2020202020202020';
wwv_flow_api.g_varchar2_table(546) := '202A2040706172616D207B4576656E747D09095472616E736974696F6E456E64206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4F626A6563747D09095468652064696C6F6720696E7374616E63652E0A2020202020';
wwv_flow_api.g_varchar2_table(547) := '202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2068616E646C655472616E736974696F6E4F75744576656E74286576656E742C20696E';
wwv_flow_api.g_varchar2_table(548) := '7374616E636529207B0A2020202020202020202020202F2F20636C656172207468652074696D65720A202020202020202020202020636C65617254696D656F757428696E7374616E63652E5F5F696E7465726E616C2E74696D65724F7574293B0A202020';
wwv_flow_api.g_varchar2_table(549) := '2020202020202020202F2F20756E62696E6420746865206576656E740A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E6469616C6F672C207472616E736974696F6E2E747970652C20696E7374616E63652E5F5F69';
wwv_flow_api.g_varchar2_table(550) := '6E7465726E616C2E7472616E736974696F6E4F757448616E646C6572293B0A0A2020202020202020202020202F2F207265736574206D6F766520757064617465730A20202020202020202020202072657365744D6F766528696E7374616E6365293B0A20';
wwv_flow_api.g_varchar2_table(551) := '20202020202020202020202F2F20726573657420726573697A6520757064617465730A2020202020202020202020207265736574526573697A6528696E7374616E6365293B0A0A2020202020202020202020202F2F20726573746F7265206966206D6178';
wwv_flow_api.g_varchar2_table(552) := '696D697A65640A20202020202020202020202069662028696E7374616E63652E69734D6178696D697A656428292026262021696E7374616E63652E676574282773746172744D6178696D697A6564272929207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(553) := '726573746F726528696E7374616E6365293B0A2020202020202020202020207D0A0A2020202020202020202020202F2F2072657475726E20666F63757320746F20746865206C6173742061637469766520656C656D656E740A2020202020202020202020';
wwv_flow_api.g_varchar2_table(554) := '2069662028616C6572746966792E64656661756C74732E6D61696E7461696E466F63757320262620696E7374616E63652E5F5F696E7465726E616C2E616374697665456C656D656E7429207B0A20202020202020202020202020202020696E7374616E63';
wwv_flow_api.g_varchar2_table(555) := '652E5F5F696E7465726E616C2E616374697665456C656D656E742E666F63757328293B0A20202020202020202020202020202020696E7374616E63652E5F5F696E7465726E616C2E616374697665456C656D656E74203D206E756C6C3B0A202020202020';
wwv_flow_api.g_varchar2_table(556) := '2020202020207D0A2020202020202020202020200A2020202020202020202020202F2F646573746F72792074686520696E7374616E63650A20202020202020202020202069662028747970656F6620696E7374616E63652E5F5F696E7465726E616C2E64';
wwv_flow_api.g_varchar2_table(557) := '657374726F79203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202020202020696E7374616E63652E5F5F696E7465726E616C2E64657374726F792E6170706C7928696E7374616E6365293B0A2020202020202020202020207D0A';
wwv_flow_api.g_varchar2_table(558) := '20202020202020207D0A20202020202020202F2A20436F6E74726F6C73206D6F76696E672061206469616C6F672061726F756E64202A2F0A20202020202020202F2F686F6C6465207468652063757272656E74206D6F76696E6720696E7374616E63650A';
wwv_flow_api.g_varchar2_table(559) := '2020202020202020766172206D6F7661626C65203D206E756C6C2C0A2020202020202020202020202F2F686F6C6473207468652063757272656E742058206F6666736574207768656E206D6F7665207374617274730A2020202020202020202020206F66';
wwv_flow_api.g_varchar2_table(560) := '6673657458203D20302C0A2020202020202020202020202F2F686F6C6473207468652063757272656E742059206F6666736574207768656E206D6F7665207374617274730A2020202020202020202020206F666673657459203D20302C0A202020202020';
wwv_flow_api.g_varchar2_table(561) := '2020202020207850726F70203D20277061676558272C0A2020202020202020202020207950726F70203D20277061676559272C0A202020202020202020202020626F756E6473203D206E756C6C2C0A20202020202020202020202072656672657368546F';
wwv_flow_api.g_varchar2_table(562) := '70203D2066616C73652C0A2020202020202020202020206D6F766544656C6567617465203D206E756C6C0A20202020202020203B0A0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20736574732074686520656C656D656E';
wwv_flow_api.g_varchar2_table(563) := '7420746F702F6C65667420636F6F7264696E617465730A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A204070617261';
wwv_flow_api.g_varchar2_table(564) := '6D207B4E6F64657D20656C656D656E742054686520656C656D656E74206265696E67206D6F7665642E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020';
wwv_flow_api.g_varchar2_table(565) := '202020202066756E6374696F6E206D6F7665456C656D656E74286576656E742C20656C656D656E7429207B0A202020202020202020202020766172206C656674203D20286576656E745B7850726F705D202D206F666673657458292C0A20202020202020';
wwv_flow_api.g_varchar2_table(566) := '202020202020202020746F7020203D20286576656E745B7950726F705D202D206F666673657459293B0A0A20202020202020202020202069662872656672657368546F70297B0A20202020202020202020202020202020746F70202D3D20646F63756D65';
wwv_flow_api.g_varchar2_table(567) := '6E742E626F64792E7363726F6C6C546F703B0A2020202020202020202020207D0A20202020202020202020200A202020202020202020202020656C656D656E742E7374796C652E6C656674203D206C656674202B20277078273B0A202020202020202020';
wwv_flow_api.g_varchar2_table(568) := '202020656C656D656E742E7374796C652E746F70203D20746F70202B20277078273B0A20202020202020202020200A20202020202020207D0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20736574732074686520656C65';
wwv_flow_api.g_varchar2_table(569) := '6D656E7420746F702F6C65667420636F6F7264696E617465732077697468696E2073637265656E20626F756E64730A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E7420';
wwv_flow_api.g_varchar2_table(570) := '6F626A6563742E0A2020202020202020202A2040706172616D207B4E6F64657D20656C656D656E742054686520656C656D656E74206265696E67206D6F7665642E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E';
wwv_flow_api.g_varchar2_table(571) := '646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E206D6F7665456C656D656E74426F756E646564286576656E742C20656C656D656E7429207B0A202020202020202020202020766172206C656674203D202865';
wwv_flow_api.g_varchar2_table(572) := '76656E745B7850726F705D202D206F666673657458292C0A20202020202020202020202020202020746F7020203D20286576656E745B7950726F705D202D206F666673657459293B0A0A20202020202020202020202069662872656672657368546F7029';
wwv_flow_api.g_varchar2_table(573) := '7B0A20202020202020202020202020202020746F70202D3D20646F63756D656E742E626F64792E7363726F6C6C546F703B0A2020202020202020202020207D0A2020202020202020202020200A202020202020202020202020656C656D656E742E737479';
wwv_flow_api.g_varchar2_table(574) := '6C652E6C656674203D204D6174682E6D696E28626F756E64732E6D61784C6566742C204D6174682E6D617828626F756E64732E6D696E4C6566742C206C6566742929202B20277078273B0A20202020202020202020202069662872656672657368546F70';
wwv_flow_api.g_varchar2_table(575) := '297B0A20202020202020202020202020202020656C656D656E742E7374796C652E746F70203D204D6174682E6D696E28626F756E64732E6D6178546F702C204D6174682E6D617828626F756E64732E6D696E546F702C20746F702929202B20277078273B';
wwv_flow_api.g_varchar2_table(576) := '0A2020202020202020202020207D656C73657B0A20202020202020202020202020202020656C656D656E742E7374796C652E746F70203D204D6174682E6D617828626F756E64732E6D696E546F702C20746F7029202B20277078273B0A20202020202020';
wwv_flow_api.g_varchar2_table(577) := '20202020207D0A20202020202020207D0A2020202020202020202020200A0A20202020202020202F2A2A0A2020202020202020202A20547269676765727320746865207374617274206F662061206D6F7665206576656E742C2061747461636865642074';
wwv_flow_api.g_varchar2_table(578) := '6F207468652068656164657220656C656D656E74206D6F75736520646F776E206576656E742E0A2020202020202020202A2041646473206E6F2D73656C656374696F6E20636C61737320746F2074686520626F64792C2064697361626C696E672073656C';
wwv_flow_api.g_varchar2_table(579) := '656374696F6E207768696C65206D6F76696E672E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A2040706172616D20';
wwv_flow_api.g_varchar2_table(580) := '7B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B426F6F6C65616E7D2066616C73650A2020202020202020202A2F0A202020';
wwv_flow_api.g_varchar2_table(581) := '202020202066756E6374696F6E20626567696E4D6F7665286576656E742C20696E7374616E636529207B0A20202020202020202020202069662028726573697A61626C65203D3D3D206E756C6C2026262021696E7374616E63652E69734D6178696D697A';
wwv_flow_api.g_varchar2_table(582) := '6564282920262620696E7374616E63652E67657428276D6F7661626C65272929207B0A20202020202020202020202020202020766172206576656E745372632C206C6566743D302C20746F703D303B0A2020202020202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(583) := '6576656E742E74797065203D3D3D2027746F75636873746172742729207B0A20202020202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0A20202020202020202020202020202020202020206576656E74';
wwv_flow_api.g_varchar2_table(584) := '537263203D206576656E742E746172676574546F75636865735B305D3B0A20202020202020202020202020202020202020207850726F70203D2027636C69656E7458273B0A20202020202020202020202020202020202020207950726F70203D2027636C';
wwv_flow_api.g_varchar2_table(585) := '69656E7459273B0A202020202020202020202020202020207D20656C736520696620286576656E742E627574746F6E203D3D3D203029207B0A20202020202020202020202020202020202020206576656E74537263203D206576656E743B0A2020202020';
wwv_flow_api.g_varchar2_table(586) := '20202020202020202020207D0A0A20202020202020202020202020202020696620286576656E7453726329207B0A0A202020202020202020202020202020202020202076617220656C656D656E74203D20696E7374616E63652E656C656D656E74732E64';
wwv_flow_api.g_varchar2_table(587) := '69616C6F673B0A2020202020202020202020202020202020202020616464436C61737328656C656D656E742C20636C61737365732E63617074757265293B0A0A202020202020202020202020202020202020202069662028656C656D656E742E7374796C';
wwv_flow_api.g_varchar2_table(588) := '652E6C65667429207B0A2020202020202020202020202020202020202020202020206C656674203D207061727365496E7428656C656D656E742E7374796C652E6C6566742C203130293B0A20202020202020202020202020202020202020207D0A0A2020';
wwv_flow_api.g_varchar2_table(589) := '20202020202020202020202020202020202069662028656C656D656E742E7374796C652E746F7029207B0A202020202020202020202020202020202020202020202020746F70203D207061727365496E7428656C656D656E742E7374796C652E746F702C';
wwv_flow_api.g_varchar2_table(590) := '203130293B0A20202020202020202020202020202020202020207D0A20202020202020202020202020202020202020200A20202020202020202020202020202020202020206F666673657458203D206576656E745372635B7850726F705D202D206C6566';
wwv_flow_api.g_varchar2_table(591) := '743B0A20202020202020202020202020202020202020206F666673657459203D206576656E745372635B7950726F705D202D20746F703B0A0A2020202020202020202020202020202020202020696628696E7374616E63652E69734D6F64616C2829297B';
wwv_flow_api.g_varchar2_table(592) := '0A2020202020202020202020202020202020202020202020206F666673657459202B3D20696E7374616E63652E656C656D656E74732E6D6F64616C2E7363726F6C6C546F703B0A20202020202020202020202020202020202020207D656C736520696628';
wwv_flow_api.g_varchar2_table(593) := '696E7374616E63652E697350696E6E65642829297B0A2020202020202020202020202020202020202020202020206F666673657459202D3D20646F63756D656E742E626F64792E7363726F6C6C546F703B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(594) := '20207D0A20202020202020202020202020202020202020200A2020202020202020202020202020202020202020696628696E7374616E63652E67657428276D6F7665426F756E6465642729297B0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(595) := '20207661722063757272656E74203D20656C656D656E742C0A202020202020202020202020202020202020202020202020202020206F66667365744C656674203D202D6C6566742C0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(596) := '206F6666736574546F70203D202D746F703B0A2020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202F2F63616C63206F66667365740A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(597) := '202020202020646F207B0A202020202020202020202020202020202020202020202020202020206F66667365744C656674202B3D2063757272656E742E6F66667365744C6566743B0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(598) := '206F6666736574546F70202B3D2063757272656E742E6F6666736574546F703B0A2020202020202020202020202020202020202020202020207D207768696C65202863757272656E74203D2063757272656E742E6F6666736574506172656E74293B0A20';
wwv_flow_api.g_varchar2_table(599) := '20202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020626F756E6473203D207B0A202020202020202020202020202020202020202020202020202020206D61784C656674203A206F6666';
wwv_flow_api.g_varchar2_table(600) := '7365744C6566742C0A202020202020202020202020202020202020202020202020202020206D696E4C656674203A202D6F66667365744C6566742C0A202020202020202020202020202020202020202020202020202020206D6178546F7020203A20646F';
wwv_flow_api.g_varchar2_table(601) := '63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874202D20656C656D656E742E636C69656E74486569676874202D206F6666736574546F702C0A20202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(602) := '6D696E546F7020203A202D6F6666736574546F700A2020202020202020202020202020202020202020202020207D3B0A2020202020202020202020202020202020202020202020206D6F766544656C6567617465203D206D6F7665456C656D656E74426F';
wwv_flow_api.g_varchar2_table(603) := '756E6465643B0A20202020202020202020202020202020202020207D656C73657B0A202020202020202020202020202020202020202020202020626F756E6473203D206E756C6C3B0A2020202020202020202020202020202020202020202020206D6F76';
wwv_flow_api.g_varchar2_table(604) := '6544656C6567617465203D206D6F7665456C656D656E743B0A20202020202020202020202020202020202020207D0A20202020202020202020202020202020202020200A20202020202020202020202020202020202020202F2F20616C6C6F7720637573';
wwv_flow_api.g_varchar2_table(605) := '746F6D20606F6E6D6F766560206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E7428276F6E6D6F7665272C20696E7374616E6365293B0A0A202020202020202020202020202020202020202072656672';
wwv_flow_api.g_varchar2_table(606) := '657368546F70203D2021696E7374616E63652E69734D6F64616C282920262620696E7374616E63652E697350696E6E656428293B0A20202020202020202020202020202020202020206D6F7661626C65203D20696E7374616E63653B0A20202020202020';
wwv_flow_api.g_varchar2_table(607) := '202020202020202020202020206D6F766544656C6567617465286576656E745372632C20656C656D656E74293B0A2020202020202020202020202020202020202020616464436C61737328646F63756D656E742E626F64792C20636C61737365732E6E6F';
wwv_flow_api.g_varchar2_table(608) := '53656C656374696F6E293B0A202020202020202020202020202020202020202072657475726E2066616C73653B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A';
wwv_flow_api.g_varchar2_table(609) := '0A2020202020202020202A205468652061637475616C206D6F76652068616E646C65722C2020617474616368656420746F20646F63756D656E742E626F6479206D6F7573656D6F7665206576656E742E0A2020202020202020202A0A2020202020202020';
wwv_flow_api.g_varchar2_table(610) := '202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020';
wwv_flow_api.g_varchar2_table(611) := '202020202066756E6374696F6E206D6F7665286576656E7429207B0A202020202020202020202020696620286D6F7661626C6529207B0A20202020202020202020202020202020766172206576656E745372633B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(612) := '20696620286576656E742E74797065203D3D3D2027746F7563686D6F76652729207B0A20202020202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0A202020202020202020202020202020202020202065';
wwv_flow_api.g_varchar2_table(613) := '76656E74537263203D206576656E742E746172676574546F75636865735B305D3B0A202020202020202020202020202020207D20656C736520696620286576656E742E627574746F6E203D3D3D203029207B0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(614) := '2020206576656E74537263203D206576656E743B0A202020202020202020202020202020207D0A20202020202020202020202020202020696620286576656E7453726329207B0A20202020202020202020202020202020202020206D6F766544656C6567';
wwv_flow_api.g_varchar2_table(615) := '617465286576656E745372632C206D6F7661626C652E656C656D656E74732E6469616C6F67293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020';
wwv_flow_api.g_varchar2_table(616) := '202020202A2054726967676572732074686520656E64206F662061206D6F7665206576656E742C2020617474616368656420746F20646F63756D656E742E626F6479206D6F7573657570206576656E742E0A2020202020202020202A2052656D6F766573';
wwv_flow_api.g_varchar2_table(617) := '206E6F2D73656C656374696F6E20636C6173732066726F6D20646F63756D656E742E626F64792C20616C6C6F77696E672073656C656374696F6E2E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E6564';
wwv_flow_api.g_varchar2_table(618) := '7D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20656E644D6F76652829207B0A202020202020202020202020696620286D6F7661626C6529207B0A2020202020202020202020202020202076617220696E7374616E6365203D';
wwv_flow_api.g_varchar2_table(619) := '206D6F7661626C653B0A202020202020202020202020202020206D6F7661626C65203D20626F756E6473203D206E756C6C3B0A2020202020202020202020202020202072656D6F7665436C61737328646F63756D656E742E626F64792C20636C61737365';
wwv_flow_api.g_varchar2_table(620) := '732E6E6F53656C656374696F6E293B0A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E6469616C6F672C20636C61737365732E63617074757265293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(621) := '202020202F2F20616C6C6F7720637573746F6D20606F6E6D6F76656460206D6574686F640A2020202020202020202020202020202064697370617463684576656E7428276F6E6D6F766564272C20696E7374616E6365293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(622) := '207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2052657365747320616E79206368616E676573206D616465206279206D6F76696E672074686520656C656D656E7420746F20697473206F726967696E616C2073';
wwv_flow_api.g_varchar2_table(623) := '746174652C0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475';
wwv_flow_api.g_varchar2_table(624) := '726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2072657365744D6F766528696E7374616E636529207B0A2020202020202020202020206D6F7661626C65203D206E756C6C3B0A202020202020';
wwv_flow_api.g_varchar2_table(625) := '20202020202076617220656C656D656E74203D20696E7374616E63652E656C656D656E74732E6469616C6F673B0A202020202020202020202020656C656D656E742E7374796C652E6C656674203D20656C656D656E742E7374796C652E746F70203D2027';
wwv_flow_api.g_varchar2_table(626) := '273B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A205570646174657320746865206469616C6F67206D6F7665206265686176696F722E0A2020202020202020202A0A2020202020202020202A2040706172616D20';
wwv_flow_api.g_varchar2_table(627) := '7B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D206F6E205472756520746F2061646420746865206265686176696F722C2072656D6F76';
wwv_flow_api.g_varchar2_table(628) := '6573206974206F74686572776973652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207570646174654D6F7661626C';
wwv_flow_api.g_varchar2_table(629) := '6528696E7374616E636529207B0A20202020202020202020202069662028696E7374616E63652E67657428276D6F7661626C65272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(630) := '2020616464436C61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6F7661626C65293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A202020202020';
wwv_flow_api.g_varchar2_table(631) := '202020202020202020202020202062696E644D6F7661626C654576656E747328696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D20656C7365207B0A0A202020202020202020202020202020202F';
wwv_flow_api.g_varchar2_table(632) := '2F72657365740A2020202020202020202020202020202072657365744D6F766528696E7374616E6365293B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C';
wwv_flow_api.g_varchar2_table(633) := '61737328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E6D6F7661626C65293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(634) := '20202020202020756E62696E644D6F7661626C654576656E747328696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A20436F6E74726F6C73';
wwv_flow_api.g_varchar2_table(635) := '206D6F76696E672061206469616C6F672061726F756E64202A2F0A20202020202020202F2F686F6C6465207468652063757272656E7420696E7374616E6365206265696E6720726573697A656409090A202020202020202076617220726573697A61626C';
wwv_flow_api.g_varchar2_table(636) := '65203D206E756C6C2C0A2020202020202020202020202F2F686F6C6473207468652073746172696E67206C656674206F6666736574207768656E20726573697A65207374617274732E0A2020202020202020202020207374617274696E674C656674203D';
wwv_flow_api.g_varchar2_table(637) := '204E756D6265722E4E616E2C0A2020202020202020202020202F2F686F6C6473207468652073746172696E67207769647468207768656E20726573697A65207374617274732E0A2020202020202020202020207374617274696E675769647468203D2030';
wwv_flow_api.g_varchar2_table(638) := '2C0A2020202020202020202020202F2F686F6C64732074686520696E697469616C207769647468207768656E20726573697A656420666F72207468652066697273742074696D652E0A2020202020202020202020206D696E5769647468203D20302C0A20';
wwv_flow_api.g_varchar2_table(639) := '20202020202020202020202F2F686F6C647320746865206F6666736574206F662074686520726573697A652068616E646C652E0A20202020202020202020202068616E646C654F6666736574203D20300A20202020202020203B0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(640) := '2F2A2A0A2020202020202020202A2048656C7065723A20736574732074686520656C656D656E742077696474682F68656967687420616E642075706461746573206C65667420636F6F7264696E617465206966206E6563636573736172792E0A20202020';
wwv_flow_api.g_varchar2_table(641) := '20202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206D6F7573656D6F7665206576656E74206F626A6563742E0A2020202020202020202A2040706172616D207B4E6F64657D20656C656D656E7420';
wwv_flow_api.g_varchar2_table(642) := '54686520656C656D656E74206265696E67206D6F7665642E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D2070696E6E6564204120666C616720696E6469636174696E672069662074686520656C656D656E74206265696E672072';
wwv_flow_api.g_varchar2_table(643) := '6573697A65642069732070696E6E656420746F207468652073637265656E2E0A2020202020202020202A200A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374';
wwv_flow_api.g_varchar2_table(644) := '696F6E20726573697A65456C656D656E74286576656E742C20656C656D656E742C207061676552656C617469766529207B0A0A2020202020202020202020202F2F63616C63756C617465206F6666736574732066726F6D20302C300A2020202020202020';
wwv_flow_api.g_varchar2_table(645) := '202020207661722063757272656E74203D20656C656D656E743B0A202020202020202020202020766172206F66667365744C656674203D20303B0A202020202020202020202020766172206F6666736574546F70203D20303B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(646) := '2020646F207B0A202020202020202020202020202020206F66667365744C656674202B3D2063757272656E742E6F66667365744C6566743B0A202020202020202020202020202020206F6666736574546F70202B3D2063757272656E742E6F6666736574';
wwv_flow_api.g_varchar2_table(647) := '546F703B0A2020202020202020202020207D207768696C65202863757272656E74203D2063757272656E742E6F6666736574506172656E74293B0A0A2020202020202020202020202F2F2064657465726D696E6520582C5920636F6F7264696E61746573';
wwv_flow_api.g_varchar2_table(648) := '2E0A20202020202020202020202076617220582C20593B0A202020202020202020202020696620287061676552656C6174697665203D3D3D207472756529207B0A2020202020202020202020202020202058203D206576656E742E70616765583B0A2020';
wwv_flow_api.g_varchar2_table(649) := '202020202020202020202020202059203D206576656E742E70616765593B0A2020202020202020202020207D20656C7365207B0A2020202020202020202020202020202058203D206576656E742E636C69656E74583B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(650) := '20202059203D206576656E742E636C69656E74593B0A2020202020202020202020207D0A2020202020202020202020202F2F2072746C2068616E646C696E670A20202020202020202020202076617220697352544C203D2069735269676874546F4C6566';
wwv_flow_api.g_varchar2_table(651) := '7428293B0A20202020202020202020202069662028697352544C29207B0A202020202020202020202020202020202F2F20726576657273652058200A2020202020202020202020202020202058203D20646F63756D656E742E626F64792E6F6666736574';
wwv_flow_api.g_varchar2_table(652) := '5769647468202D20583B0A202020202020202020202020202020202F2F206966206861732061207374617274696E67206C6566742C2063616C63756C617465206F666673657452696768740A20202020202020202020202020202020696620282169734E';
wwv_flow_api.g_varchar2_table(653) := '614E287374617274696E674C6566742929207B0A20202020202020202020202020202020202020206F66667365744C656674203D20646F63756D656E742E626F64792E6F66667365745769647468202D206F66667365744C656674202D20656C656D656E';
wwv_flow_api.g_varchar2_table(654) := '742E6F666673657457696474683B0A202020202020202020202020202020207D0A2020202020202020202020207D0A0A2020202020202020202020202F2F207365742077696474682F6865696768740A202020202020202020202020656C656D656E742E';
wwv_flow_api.g_varchar2_table(655) := '7374796C652E686569676874203D202859202D206F6666736574546F70202B2068616E646C654F666673657429202B20277078273B0A202020202020202020202020656C656D656E742E7374796C652E7769647468203D202858202D206F66667365744C';
wwv_flow_api.g_varchar2_table(656) := '656674202B2068616E646C654F666673657429202B20277078273B0A0A2020202020202020202020202F2F2069662074686520656C656D656E74206265696E6720726573697A6564206861732061207374617274696E67206C6566742C206D61696E7461';
wwv_flow_api.g_varchar2_table(657) := '696E2069742E0A2020202020202020202020202F2F20746865206469616C6F672069732063656E74657265642C206469766964652062792068616C6620746865206F666673657420746F206D61696E7461696E20746865206D617267696E732E0A202020';
wwv_flow_api.g_varchar2_table(658) := '202020202020202020696620282169734E614E287374617274696E674C6566742929207B0A202020202020202020202020202020207661722064696666203D204D6174682E61627328656C656D656E742E6F66667365745769647468202D207374617274';
wwv_flow_api.g_varchar2_table(659) := '696E67576964746829202A20302E353B0A2020202020202020202020202020202069662028697352544C29207B0A20202020202020202020202020202020202020202F2F6E65676174652074686520646966662C207768793F0A20202020202020202020';
wwv_flow_api.g_varchar2_table(660) := '202020202020202020202F2F7768656E2067726F77696E672069742073686F756C64206465637265617365206C6566740A20202020202020202020202020202020202020202F2F7768656E20736872696E6B696E672069742073686F756C6420696E6372';
wwv_flow_api.g_varchar2_table(661) := '65617365206C6566740A202020202020202020202020202020202020202064696666202A3D202D313B0A202020202020202020202020202020207D0A2020202020202020202020202020202069662028656C656D656E742E6F6666736574576964746820';
wwv_flow_api.g_varchar2_table(662) := '3E207374617274696E67576964746829207B0A20202020202020202020202020202020202020202F2F67726F77696E670A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6C656674203D20287374617274696E674C';
wwv_flow_api.g_varchar2_table(663) := '656674202B206469666629202B20277078273B0A202020202020202020202020202020207D20656C73652069662028656C656D656E742E6F66667365745769647468203E3D206D696E576964746829207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(664) := '20202F2F736872696E6B696E670A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6C656674203D20287374617274696E674C656674202D206469666629202B20277078273B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(665) := '207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20547269676765727320746865207374617274206F66206120726573697A65206576656E742C20617474616368656420746F';
wwv_flow_api.g_varchar2_table(666) := '2074686520726573697A652068616E646C6520656C656D656E74206D6F75736520646F776E206576656E742E0A2020202020202020202A2041646473206E6F2D73656C656374696F6E20636C61737320746F2074686520626F64792C2064697361626C69';
wwv_flow_api.g_varchar2_table(667) := '6E672073656C656374696F6E207768696C65206D6F76696E672E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A2040';
wwv_flow_api.g_varchar2_table(668) := '706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A200A2020202020202020202A204072657475726E207B426F6F6C65616E7D2066616C73650A202020202020202020';
wwv_flow_api.g_varchar2_table(669) := '2A2F0A202020202020202066756E6374696F6E20626567696E526573697A65286576656E742C20696E7374616E636529207B0A2020202020202020202020206966202821696E7374616E63652E69734D6178696D697A6564282929207B0A202020202020';
wwv_flow_api.g_varchar2_table(670) := '20202020202020202020766172206576656E745372633B0A20202020202020202020202020202020696620286576656E742E74797065203D3D3D2027746F75636873746172742729207B0A20202020202020202020202020202020202020206576656E74';
wwv_flow_api.g_varchar2_table(671) := '2E70726576656E7444656661756C7428293B0A20202020202020202020202020202020202020206576656E74537263203D206576656E742E746172676574546F75636865735B305D3B0A202020202020202020202020202020207D20656C736520696620';
wwv_flow_api.g_varchar2_table(672) := '286576656E742E627574746F6E203D3D3D203029207B0A20202020202020202020202020202020202020206576656E74537263203D206576656E743B0A202020202020202020202020202020207D0A202020202020202020202020202020206966202865';
wwv_flow_api.g_varchar2_table(673) := '76656E7453726329207B0A20202020202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E726573697A6560206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E742827';
wwv_flow_api.g_varchar2_table(674) := '6F6E726573697A65272C20696E7374616E6365293B0A20202020202020202020202020202020202020200A2020202020202020202020202020202020202020726573697A61626C65203D20696E7374616E63653B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(675) := '202020202068616E646C654F6666736574203D20696E7374616E63652E656C656D656E74732E726573697A6548616E646C652E6F6666736574486569676874202F20323B0A202020202020202020202020202020202020202076617220656C656D656E74';
wwv_flow_api.g_varchar2_table(676) := '203D20696E7374616E63652E656C656D656E74732E6469616C6F673B0A2020202020202020202020202020202020202020616464436C61737328656C656D656E742C20636C61737365732E63617074757265293B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(677) := '20202020207374617274696E674C656674203D207061727365496E7428656C656D656E742E7374796C652E6C6566742C203130293B0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E686569676874203D20656C65';
wwv_flow_api.g_varchar2_table(678) := '6D656E742E6F6666736574486569676874202B20277078273B0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6D696E486569676874203D20696E7374616E63652E656C656D656E74732E6865616465722E6F6666';
wwv_flow_api.g_varchar2_table(679) := '736574486569676874202B20696E7374616E63652E656C656D656E74732E666F6F7465722E6F6666736574486569676874202B20277078273B0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E7769647468203D20';
wwv_flow_api.g_varchar2_table(680) := '287374617274696E675769647468203D20656C656D656E742E6F6666736574576964746829202B20277078273B0A0A202020202020202020202020202020202020202069662028656C656D656E742E7374796C652E6D6178576964746820213D3D20276E';
wwv_flow_api.g_varchar2_table(681) := '6F6E652729207B0A202020202020202020202020202020202020202020202020656C656D656E742E7374796C652E6D696E5769647468203D20286D696E5769647468203D20656C656D656E742E6F6666736574576964746829202B20277078273B0A2020';
wwv_flow_api.g_varchar2_table(682) := '2020202020202020202020202020202020207D0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6D61785769647468203D20276E6F6E65273B0A2020202020202020202020202020202020202020616464436C6173';
wwv_flow_api.g_varchar2_table(683) := '7328646F63756D656E742E626F64792C20636C61737365732E6E6F53656C656374696F6E293B0A202020202020202020202020202020202020202072657475726E2066616C73653B0A202020202020202020202020202020207D0A202020202020202020';
wwv_flow_api.g_varchar2_table(684) := '2020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A205468652061637475616C20726573697A652068616E646C65722C2020617474616368656420746F20646F63756D656E742E626F6479206D6F7573656D6F';
wwv_flow_api.g_varchar2_table(685) := '7665206576656E742E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E7409444F4D206576656E74206F626A6563742E0A2020202020202020202A200A2020202020202020202A20407265747572';
wwv_flow_api.g_varchar2_table(686) := '6E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20726573697A65286576656E7429207B0A20202020202020202020202069662028726573697A61626C6529207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(687) := '20202020766172206576656E745372633B0A20202020202020202020202020202020696620286576656E742E74797065203D3D3D2027746F7563686D6F76652729207B0A20202020202020202020202020202020202020206576656E742E70726576656E';
wwv_flow_api.g_varchar2_table(688) := '7444656661756C7428293B0A20202020202020202020202020202020202020206576656E74537263203D206576656E742E746172676574546F75636865735B305D3B0A202020202020202020202020202020207D20656C736520696620286576656E742E';
wwv_flow_api.g_varchar2_table(689) := '627574746F6E203D3D3D203029207B0A20202020202020202020202020202020202020206576656E74537263203D206576656E743B0A202020202020202020202020202020207D0A20202020202020202020202020202020696620286576656E74537263';
wwv_flow_api.g_varchar2_table(690) := '29207B0A2020202020202020202020202020202020202020726573697A65456C656D656E74286576656E745372632C20726573697A61626C652E656C656D656E74732E6469616C6F672C2021726573697A61626C652E67657428276D6F64616C27292026';
wwv_flow_api.g_varchar2_table(691) := '262021726573697A61626C652E676574282770696E6E65642729293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A205472696767';
wwv_flow_api.g_varchar2_table(692) := '6572732074686520656E64206F66206120726573697A65206576656E742C2020617474616368656420746F20646F63756D656E742E626F6479206D6F7573657570206576656E742E0A2020202020202020202A2052656D6F766573206E6F2D73656C6563';
wwv_flow_api.g_varchar2_table(693) := '74696F6E20636C6173732066726F6D20646F63756D656E742E626F64792C20616C6C6F77696E672073656C656374696F6E2E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A20202020202020';
wwv_flow_api.g_varchar2_table(694) := '20202A2F0A202020202020202066756E6374696F6E20656E64526573697A652829207B0A20202020202020202020202069662028726573697A61626C6529207B0A2020202020202020202020202020202076617220696E7374616E6365203D2072657369';
wwv_flow_api.g_varchar2_table(695) := '7A61626C653B0A20202020202020202020202020202020726573697A61626C65203D206E756C6C3B0A2020202020202020202020202020202072656D6F7665436C61737328646F63756D656E742E626F64792C20636C61737365732E6E6F53656C656374';
wwv_flow_api.g_varchar2_table(696) := '696F6E293B0A2020202020202020202020202020202072656D6F7665436C61737328696E7374616E63652E656C656D656E74732E6469616C6F672C20636C61737365732E63617074757265293B0A2020202020202020202020202020202063616E63656C';
wwv_flow_api.g_varchar2_table(697) := '436C69636B203D20747275653B0A202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E726573697A656460206D6574686F640A2020202020202020202020202020202064697370617463684576656E7428276F6E7265';
wwv_flow_api.g_varchar2_table(698) := '73697A6564272C20696E7374616E6365293B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2052657365747320616E79206368616E676573206D61646520627920726573697A69';
wwv_flow_api.g_varchar2_table(699) := '6E672074686520656C656D656E7420746F20697473206F726967696E616C2073746174652E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E737461';
wwv_flow_api.g_varchar2_table(700) := '6E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E207265736574526573697A6528696E7374616E636529207B0A';
wwv_flow_api.g_varchar2_table(701) := '202020202020202020202020726573697A61626C65203D206E756C6C3B0A20202020202020202020202076617220656C656D656E74203D20696E7374616E63652E656C656D656E74732E6469616C6F673B0A20202020202020202020202069662028656C';
wwv_flow_api.g_varchar2_table(702) := '656D656E742E7374796C652E6D61785769647468203D3D3D20276E6F6E652729207B0A202020202020202020202020202020202F2F636C65617220696E6C696E65207374796C65732E0A20202020202020202020202020202020656C656D656E742E7374';
wwv_flow_api.g_varchar2_table(703) := '796C652E6D61785769647468203D20656C656D656E742E7374796C652E6D696E5769647468203D20656C656D656E742E7374796C652E7769647468203D20656C656D656E742E7374796C652E686569676874203D20656C656D656E742E7374796C652E6D';
wwv_flow_api.g_varchar2_table(704) := '696E486569676874203D20656C656D656E742E7374796C652E6C656674203D2027273B0A202020202020202020202020202020202F2F7265736574207661726961626C65732E0A202020202020202020202020202020207374617274696E674C65667420';
wwv_flow_api.g_varchar2_table(705) := '3D204E756D6265722E4E616E3B0A202020202020202020202020202020207374617274696E675769647468203D206D696E5769647468203D2068616E646C654F6666736574203D20303B0A2020202020202020202020207D0A20202020202020207D0A0A';
wwv_flow_api.g_varchar2_table(706) := '0A20202020202020202F2A2A0A2020202020202020202A205570646174657320746865206469616C6F67206D6F7665206265686176696F722E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374';
wwv_flow_api.g_varchar2_table(707) := '616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A2040706172616D207B426F6F6C65616E7D206F6E205472756520746F2061646420746865206265686176696F722C2072656D6F766573206974206F746865727769';
wwv_flow_api.g_varchar2_table(708) := '73652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20757064617465526573697A61626C6528696E7374616E636529';
wwv_flow_api.g_varchar2_table(709) := '207B0A20202020202020202020202069662028696E7374616E63652E6765742827726573697A61626C65272929207B0A202020202020202020202020202020202F2F2061646420636C6173730A20202020202020202020202020202020616464436C6173';
wwv_flow_api.g_varchar2_table(710) := '7328696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E726573697A61626C65293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(711) := '2020202020202062696E64526573697A61626C654576656E747328696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020202F2F7265736574';
wwv_flow_api.g_varchar2_table(712) := '0A202020202020202020202020202020207265736574526573697A6528696E7374616E6365293B0A202020202020202020202020202020202F2F2072656D6F766520636C6173730A2020202020202020202020202020202072656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(713) := '696E7374616E63652E656C656D656E74732E726F6F742C20636C61737365732E726573697A61626C65293B0A2020202020202020202020202020202069662028696E7374616E63652E69734F70656E282929207B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(714) := '2020202020756E62696E64526573697A61626C654576656E747328696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A20202020202020';
wwv_flow_api.g_varchar2_table(715) := '20202A205265736574206D6F76652F726573697A65206F6E2077696E646F7720726573697A652E0A2020202020202020202A0A2020202020202020202A2040706172616D207B4576656E747D206576656E740977696E646F7720726573697A6520657665';
wwv_flow_api.g_varchar2_table(716) := '6E74206F626A6563742E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2077696E646F77526573697A65282F2A657665';
wwv_flow_api.g_varchar2_table(717) := '6E742A2F29207B0A202020202020202020202020666F7220287661722078203D20303B2078203C206F70656E4469616C6F67732E6C656E6774683B2078202B3D203129207B0A2020202020202020202020202020202076617220696E7374616E6365203D';
wwv_flow_api.g_varchar2_table(718) := '206F70656E4469616C6F67735B785D3B0A2020202020202020202020202020202069662028696E7374616E63652E67657428276175746F5265736574272929207B0A202020202020202020202020202020202020202072657365744D6F766528696E7374';
wwv_flow_api.g_varchar2_table(719) := '616E6365293B0A20202020202020202020202020202020202020207265736574526573697A6528696E7374616E6365293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(720) := '2F2A2A0A2020202020202020202A2042696E64206469616C6F6773206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E6365';
wwv_flow_api.g_varchar2_table(721) := '2E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2062696E644576656E747328696E7374616E636529207B0A20202020';
wwv_flow_api.g_varchar2_table(722) := '20202020202020202F2F206966206669727374206469616C6F672C20686F6F6B20676C6F62616C2068616E646C6572730A202020202020202020202020696620286F70656E4469616C6F67732E6C656E677468203D3D3D203129207B0A20202020202020';
wwv_flow_api.g_varchar2_table(723) := '2020202020202020202F2F676C6F62616C0A202020202020202020202020202020206F6E2877696E646F772C2027726573697A65272C2077696E646F77526573697A65293B0A202020202020202020202020202020206F6E28646F63756D656E742E626F';
wwv_flow_api.g_varchar2_table(724) := '64792C20276B65797570272C206B6579757048616E646C6572293B0A202020202020202020202020202020206F6E28646F63756D656E742E626F64792C20276B6579646F776E272C206B6579646F776E48616E646C6572293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(725) := '2020202020206F6E28646F63756D656E742E626F64792C2027666F637573272C206F6E5265736574293B0A0A202020202020202020202020202020202F2F6D6F76650A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D';
wwv_flow_api.g_varchar2_table(726) := '656E74456C656D656E742C20276D6F7573656D6F7665272C206D6F7665293B0A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E742C2027746F7563686D6F7665272C206D6F7665293B0A202020';
wwv_flow_api.g_varchar2_table(727) := '202020202020202020202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E742C20276D6F7573657570272C20656E644D6F7665293B0A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(728) := '6C656D656E742C2027746F756368656E64272C20656E644D6F7665293B0A202020202020202020202020202020202F2F726573697A650A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E742C20';
wwv_flow_api.g_varchar2_table(729) := '276D6F7573656D6F7665272C20726573697A65293B0A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E742C2027746F7563686D6F7665272C20726573697A65293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(730) := '20202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E742C20276D6F7573657570272C20656E64526573697A65293B0A202020202020202020202020202020206F6E28646F63756D656E742E646F63756D656E74456C656D656E74';
wwv_flow_api.g_varchar2_table(731) := '2C2027746F756368656E64272C20656E64526573697A65293B0A2020202020202020202020207D0A0A2020202020202020202020202F2F20636F6D6D6F6E206576656E74730A2020202020202020202020206F6E28696E7374616E63652E656C656D656E';
wwv_flow_api.g_varchar2_table(732) := '74732E636F6D6D616E64732E636F6E7461696E65722C2027636C69636B272C20696E7374616E63652E5F5F696E7465726E616C2E636F6D6D616E6473436C69636B48616E646C6572293B0A2020202020202020202020206F6E28696E7374616E63652E65';
wwv_flow_api.g_varchar2_table(733) := '6C656D656E74732E666F6F7465722C2027636C69636B272C20696E7374616E63652E5F5F696E7465726E616C2E627574746F6E73436C69636B48616E646C6572293B0A2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E';
wwv_flow_api.g_varchar2_table(734) := '72657365745B305D2C2027666F637573272C20696E7374616E63652E5F5F696E7465726E616C2E726573657448616E646C6572293B0A2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E72657365745B315D2C2027666F';
wwv_flow_api.g_varchar2_table(735) := '637573272C20696E7374616E63652E5F5F696E7465726E616C2E726573657448616E646C6572293B0A0A2020202020202020202020202F2F70726576656E742068616E646C696E67206B6579207570207768656E206469616C6F67206973206265696E67';
wwv_flow_api.g_varchar2_table(736) := '206F70656E65642062792061206B6579207374726F6B652E0A20202020202020202020202063616E63656C4B65797570203D20747275653B0A2020202020202020202020202F2F20686F6F6B20696E207472616E736974696F6E2068616E646C65720A20';
wwv_flow_api.g_varchar2_table(737) := '20202020202020202020206F6E28696E7374616E63652E656C656D656E74732E6469616C6F672C207472616E736974696F6E2E747970652C20696E7374616E63652E5F5F696E7465726E616C2E7472616E736974696F6E496E48616E646C6572293B0A0A';
wwv_flow_api.g_varchar2_table(738) := '2020202020202020202020202F2F206D6F64656C7373206F6E6C79206576656E74730A2020202020202020202020206966202821696E7374616E63652E67657428276D6F64616C272929207B0A2020202020202020202020202020202062696E644D6F64';
wwv_flow_api.g_varchar2_table(739) := '656C6573734576656E747328696E7374616E6365293B0A2020202020202020202020207D0A0A2020202020202020202020202F2F20726573697A61626C650A20202020202020202020202069662028696E7374616E63652E6765742827726573697A6162';
wwv_flow_api.g_varchar2_table(740) := '6C65272929207B0A2020202020202020202020202020202062696E64526573697A61626C654576656E747328696E7374616E6365293B0A2020202020202020202020207D0A0A2020202020202020202020202F2F206D6F7661626C650A20202020202020';
wwv_flow_api.g_varchar2_table(741) := '202020202069662028696E7374616E63652E67657428276D6F7661626C65272929207B0A2020202020202020202020202020202062696E644D6F7661626C654576656E747328696E7374616E6365293B0A2020202020202020202020207D0A2020202020';
wwv_flow_api.g_varchar2_table(742) := '2020207D0A0A20202020202020202F2A2A0A2020202020202020202A20556E62696E64206469616C6F6773206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468';
wwv_flow_api.g_varchar2_table(743) := '652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20756E62696E644576656E74';
wwv_flow_api.g_varchar2_table(744) := '7328696E7374616E636529207B0A2020202020202020202020202F2F206966206C617374206469616C6F672C2072656D6F766520676C6F62616C2068616E646C6572730A202020202020202020202020696620286F70656E4469616C6F67732E6C656E67';
wwv_flow_api.g_varchar2_table(745) := '7468203D3D3D203129207B0A202020202020202020202020202020202F2F676C6F62616C0A202020202020202020202020202020206F66662877696E646F772C2027726573697A65272C2077696E646F77526573697A65293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(746) := '2020202020206F666628646F63756D656E742E626F64792C20276B65797570272C206B6579757048616E646C6572293B0A202020202020202020202020202020206F666628646F63756D656E742E626F64792C20276B6579646F776E272C206B6579646F';
wwv_flow_api.g_varchar2_table(747) := '776E48616E646C6572293B0A202020202020202020202020202020206F666628646F63756D656E742E626F64792C2027666F637573272C206F6E5265736574293B0A202020202020202020202020202020202F2F6D6F76650A2020202020202020202020';
wwv_flow_api.g_varchar2_table(748) := '20202020206F666628646F63756D656E742E646F63756D656E74456C656D656E742C20276D6F7573656D6F7665272C206D6F7665293B0A202020202020202020202020202020206F666628646F63756D656E742E646F63756D656E74456C656D656E742C';
wwv_flow_api.g_varchar2_table(749) := '20276D6F7573657570272C20656E644D6F7665293B0A202020202020202020202020202020202F2F726573697A650A202020202020202020202020202020206F666628646F63756D656E742E646F63756D656E74456C656D656E742C20276D6F7573656D';
wwv_flow_api.g_varchar2_table(750) := '6F7665272C20726573697A65293B0A202020202020202020202020202020206F666628646F63756D656E742E646F63756D656E74456C656D656E742C20276D6F7573657570272C20656E64526573697A65293B0A2020202020202020202020207D0A0A20';
wwv_flow_api.g_varchar2_table(751) := '20202020202020202020202F2F20636F6D6D6F6E206576656E74730A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E636F6D6D616E64732E636F6E7461696E65722C2027636C69636B272C20696E7374616E63652E';
wwv_flow_api.g_varchar2_table(752) := '5F5F696E7465726E616C2E636F6D6D616E6473436C69636B48616E646C6572293B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E666F6F7465722C2027636C69636B272C20696E7374616E63652E5F5F696E7465';
wwv_flow_api.g_varchar2_table(753) := '726E616C2E627574746F6E73436C69636B48616E646C6572293B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E72657365745B305D2C2027666F637573272C20696E7374616E63652E5F5F696E7465726E616C2E';
wwv_flow_api.g_varchar2_table(754) := '726573657448616E646C6572293B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E72657365745B315D2C2027666F637573272C20696E7374616E63652E5F5F696E7465726E616C2E726573657448616E646C6572';
wwv_flow_api.g_varchar2_table(755) := '293B0A0A2020202020202020202020202F2F20686F6F6B206F7574207472616E736974696F6E2068616E646C65720A2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E6469616C6F672C207472616E736974696F6E2E74';
wwv_flow_api.g_varchar2_table(756) := '7970652C20696E7374616E63652E5F5F696E7465726E616C2E7472616E736974696F6E4F757448616E646C6572293B0A0A2020202020202020202020202F2F206D6F64656C7373206F6E6C79206576656E74730A20202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(757) := '21696E7374616E63652E67657428276D6F64616C272929207B0A20202020202020202020202020202020756E62696E644D6F64656C6573734576656E747328696E7374616E6365293B0A2020202020202020202020207D0A0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(758) := '202F2F206D6F7661626C650A20202020202020202020202069662028696E7374616E63652E67657428276D6F7661626C65272929207B0A20202020202020202020202020202020756E62696E644D6F7661626C654576656E747328696E7374616E636529';
wwv_flow_api.g_varchar2_table(759) := '3B0A2020202020202020202020207D0A0A2020202020202020202020202F2F20726573697A61626C650A20202020202020202020202069662028696E7374616E63652E6765742827726573697A61626C65272929207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(760) := '202020756E62696E64526573697A61626C654576656E747328696E7374616E6365293B0A2020202020202020202020207D0A0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2042696E64206D6F64656C6573732073';
wwv_flow_api.g_varchar2_table(761) := '70656369666963206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A20202020202020';
wwv_flow_api.g_varchar2_table(762) := '20202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2062696E644D6F64656C6573734576656E747328696E7374616E636529207B0A2020202020202020202020206F6E2869';
wwv_flow_api.g_varchar2_table(763) := '6E7374616E63652E656C656D656E74732E6469616C6F672C2027666F637573272C20696E7374616E63652E5F5F696E7465726E616C2E6272696E67546F46726F6E7448616E646C65722C2074727565293B0A20202020202020207D0A0A20202020202020';
wwv_flow_api.g_varchar2_table(764) := '202F2A2A0A2020202020202020202A20556E62696E64206D6F64656C657373207370656369666963206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064';
wwv_flow_api.g_varchar2_table(765) := '696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20756E62696E644D6F64656C657373';
wwv_flow_api.g_varchar2_table(766) := '4576656E747328696E7374616E636529207B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E6469616C6F672C2027666F637573272C20696E7374616E63652E5F5F696E7465726E616C2E6272696E67546F46726F';
wwv_flow_api.g_varchar2_table(767) := '6E7448616E646C65722C2074727565293B0A20202020202020207D0A0A0A0A20202020202020202F2A2A0A2020202020202020202A2042696E64206D6F7661626C65207370656369666963206576656E74730A2020202020202020202A0A202020202020';
wwv_flow_api.g_varchar2_table(768) := '2020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020';
wwv_flow_api.g_varchar2_table(769) := '202A2F0A202020202020202066756E6374696F6E2062696E644D6F7661626C654576656E747328696E7374616E636529207B0A2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E6865616465722C20276D6F757365646F';
wwv_flow_api.g_varchar2_table(770) := '776E272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572293B0A2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E6865616465722C2027746F7563687374617274272C2069';
wwv_flow_api.g_varchar2_table(771) := '6E7374616E63652E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20556E62696E64206D6F7661626C65207370656369666963206576656E';
wwv_flow_api.g_varchar2_table(772) := '74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E20';
wwv_flow_api.g_varchar2_table(773) := '7B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20756E62696E644D6F7661626C654576656E747328696E7374616E636529207B0A2020202020202020202020206F666628696E7374616E63652E656C';
wwv_flow_api.g_varchar2_table(774) := '656D656E74732E6865616465722C20276D6F757365646F776E272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572293B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E7473';
wwv_flow_api.g_varchar2_table(775) := '2E6865616465722C2027746F7563687374617274272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572293B0A20202020202020207D0A0A0A0A20202020202020202F2A2A0A2020202020202020202A204269';
wwv_flow_api.g_varchar2_table(776) := '6E6420726573697A61626C65207370656369666963206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A20202020';
wwv_flow_api.g_varchar2_table(777) := '20202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2062696E64526573697A61626C654576656E747328696E7374616E636529207B0A20';
wwv_flow_api.g_varchar2_table(778) := '20202020202020202020206F6E28696E7374616E63652E656C656D656E74732E726573697A6548616E646C652C20276D6F757365646F776E272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572293B0A';
wwv_flow_api.g_varchar2_table(779) := '2020202020202020202020206F6E28696E7374616E63652E656C656D656E74732E726573697A6548616E646C652C2027746F7563687374617274272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E526573697A6548616E646C657229';
wwv_flow_api.g_varchar2_table(780) := '3B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20556E62696E6420726573697A61626C65207370656369666963206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F';
wwv_flow_api.g_varchar2_table(781) := '626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A20202020202020206675';
wwv_flow_api.g_varchar2_table(782) := '6E6374696F6E20756E62696E64526573697A61626C654576656E747328696E7374616E636529207B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E726573697A6548616E646C652C20276D6F757365646F776E27';
wwv_flow_api.g_varchar2_table(783) := '2C20696E7374616E63652E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572293B0A2020202020202020202020206F666628696E7374616E63652E656C656D656E74732E726573697A6548616E646C652C2027746F756368737461';
wwv_flow_api.g_varchar2_table(784) := '7274272C20696E7374616E63652E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A2042696E6420636C6F7361626C65206576656E7473';
wwv_flow_api.g_varchar2_table(785) := '0A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020202A0A2020202020202020202A204072657475726E207B75';
wwv_flow_api.g_varchar2_table(786) := '6E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E2062696E64436C6F7361626C654576656E747328696E7374616E636529207B0A2020202020202020202020206F6E28696E7374616E63652E656C656D656E';
wwv_flow_api.g_varchar2_table(787) := '74732E6D6F64616C2C2027636C69636B272C20696E7374616E63652E5F5F696E7465726E616C2E6D6F64616C436C69636B48616E646C6572293B0A20202020202020207D0A0A20202020202020202F2A2A0A2020202020202020202A20556E62696E6420';
wwv_flow_api.g_varchar2_table(788) := '636C6F7361626C65207370656369666963206576656E74730A2020202020202020202A0A2020202020202020202A2040706172616D207B4F626A6563747D20696E7374616E6365205468652064696C6F6720696E7374616E63652E0A2020202020202020';
wwv_flow_api.g_varchar2_table(789) := '202A0A2020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202A2F0A202020202020202066756E6374696F6E20756E62696E64436C6F7361626C654576656E747328696E7374616E636529207B0A20202020';
wwv_flow_api.g_varchar2_table(790) := '20202020202020206F666628696E7374616E63652E656C656D656E74732E6D6F64616C2C2027636C69636B272C20696E7374616E63652E5F5F696E7465726E616C2E6D6F64616C436C69636B48616E646C6572293B0A20202020202020207D0A20202020';
wwv_flow_api.g_varchar2_table(791) := '202020202F2F206469616C6F67204150490A202020202020202072657475726E207B0A2020202020202020202020205F5F696E69743A696E697469616C697A652C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20436865';
wwv_flow_api.g_varchar2_table(792) := '636B206966206469616C6F672069732063757272656E746C79206F70656E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B426F6F6C65616E7D0A202020202020202020202020202A2F0A2020202020';
wwv_flow_api.g_varchar2_table(793) := '2020202020202069734F70656E3A2066756E6374696F6E202829207B0A2020202020202020202020202020202072657475726E20746869732E5F5F696E7465726E616C2E69734F70656E3B0A2020202020202020202020207D2C0A202020202020202020';
wwv_flow_api.g_varchar2_table(794) := '20202069734D6F64616C3A2066756E6374696F6E2028297B0A2020202020202020202020202020202072657475726E20746869732E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F6628636C61737365732E6D6F64656C6573';
wwv_flow_api.g_varchar2_table(795) := '7329203C20303B0A2020202020202020202020207D2C0A20202020202020202020202069734D6178696D697A65643A66756E6374696F6E28297B0A2020202020202020202020202020202072657475726E20746869732E656C656D656E74732E726F6F74';
wwv_flow_api.g_varchar2_table(796) := '2E636C6173734E616D652E696E6465784F6628636C61737365732E6D6178696D697A656429203E202D313B0A2020202020202020202020207D2C0A202020202020202020202020697350696E6E65643A66756E6374696F6E28297B0A2020202020202020';
wwv_flow_api.g_varchar2_table(797) := '202020202020202072657475726E20746869732E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F6628636C61737365732E756E70696E6E656429203C20303B0A2020202020202020202020207D2C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(798) := '20206D6178696D697A653A66756E6374696F6E28297B0A2020202020202020202020202020202069662821746869732E69734D6178696D697A65642829297B0A20202020202020202020202020202020202020206D6178696D697A652874686973293B0A';
wwv_flow_api.g_varchar2_table(799) := '202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A202020202020202020202020726573746F72653A66756E6374696F6E28297B0A202020202020';
wwv_flow_api.g_varchar2_table(800) := '20202020202020202020696628746869732E69734D6178696D697A65642829297B0A2020202020202020202020202020202020202020726573746F72652874686973293B0A202020202020202020202020202020207D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(801) := '20202072657475726E20746869733B0A2020202020202020202020207D2C0A20202020202020202020202070696E3A66756E6374696F6E28297B0A2020202020202020202020202020202069662821746869732E697350696E6E65642829297B0A202020';
wwv_flow_api.g_varchar2_table(802) := '202020202020202020202020202020202070696E2874686973293B0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(803) := '2020756E70696E3A66756E6374696F6E28297B0A20202020202020202020202020202020696628746869732E697350696E6E65642829297B0A2020202020202020202020202020202020202020756E70696E2874686973293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(804) := '2020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020206272696E67546F46726F6E743A66756E6374696F6E28297B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(805) := '20202020206272696E67546F46726F6E74286E756C6C2C2074686973293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020';
wwv_flow_api.g_varchar2_table(806) := '202020202A204D6F766520746865206469616C6F6720746F206120737065636966696320782F7920636F6F7264696E617465730A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B4E756D6265727D207820';
wwv_flow_api.g_varchar2_table(807) := '202020546865206E6577206469616C6F67207820636F6F7264696E61746520696E20706978656C732E0A202020202020202020202020202A2040706172616D207B4E756D6265727D207920202020546865206E6577206469616C6F67207920636F6F7264';
wwv_flow_api.g_varchar2_table(808) := '696E61746520696E20706978656C732E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D20546865206469616C6F6720696E7374616E63652E0A202020202020202020202020202A2F';
wwv_flow_api.g_varchar2_table(809) := '0A2020202020202020202020206D6F7665546F3A66756E6374696F6E28782C79297B0A202020202020202020202020202020206966282169734E614E287829202626202169734E614E287929297B0A20202020202020202020202020202020202020202F';
wwv_flow_api.g_varchar2_table(810) := '2F20616C6C6F7720637573746F6D20606F6E6D6F766560206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E7428276F6E6D6F7665272C2074686973293B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(811) := '20200A202020202020202020202020202020202020202076617220656C656D656E74203D20746869732E656C656D656E74732E6469616C6F672C0A20202020202020202020202020202020202020202020202063757272656E74203D20656C656D656E74';
wwv_flow_api.g_varchar2_table(812) := '2C0A2020202020202020202020202020202020202020202020206F66667365744C656674203D20302C0A2020202020202020202020202020202020202020202020206F6666736574546F70203D20303B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(813) := '200A20202020202020202020202020202020202020202F2F7375627472616374206578697374696E67206C6566742C746F700A202020202020202020202020202020202020202069662028656C656D656E742E7374796C652E6C65667429207B0A202020';
wwv_flow_api.g_varchar2_table(814) := '2020202020202020202020202020202020202020206F66667365744C656674202D3D207061727365496E7428656C656D656E742E7374796C652E6C6566742C203130293B0A20202020202020202020202020202020202020207D0A202020202020202020';
wwv_flow_api.g_varchar2_table(815) := '202020202020202020202069662028656C656D656E742E7374796C652E746F7029207B0A2020202020202020202020202020202020202020202020206F6666736574546F70202D3D207061727365496E7428656C656D656E742E7374796C652E746F702C';
wwv_flow_api.g_varchar2_table(816) := '203130293B0A20202020202020202020202020202020202020207D0A20202020202020202020202020202020202020202F2F63616C63206F66667365740A2020202020202020202020202020202020202020646F207B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(817) := '20202020202020202020206F66667365744C656674202B3D2063757272656E742E6F66667365744C6566743B0A2020202020202020202020202020202020202020202020206F6666736574546F70202B3D2063757272656E742E6F6666736574546F703B';
wwv_flow_api.g_varchar2_table(818) := '0A20202020202020202020202020202020202020207D207768696C65202863757272656E74203D2063757272656E742E6F6666736574506172656E74293B0A0A20202020202020202020202020202020202020202F2F63616C63206C6566742C20746F70';
wwv_flow_api.g_varchar2_table(819) := '0A2020202020202020202020202020202020202020766172206C656674203D202878202D206F66667365744C656674293B0A202020202020202020202020202020202020202076617220746F7020203D202879202D206F6666736574546F70293B0A0A20';
wwv_flow_api.g_varchar2_table(820) := '202020202020202020202020202020202020202F2F2F2F2072746C2068616E646C696E670A20202020202020202020202020202020202020206966202869735269676874546F4C656674282929207B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(821) := '202020206C656674202A3D202D313B0A20202020202020202020202020202020202020207D0A0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6C656674203D206C656674202B20277078273B0A20202020202020';
wwv_flow_api.g_varchar2_table(822) := '20202020202020202020202020656C656D656E742E7374796C652E746F70203D20746F70202B20277078273B0A20202020202020202020202020202020202020200A20202020202020202020202020202020202020202F2F20616C6C6F7720637573746F';
wwv_flow_api.g_varchar2_table(823) := '6D20606F6E6D6F76656460206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E7428276F6E6D6F766564272C2074686973293B0A202020202020202020202020202020207D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(824) := '202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20526573697A6520746865206469616C6F6720746F20612073706563696669632077696474';
wwv_flow_api.g_varchar2_table(825) := '682F6865696768742028746865206469616C6F67206D7573742062652027726573697A61626C6527292E0A202020202020202020202020202A20546865206469616C6F672063616E20626520726573697A656420746F3A0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(826) := '202A202041206D696E696D756D20776964746820657175616C20746F2074686520696E697469616C20646973706C61792077696474680A202020202020202020202020202A202041206D696E696D756D2068656967687420657175616C20746F20746865';
wwv_flow_api.g_varchar2_table(827) := '2073756D206F66206865616465722F666F6F74657220686569676874732E0A202020202020202020202020202A0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B4E756D626572206F7220537472696E67';
wwv_flow_api.g_varchar2_table(828) := '7D20776964746820202020546865206E6577206469616C6F6720776964746820696E20706978656C73206F7220696E2070657263656E742E0A202020202020202020202020202A2040706172616D207B4E756D626572206F7220537472696E677D206865';
wwv_flow_api.g_varchar2_table(829) := '69676874202020546865206E6577206469616C6F672068656967687420696E20706978656C73206F7220696E2070657263656E742E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D';
wwv_flow_api.g_varchar2_table(830) := '20546865206469616C6F6720696E7374616E63652E0A202020202020202020202020202A2F0A202020202020202020202020726573697A65546F3A66756E6374696F6E2877696474682C686569676874297B0A2020202020202020202020202020202076';
wwv_flow_api.g_varchar2_table(831) := '61722077203D207061727365466C6F6174287769647468292C0A202020202020202020202020202020202020202068203D207061727365466C6F617428686569676874292C0A20202020202020202020202020202020202020207265676578203D202F28';
wwv_flow_api.g_varchar2_table(832) := '5C642A5C2E5C642B7C5C642B29252F0A202020202020202020202020202020203B0A0A202020202020202020202020202020206966282169734E614E287729202626202169734E614E28682920262620746869732E6765742827726573697A61626C6527';
wwv_flow_api.g_varchar2_table(833) := '29203D3D3D2074727565297B0A20202020202020202020202020202020202020200A20202020202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E726573697A6560206D6574686F640A202020202020202020202020';
wwv_flow_api.g_varchar2_table(834) := '202020202020202064697370617463684576656E7428276F6E726573697A65272C2074686973293B0A20202020202020202020202020202020202020200A2020202020202020202020202020202020202020696628282727202B207769647468292E6D61';
wwv_flow_api.g_varchar2_table(835) := '74636828726567657829297B0A20202020202020202020202020202020202020202020202077203D2077202F20313030202A20646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E745769647468203B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(836) := '202020202020202020207D0A0A2020202020202020202020202020202020202020696628282727202B20686569676874292E6D6174636828726567657829297B0A20202020202020202020202020202020202020202020202068203D2068202F20313030';
wwv_flow_api.g_varchar2_table(837) := '202A20646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E744865696768743B0A20202020202020202020202020202020202020207D0A0A202020202020202020202020202020202020202076617220656C656D656E74203D2074';
wwv_flow_api.g_varchar2_table(838) := '6869732E656C656D656E74732E6469616C6F673B0A202020202020202020202020202020202020202069662028656C656D656E742E7374796C652E6D6178576964746820213D3D20276E6F6E652729207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(839) := '202020202020656C656D656E742E7374796C652E6D696E5769647468203D20286D696E5769647468203D20656C656D656E742E6F6666736574576964746829202B20277078273B0A20202020202020202020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(840) := '2020202020202020202020202020656C656D656E742E7374796C652E6D61785769647468203D20276E6F6E65273B0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E6D696E486569676874203D20746869732E656C';
wwv_flow_api.g_varchar2_table(841) := '656D656E74732E6865616465722E6F6666736574486569676874202B20746869732E656C656D656E74732E666F6F7465722E6F6666736574486569676874202B20277078273B0A2020202020202020202020202020202020202020656C656D656E742E73';
wwv_flow_api.g_varchar2_table(842) := '74796C652E7769647468203D2077202B20277078273B0A2020202020202020202020202020202020202020656C656D656E742E7374796C652E686569676874203D2068202B20277078273B0A20202020202020202020202020202020202020200A202020';
wwv_flow_api.g_varchar2_table(843) := '20202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E726573697A656460206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E7428276F6E726573697A6564272C2074';
wwv_flow_api.g_varchar2_table(844) := '686973293B0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A2047';
wwv_flow_api.g_varchar2_table(845) := '657473206F722053657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B537472696E677C4F626A6563747D206B657920412073747269';
wwv_flow_api.g_varchar2_table(846) := '6E672073706563696679696E6720612070726F70657279206E616D65206F72206120636F6C6C656374696F6E206F66206B65792F76616C75652070616972732E0A202020202020202020202020202A2040706172616D207B4F626A6563747D2076616C75';
wwv_flow_api.g_varchar2_table(847) := '65204F7074696F6E616C2C207468652076616C7565206173736F636961746564207769746820746865206B65792028696E206361736520697420776173206120737472696E67292E0A202020202020202020202020202A0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(848) := '202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F0A20202020202020202020202073657474696E67203A2066756E6374696F6E20286B65792C2076616C756529207B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(849) := '207661722073656C66203D20746869733B0A2020202020202020202020202020202076617220726573756C74203D2075706461746528746869732C20746869732E5F5F696E7465726E616C2E6F7074696F6E732C2066756E6374696F6E286B2C6F2C6E29';
wwv_flow_api.g_varchar2_table(850) := '7B206F7074696F6E557064617465642873656C662C6B2C6F2C6E293B207D2C206B65792C2076616C7565293B0A20202020202020202020202020202020696628726573756C742E6F70203D3D3D202767657427297B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(851) := '202020202020696628726573756C742E666F756E64297B0A20202020202020202020202020202020202020202020202072657475726E20726573756C742E76616C75653B0A20202020202020202020202020202020202020207D656C7365206966287479';
wwv_flow_api.g_varchar2_table(852) := '70656F6620746869732E73657474696E677320213D3D2027756E646566696E656427297B0A20202020202020202020202020202020202020202020202072657475726E2075706461746528746869732C20746869732E73657474696E67732C2074686973';
wwv_flow_api.g_varchar2_table(853) := '2E73657474696E6755706461746564207C7C2066756E6374696F6E28297B7D2C206B65792C2076616C7565292E76616C75653B0A20202020202020202020202020202020202020207D656C73657B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(854) := '20202072657475726E20756E646566696E65643B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D656C736520696628726573756C742E6F70203D3D3D202773657427297B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(855) := '20202020202020202020696628726573756C742E6974656D732E6C656E677468203E2030297B0A2020202020202020202020202020202020202020202020207661722063616C6C6261636B203D20746869732E73657474696E6755706461746564207C7C';
wwv_flow_api.g_varchar2_table(856) := '2066756E6374696F6E28297B7D3B0A202020202020202020202020202020202020202020202020666F722876617220783D303B783C726573756C742E6974656D732E6C656E6774683B782B3D31297B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(857) := '2020202020202020766172206974656D203D20726573756C742E6974656D735B785D3B0A20202020202020202020202020202020202020202020202020202020696628216974656D2E666F756E6420262620747970656F6620746869732E73657474696E';
wwv_flow_api.g_varchar2_table(858) := '677320213D3D2027756E646566696E656427297B0A202020202020202020202020202020202020202020202020202020202020202075706461746528746869732C20746869732E73657474696E67732C2063616C6C6261636B2C206974656D2E6B65792C';
wwv_flow_api.g_varchar2_table(859) := '206974656D2E76616C7565293B0A202020202020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(860) := '20202020202020202020202072657475726E20746869733B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A205B416C6961735D20536574';
wwv_flow_api.g_varchar2_table(861) := '73206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A2020202020202020202020207365743A66756E6374696F6E286B65792C2076616C7565297B0A20202020202020202020202020202020746869';
wwv_flow_api.g_varchar2_table(862) := '732E73657474696E67286B65792C76616C7565293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A205B416C';
wwv_flow_api.g_varchar2_table(863) := '6961735D2047657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A2020202020202020202020206765743A66756E6374696F6E286B6579297B0A202020202020202020202020202020207265';
wwv_flow_api.g_varchar2_table(864) := '7475726E20746869732E73657474696E67286B6579293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A2020202020202020202020202A2053657473206469616C6F67206865616465720A202020202020202020202020';
wwv_flow_api.g_varchar2_table(865) := '2A2040636F6E74656E74207B737472696E67206F7220656C656D656E747D0A2020202020202020202020202A0A2020202020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202020202A2F0A202020202020';
wwv_flow_api.g_varchar2_table(866) := '2020202020207365744865616465723A66756E6374696F6E28636F6E74656E74297B0A20202020202020202020202020202020696628747970656F6620636F6E74656E74203D3D3D2027737472696E6727297B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(867) := '20202020636C656172436F6E74656E747328746869732E656C656D656E74732E686561646572293B0A2020202020202020202020202020202020202020746869732E656C656D656E74732E6865616465722E696E6E657248544D4C203D20636F6E74656E';
wwv_flow_api.g_varchar2_table(868) := '743B0A202020202020202020202020202020207D656C73652069662028636F6E74656E7420696E7374616E63656F662077696E646F772E48544D4C456C656D656E7420262620746869732E656C656D656E74732E6865616465722E66697273744368696C';
wwv_flow_api.g_varchar2_table(869) := '6420213D3D20636F6E74656E74297B0A2020202020202020202020202020202020202020636C656172436F6E74656E747328746869732E656C656D656E74732E686561646572293B0A2020202020202020202020202020202020202020746869732E656C';
wwv_flow_api.g_varchar2_table(870) := '656D656E74732E6865616465722E617070656E644368696C6428636F6E74656E74293B0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020';
wwv_flow_api.g_varchar2_table(871) := '202020202020202020202F2A2A0A2020202020202020202020202A2053657473206469616C6F6720636F6E74656E74730A2020202020202020202020202A2040636F6E74656E74207B737472696E67206F7220656C656D656E747D0A2020202020202020';
wwv_flow_api.g_varchar2_table(872) := '202020202A0A2020202020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202020202A2F0A202020202020202020202020736574436F6E74656E743A66756E6374696F6E28636F6E74656E74297B0A202020';
wwv_flow_api.g_varchar2_table(873) := '20202020202020202020202020696628747970656F6620636F6E74656E74203D3D3D2027737472696E6727297B0A2020202020202020202020202020202020202020636C656172436F6E74656E747328746869732E656C656D656E74732E636F6E74656E';
wwv_flow_api.g_varchar2_table(874) := '74293B0A2020202020202020202020202020202020202020746869732E656C656D656E74732E636F6E74656E742E696E6E657248544D4C203D20636F6E74656E743B0A202020202020202020202020202020207D656C73652069662028636F6E74656E74';
wwv_flow_api.g_varchar2_table(875) := '20696E7374616E63656F662077696E646F772E48544D4C456C656D656E7420262620746869732E656C656D656E74732E636F6E74656E742E66697273744368696C6420213D3D20636F6E74656E74297B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(876) := '20636C656172436F6E74656E747328746869732E656C656D656E74732E636F6E74656E74293B0A2020202020202020202020202020202020202020746869732E656C656D656E74732E636F6E74656E742E617070656E644368696C6428636F6E74656E74';
wwv_flow_api.g_varchar2_table(877) := '293B0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A2053686F77';
wwv_flow_api.g_varchar2_table(878) := '20746865206469616C6F67206173206D6F64616C0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D20746865206469616C6F6720696E7374616E63652E0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(879) := '20202A2F0A20202020202020202020202073686F774D6F64616C3A2066756E6374696F6E28636C6173734E616D65297B0A2020202020202020202020202020202072657475726E20746869732E73686F7728747275652C20636C6173734E616D65293B0A';
wwv_flow_api.g_varchar2_table(880) := '2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A2053686F7720746865206469616C6F670A202020202020202020202020202A0A202020202020202020202020202A204072657475726E20';
wwv_flow_api.g_varchar2_table(881) := '7B4F626A6563747D20746865206469616C6F6720696E7374616E63652E0A202020202020202020202020202A2F0A20202020202020202020202073686F773A2066756E6374696F6E20286D6F64616C2C20636C6173734E616D6529207B0A202020202020';
wwv_flow_api.g_varchar2_table(882) := '202020202020202020200A202020202020202020202020202020202F2F20656E7375726520696E697469616C697A6174696F6E0A20202020202020202020202020202020696E697469616C697A652874686973293B0A0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(883) := '202020696620282021746869732E5F5F696E7465726E616C2E69734F70656E2029207B0A0A20202020202020202020202020202020202020202F2F2061646420746F206F70656E206469616C6F67730A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(884) := '746869732E5F5F696E7465726E616C2E69734F70656E203D20747275653B0A20202020202020202020202020202020202020206F70656E4469616C6F67732E707573682874686973293B0A0A20202020202020202020202020202020202020202F2F2073';
wwv_flow_api.g_varchar2_table(885) := '617665206C61737420666F637573656420656C656D656E740A2020202020202020202020202020202020202020696628616C6572746966792E64656661756C74732E6D61696E7461696E466F637573297B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(886) := '202020202020746869732E5F5F696E7465726E616C2E616374697665456C656D656E74203D20646F63756D656E742E616374697665456C656D656E743B0A20202020202020202020202020202020202020207D0A0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(887) := '20202020202F2F616C6C6F7720637573746F6D20646F6D206D616E6970756C6174696F6E2075706461746573206265666F72652073686F77696E6720746865206469616C6F672E0A2020202020202020202020202020202020202020696628747970656F';
wwv_flow_api.g_varchar2_table(888) := '6620746869732E70726570617265203D3D3D202766756E6374696F6E27297B0A202020202020202020202020202020202020202020202020746869732E7072657061726528293B0A20202020202020202020202020202020202020207D0A0A2020202020';
wwv_flow_api.g_varchar2_table(889) := '20202020202020202020202020202062696E644576656E74732874686973293B0A0A20202020202020202020202020202020202020206966286D6F64616C20213D3D20756E646566696E6564297B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(890) := '202020746869732E73657428276D6F64616C272C206D6F64616C293B0A20202020202020202020202020202020202020207D0A0A20202020202020202020202020202020202020202F2F73617665207363726F6C6C20746F2070726576656E7420646F63';
wwv_flow_api.g_varchar2_table(891) := '756D656E74206A756D700A2020202020202020202020202020202020202020736176655363726F6C6C506F736974696F6E28293B0A0A2020202020202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A0A2020202020';
wwv_flow_api.g_varchar2_table(892) := '2020202020202020202020202020202F2F20616C6C6F7720637573746F6D206469616C6F6720636C617373206F6E2073686F770A2020202020202020202020202020202020202020696628747970656F6620636C6173734E616D65203D3D3D2027737472';
wwv_flow_api.g_varchar2_table(893) := '696E672720262620636C6173734E616D6520213D3D202727297B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E636C6173734E616D65203D20636C6173734E616D653B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(894) := '2020202020202020202020202020616464436C61737328746869732E656C656D656E74732E726F6F742C20636C6173734E616D65293B0A20202020202020202020202020202020202020207D0A0A20202020202020202020202020202020202020202F2F';
wwv_flow_api.g_varchar2_table(895) := '206D6178696D697A65206966207374617274206D6178696D697A65640A20202020202020202020202020202020202020206966202820746869732E676574282773746172744D6178696D697A6564272929207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(896) := '2020202020202020746869732E6D6178696D697A6528293B0A20202020202020202020202020202020202020207D656C736520696628746869732E69734D6178696D697A65642829297B0A20202020202020202020202020202020202020202020202072';
wwv_flow_api.g_varchar2_table(897) := '6573746F72652874686973293B0A20202020202020202020202020202020202020207D0A0A2020202020202020202020202020202020202020757064617465416273506F736974696F6E4669782874686973293B0A0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(898) := '20202020202072656D6F7665436C61737328746869732E656C656D656E74732E726F6F742C20636C61737365732E616E696D6174696F6E4F7574293B0A2020202020202020202020202020202020202020616464436C61737328746869732E656C656D65';
wwv_flow_api.g_varchar2_table(899) := '6E74732E726F6F742C20636C61737365732E616E696D6174696F6E496E293B0A0A20202020202020202020202020202020202020202F2F207365742031732066616C6C6261636B20696E2063617365207472616E736974696F6E206576656E7420646F65';
wwv_flow_api.g_varchar2_table(900) := '736E277420666972650A2020202020202020202020202020202020202020636C65617254696D656F75742820746869732E5F5F696E7465726E616C2E74696D6572496E293B0A2020202020202020202020202020202020202020746869732E5F5F696E74';
wwv_flow_api.g_varchar2_table(901) := '65726E616C2E74696D6572496E203D2073657454696D656F75742820746869732E5F5F696E7465726E616C2E7472616E736974696F6E496E48616E646C65722C207472616E736974696F6E2E737570706F72746564203F2031303030203A203130302029';
wwv_flow_api.g_varchar2_table(902) := '3B0A0A20202020202020202020202020202020202020206966286973536166617269297B0A2020202020202020202020202020202020202020202020202F2F20666F726365206465736B746F7020736166617269207265666C6F770A2020202020202020';
wwv_flow_api.g_varchar2_table(903) := '2020202020202020202020202020202076617220726F6F74203D20746869732E656C656D656E74732E726F6F743B0A202020202020202020202020202020202020202020202020726F6F742E7374796C652E646973706C617920203D20276E6F6E65273B';
wwv_flow_api.g_varchar2_table(904) := '0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E28297B726F6F742E7374796C652E646973706C617920203D2027626C6F636B273B7D2C2030293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(905) := '202020207D0A0A20202020202020202020202020202020202020202F2F7265666C6F770A20202020202020202020202020202020202020207265666C6F77203D20746869732E656C656D656E74732E726F6F742E6F666673657457696474683B0A202020';
wwv_flow_api.g_varchar2_table(906) := '2020202020202020202020202020200A20202020202020202020202020202020202020202F2F2073686F77206469616C6F670A202020202020202020202020202020202020202072656D6F7665436C61737328746869732E656C656D656E74732E726F6F';
wwv_flow_api.g_varchar2_table(907) := '742C20636C61737365732E68696464656E293B0A0A20202020202020202020202020202020202020202F2F20696E7465726E616C206F6E2073686F77206576656E740A2020202020202020202020202020202020202020696628747970656F6620746869';
wwv_flow_api.g_varchar2_table(908) := '732E686F6F6B732E6F6E73686F77203D3D3D202766756E6374696F6E27297B0A202020202020202020202020202020202020202020202020746869732E686F6F6B732E6F6E73686F772E63616C6C2874686973293B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(909) := '2020202020207D0A0A20202020202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E73686F7760206D6574686F640A202020202020202020202020202020202020202064697370617463684576656E7428276F6E7368';
wwv_flow_api.g_varchar2_table(910) := '6F77272C2074686973293B0A0A202020202020202020202020202020207D656C73657B0A20202020202020202020202020202020202020202F2F207265736574206D6F766520757064617465730A20202020202020202020202020202020202020207265';
wwv_flow_api.g_varchar2_table(911) := '7365744D6F76652874686973293B0A20202020202020202020202020202020202020202F2F20726573657420726573697A6520757064617465730A20202020202020202020202020202020202020207265736574526573697A652874686973293B0A2020';
wwv_flow_api.g_varchar2_table(912) := '2020202020202020202020202020202020202F2F207368616B6520746865206469616C6F6720746F20696E6469636174652069747320616C7265616479206F70656E0A2020202020202020202020202020202020202020616464436C6173732874686973';
wwv_flow_api.g_varchar2_table(913) := '2E656C656D656E74732E6469616C6F672C20636C61737365732E7368616B65293B0A20202020202020202020202020202020202020207661722073656C66203D20746869733B0A202020202020202020202020202020202020202073657454696D656F75';
wwv_flow_api.g_varchar2_table(914) := '742866756E6374696F6E28297B0A20202020202020202020202020202020202020202020202072656D6F7665436C6173732873656C662E656C656D656E74732E6469616C6F672C20636C61737365732E7368616B65293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(915) := '20202020202020207D2C323030293B0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020';
wwv_flow_api.g_varchar2_table(916) := '202020202020202A20436C6F736520746865206469616C6F670A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D20546865206469616C6F6720696E7374616E63650A20202020202020';
wwv_flow_api.g_varchar2_table(917) := '2020202020202A2F0A202020202020202020202020636C6F73653A2066756E6374696F6E202829207B0A2020202020202020202020202020202069662028746869732E5F5F696E7465726E616C2E69734F70656E2029207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(918) := '2020202020202020202F2F20637573746F6D20606F6E636C6F73696E6760206576656E740A202020202020202020202020202020202020202069662864697370617463684576656E7428276F6E636C6F73696E67272C20746869732920213D3D2066616C';
wwv_flow_api.g_varchar2_table(919) := '7365297B0A0A202020202020202020202020202020202020202020202020756E62696E644576656E74732874686973293B0A0A20202020202020202020202020202020202020202020202072656D6F7665436C61737328746869732E656C656D656E7473';
wwv_flow_api.g_varchar2_table(920) := '2E726F6F742C20636C61737365732E616E696D6174696F6E496E293B0A202020202020202020202020202020202020202020202020616464436C61737328746869732E656C656D656E74732E726F6F742C20636C61737365732E616E696D6174696F6E4F';
wwv_flow_api.g_varchar2_table(921) := '7574293B0A0A2020202020202020202020202020202020202020202020202F2F207365742031732066616C6C6261636B20696E2063617365207472616E736974696F6E206576656E7420646F65736E277420666972650A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(922) := '2020202020202020202020636C65617254696D656F75742820746869732E5F5F696E7465726E616C2E74696D65724F757420293B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E74696D65724F75';
wwv_flow_api.g_varchar2_table(923) := '74203D2073657454696D656F75742820746869732E5F5F696E7465726E616C2E7472616E736974696F6E4F757448616E646C65722C207472616E736974696F6E2E737570706F72746564203F2031303030203A2031303020293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(924) := '2020202020202020202020202020202F2F2068696465206469616C6F670A202020202020202020202020202020202020202020202020616464436C61737328746869732E656C656D656E74732E726F6F742C20636C61737365732E68696464656E293B0A';
wwv_flow_api.g_varchar2_table(925) := '2020202020202020202020202020202020202020202020202F2F7265666C6F770A2020202020202020202020202020202020202020202020207265666C6F77203D20746869732E656C656D656E74732E6D6F64616C2E6F666673657457696474683B0A0A';
wwv_flow_api.g_varchar2_table(926) := '2020202020202020202020202020202020202020202020202F2F2072656D6F766520637573746F6D206469616C6F6720636C617373206F6E20686964650A20202020202020202020202020202020202020202020202069662028747970656F6620746869';
wwv_flow_api.g_varchar2_table(927) := '732E5F5F696E7465726E616C2E636C6173734E616D6520213D3D2027756E646566696E65642720262620746869732E5F5F696E7465726E616C2E636C6173734E616D6520213D3D20272729207B0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(928) := '20202020202072656D6F7665436C61737328746869732E656C656D656E74732E726F6F742C20746869732E5F5F696E7465726E616C2E636C6173734E616D65293B0A2020202020202020202020202020202020202020202020207D0A0A20202020202020';
wwv_flow_api.g_varchar2_table(929) := '20202020202020202020202020202020202F2F20696E7465726E616C206F6E20636C6F7365206576656E740A202020202020202020202020202020202020202020202020696628747970656F6620746869732E686F6F6B732E6F6E636C6F7365203D3D3D';
wwv_flow_api.g_varchar2_table(930) := '202766756E6374696F6E27297B0A20202020202020202020202020202020202020202020202020202020746869732E686F6F6B732E6F6E636C6F73652E63616C6C2874686973293B0A2020202020202020202020202020202020202020202020207D0A0A';
wwv_flow_api.g_varchar2_table(931) := '2020202020202020202020202020202020202020202020202F2F20616C6C6F7720637573746F6D20606F6E636C6F736560206D6574686F640A20202020202020202020202020202020202020202020202064697370617463684576656E7428276F6E636C';
wwv_flow_api.g_varchar2_table(932) := '6F7365272C2074686973293B0A0A2020202020202020202020202020202020202020202020202F2F72656D6F76652066726F6D206F70656E206469616C6F67730A2020202020202020202020202020202020202020202020206F70656E4469616C6F6773';
wwv_flow_api.g_varchar2_table(933) := '2E73706C696365286F70656E4469616C6F67732E696E6465784F662874686973292C31293B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E69734F70656E203D2066616C73653B0A0A2020202020';
wwv_flow_api.g_varchar2_table(934) := '20202020202020202020202020202020202020656E737572654E6F4F766572666C6F7728293B0A20202020202020202020202020202020202020207D0A0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(935) := '726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20436C6F736520616C6C206F70656E206469616C6F67732065786365707420746869732E0A202020202020202020';
wwv_flow_api.g_varchar2_table(936) := '202020202A0A202020202020202020202020202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F0A202020202020202020202020636C6F73654F74686572733A66756E6374696F6E28297B0A20202020202020';
wwv_flow_api.g_varchar2_table(937) := '202020202020202020616C6572746966792E636C6F7365416C6C2874686973293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020';
wwv_flow_api.g_varchar2_table(938) := '202020202020202A2044657374726F79732074686973206469616C6F6720696E7374616E63650A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B756E646566696E65647D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(939) := '20202A2F0A20202020202020202020202064657374726F793A66756E6374696F6E28297B0A2020202020202020202020202020202069662028746869732E5F5F696E7465726E616C2E69734F70656E2029207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(940) := '202020202F2F6D61726B206469616C6F6720666F72206465737472756374696F6E2C20746869732077696C6C2062652063616C6C6564206F6E207472616E697374696F6E4F7574206576656E742E0A202020202020202020202020202020202020202074';
wwv_flow_api.g_varchar2_table(941) := '6869732E5F5F696E7465726E616C2E64657374726F79203D2066756E6374696F6E28297B0A202020202020202020202020202020202020202020202020646573747275637428746869732C20696E697469616C697A65293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(942) := '2020202020202020207D3B0A20202020202020202020202020202020202020202F2F636C6F736520746865206469616C6F6720746F20756E62696E6420616C6C206576656E74732E0A2020202020202020202020202020202020202020746869732E636C';
wwv_flow_api.g_varchar2_table(943) := '6F736528293B0A202020202020202020202020202020207D656C73657B0A2020202020202020202020202020202020202020646573747275637428746869732C20696E697469616C697A65293B0A202020202020202020202020202020207D0A20202020';
wwv_flow_api.g_varchar2_table(944) := '20202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A20202020202020207D3B0A097D20282920293B0A20202020766172206E6F746966696572203D202866756E6374696F6E202829207B0A202020202020';
wwv_flow_api.g_varchar2_table(945) := '2020766172207265666C6F772C0A202020202020202020202020656C656D656E742C0A2020202020202020202020206F70656E496E7374616E636573203D205B5D2C0A202020202020202020202020636C6173736573203D207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(946) := '20202020202020626173653A2027616C6572746966792D6E6F746966696572272C0A202020202020202020202020202020206D6573736167653A2027616A732D6D657373616765272C0A20202020202020202020202020202020746F703A2027616A732D';
wwv_flow_api.g_varchar2_table(947) := '746F70272C0A2020202020202020202020202020202072696768743A2027616A732D7269676874272C0A20202020202020202020202020202020626F74746F6D3A2027616A732D626F74746F6D272C0A202020202020202020202020202020206C656674';
wwv_flow_api.g_varchar2_table(948) := '3A2027616A732D6C656674272C0A2020202020202020202020202020202076697369626C653A2027616A732D76697369626C65272C0A2020202020202020202020202020202068696464656E3A2027616A732D68696464656E272C0A2020202020202020';
wwv_flow_api.g_varchar2_table(949) := '2020202020202020636C6F73653A2027616A732D636C6F7365270A2020202020202020202020207D3B0A20202020202020202F2A2A0A2020202020202020202A2048656C7065723A20696E697469616C697A657320746865206E6F74696669657220696E';
wwv_flow_api.g_varchar2_table(950) := '7374616E63650A2020202020202020202A200A2020202020202020202A2F0A202020202020202066756E6374696F6E20696E697469616C697A6528696E7374616E636529207B0A0A2020202020202020202020206966202821696E7374616E63652E5F5F';
wwv_flow_api.g_varchar2_table(951) := '696E7465726E616C29207B0A20202020202020202020202020202020696E7374616E63652E5F5F696E7465726E616C203D207B0A2020202020202020202020202020202020202020706F736974696F6E3A20616C6572746966792E64656661756C74732E';
wwv_flow_api.g_varchar2_table(952) := '6E6F7469666965722E706F736974696F6E2C0A202020202020202020202020202020202020202064656C61793A20616C6572746966792E64656661756C74732E6E6F7469666965722E64656C61792C0A202020202020202020202020202020207D3B0A0A';
wwv_flow_api.g_varchar2_table(953) := '20202020202020202020202020202020656C656D656E74203D20646F63756D656E742E637265617465456C656D656E74282744495627293B0A0A20202020202020202020202020202020757064617465506F736974696F6E28696E7374616E6365293B0A';
wwv_flow_api.g_varchar2_table(954) := '2020202020202020202020207D0A0A2020202020202020202020202F2F61646420746F20444F4D20747265652E0A20202020202020202020202069662028656C656D656E742E706172656E744E6F646520213D3D20646F63756D656E742E626F64792920';
wwv_flow_api.g_varchar2_table(955) := '7B0A20202020202020202020202020202020646F63756D656E742E626F64792E617070656E644368696C6428656C656D656E74293B0A2020202020202020202020207D0A20202020202020207D0A20202020202020200A202020202020202066756E6374';
wwv_flow_api.g_varchar2_table(956) := '696F6E2070757368496E7374616E636528696E7374616E636529207B0A202020202020202020202020696E7374616E63652E5F5F696E7465726E616C2E707573686564203D20747275653B0A2020202020202020202020206F70656E496E7374616E6365';
wwv_flow_api.g_varchar2_table(957) := '732E7075736828696E7374616E6365293B0A20202020202020207D0A202020202020202066756E6374696F6E20706F70496E7374616E636528696E7374616E636529207B0A2020202020202020202020206F70656E496E7374616E6365732E73706C6963';
wwv_flow_api.g_varchar2_table(958) := '65286F70656E496E7374616E6365732E696E6465784F6628696E7374616E6365292C2031293B0A202020202020202020202020696E7374616E63652E5F5F696E7465726E616C2E707573686564203D2066616C73653B0A20202020202020207D0A202020';
wwv_flow_api.g_varchar2_table(959) := '20202020202F2A2A0A2020202020202020202A2048656C7065723A2075706461746520746865206E6F74696669657220696E7374616E636520706F736974696F6E0A2020202020202020202A200A2020202020202020202A2F0A20202020202020206675';
wwv_flow_api.g_varchar2_table(960) := '6E6374696F6E20757064617465506F736974696F6E28696E7374616E636529207B0A202020202020202020202020656C656D656E742E636C6173734E616D65203D20636C61737365732E626173653B0A2020202020202020202020207377697463682028';
wwv_flow_api.g_varchar2_table(961) := '696E7374616E63652E5F5F696E7465726E616C2E706F736974696F6E29207B0A202020202020202020202020636173652027746F702D7269676874273A0A20202020202020202020202020202020616464436C61737328656C656D656E742C20636C6173';
wwv_flow_api.g_varchar2_table(962) := '7365732E746F70202B20272027202B20636C61737365732E7269676874293B0A20202020202020202020202020202020627265616B3B0A202020202020202020202020636173652027746F702D6C656674273A0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(963) := '616464436C61737328656C656D656E742C20636C61737365732E746F70202B20272027202B20636C61737365732E6C656674293B0A20202020202020202020202020202020627265616B3B0A202020202020202020202020636173652027626F74746F6D';
wwv_flow_api.g_varchar2_table(964) := '2D6C656674273A0A20202020202020202020202020202020616464436C61737328656C656D656E742C20636C61737365732E626F74746F6D202B20272027202B20636C61737365732E6C656674293B0A2020202020202020202020202020202062726561';
wwv_flow_api.g_varchar2_table(965) := '6B3B0A0A20202020202020202020202064656661756C743A0A202020202020202020202020636173652027626F74746F6D2D7269676874273A0A20202020202020202020202020202020616464436C61737328656C656D656E742C20636C61737365732E';
wwv_flow_api.g_varchar2_table(966) := '626F74746F6D202B20272027202B20636C61737365732E7269676874293B0A20202020202020202020202020202020627265616B3B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020202F2A2A0A20202020202020202A';
wwv_flow_api.g_varchar2_table(967) := '20637265617465732061206E6577206E6F74696669636174696F6E206D6573736167650A20202020202020202A0A20202020202020202A2040706172616D20207B444F4D456C656D656E747D206D65737361676509546865206E6F746966696572206D65';
wwv_flow_api.g_varchar2_table(968) := '737361676520656C656D656E740A20202020202020202A2040706172616D20207B4E756D6265727D207761697420202054696D652028696E206D732920746F2077616974206265666F726520746865206D657373616765206973206469736D6973736564';
wwv_flow_api.g_varchar2_table(969) := '2C20612076616C7565206F662030206D65616E73206B656570206F70656E2074696C6C20636C69636B65642E0A20202020202020202A2040706172616D20207B46756E6374696F6E7D2063616C6C6261636B20412063616C6C6261636B2066756E637469';
wwv_flow_api.g_varchar2_table(970) := '6F6E20746F20626520696E766F6B6564207768656E20746865206D657373616765206973206469736D69737365642E0A20202020202020202A0A20202020202020202A204072657475726E207B756E646566696E65647D0A20202020202020202A2F0A20';
wwv_flow_api.g_varchar2_table(971) := '2020202020202066756E6374696F6E20637265617465286469762C2063616C6C6261636B29207B0A0A20202020202020202020202066756E6374696F6E20636C69636B44656C6567617465286576656E742C20696E7374616E636529207B0A2020202020';
wwv_flow_api.g_varchar2_table(972) := '202020202020202020202069662821696E7374616E63652E5F5F696E7465726E616C2E636C6F7365427574746F6E207C7C206576656E742E7461726765742E6765744174747269627574652827646174612D636C6F73652729203D3D3D20277472756527';
wwv_flow_api.g_varchar2_table(973) := '297B0A2020202020202020202020202020202020202020696E7374616E63652E6469736D6973732874727565293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A0A20202020202020202020202066756E6374696F6E';
wwv_flow_api.g_varchar2_table(974) := '207472616E736974696F6E446F6E65286576656E742C20696E7374616E636529207B0A202020202020202020202020202020202F2F20756E62696E64206576656E740A202020202020202020202020202020206F666628696E7374616E63652E656C656D';
wwv_flow_api.g_varchar2_table(975) := '656E742C207472616E736974696F6E2E747970652C207472616E736974696F6E446F6E65293B0A202020202020202020202020202020202F2F2072656D6F766520746865206D6573736167650A20202020202020202020202020202020656C656D656E74';
wwv_flow_api.g_varchar2_table(976) := '2E72656D6F76654368696C6428696E7374616E63652E656C656D656E74293B0A2020202020202020202020207D0A0A20202020202020202020202066756E6374696F6E20696E697469616C697A6528696E7374616E636529207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(977) := '202020202020206966202821696E7374616E63652E5F5F696E7465726E616C29207B0A2020202020202020202020202020202020202020696E7374616E63652E5F5F696E7465726E616C203D207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(978) := '2020207075736865643A2066616C73652C0A20202020202020202020202020202020202020202020202064656C6179203A20756E646566696E65642C0A20202020202020202020202020202020202020202020202074696D65723A20756E646566696E65';
wwv_flow_api.g_varchar2_table(979) := '642C0A202020202020202020202020202020202020202020202020636C69636B48616E646C65723A20756E646566696E65642C0A2020202020202020202020202020202020202020202020207472616E736974696F6E456E6448616E646C65723A20756E';
wwv_flow_api.g_varchar2_table(980) := '646566696E65642C0A2020202020202020202020202020202020202020202020207472616E736974696F6E54696D656F75743A20756E646566696E65640A20202020202020202020202020202020202020207D3B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(981) := '2020202020696E7374616E63652E5F5F696E7465726E616C2E636C69636B48616E646C6572203D2064656C656761746528696E7374616E63652C20636C69636B44656C6567617465293B0A2020202020202020202020202020202020202020696E737461';
wwv_flow_api.g_varchar2_table(982) := '6E63652E5F5F696E7465726E616C2E7472616E736974696F6E456E6448616E646C6572203D2064656C656761746528696E7374616E63652C207472616E736974696F6E446F6E65293B0A202020202020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(983) := '202020202020202072657475726E20696E7374616E63653B0A2020202020202020202020207D0A20202020202020202020202066756E6374696F6E20636C65617254696D65727328696E7374616E636529207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(984) := '636C65617254696D656F757428696E7374616E63652E5F5F696E7465726E616C2E74696D6572293B0A20202020202020202020202020202020636C65617254696D656F757428696E7374616E63652E5F5F696E7465726E616C2E7472616E736974696F6E';
wwv_flow_api.g_varchar2_table(985) := '54696D656F7574293B0A2020202020202020202020207D0A20202020202020202020202072657475726E20696E697469616C697A65287B0A202020202020202020202020202020202F2A206E6F74696669636174696F6E20444F4D20656C656D656E742A';
wwv_flow_api.g_varchar2_table(986) := '2F0A20202020202020202020202020202020656C656D656E743A206469762C0A202020202020202020202020202020202F2A0A20202020202020202020202020202020202A205075736865732061206E6F74696669636174696F6E206D65737361676520';
wwv_flow_api.g_varchar2_table(987) := '0A20202020202020202020202020202020202A2040706172616D207B737472696E67206F7220444F4D456C656D656E747D20636F6E74656E7420546865206E6F74696669636174696F6E206D65737361676520636F6E74656E740A202020202020202020';
wwv_flow_api.g_varchar2_table(988) := '20202020202020202A2040706172616D207B4E756D6265727D2077616974205468652074696D652028696E207365636F6E64732920746F2077616974206265666F726520746865206D657373616765206973206469736D69737365642C20612076616C75';
wwv_flow_api.g_varchar2_table(989) := '65206F662030206D65616E73206B656570206F70656E2074696C6C20636C69636B65642E0A20202020202020202020202020202020202A200A20202020202020202020202020202020202A2F0A20202020202020202020202020202020707573683A2066';
wwv_flow_api.g_varchar2_table(990) := '756E6374696F6E20285F636F6E74656E742C205F7761697429207B0A20202020202020202020202020202020202020206966202821746869732E5F5F696E7465726E616C2E70757368656429207B0A0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(991) := '2020202070757368496E7374616E63652874686973293B0A202020202020202020202020202020202020202020202020636C65617254696D6572732874686973293B0A0A20202020202020202020202020202020202020202020202076617220636F6E74';
wwv_flow_api.g_varchar2_table(992) := '656E742C20776169743B0A2020202020202020202020202020202020202020202020207377697463682028617267756D656E74732E6C656E67746829207B0A2020202020202020202020202020202020202020202020206361736520303A0A2020202020';
wwv_flow_api.g_varchar2_table(993) := '202020202020202020202020202020202020202020202077616974203D20746869732E5F5F696E7465726E616C2E64656C61793B0A20202020202020202020202020202020202020202020202020202020627265616B3B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(994) := '2020202020202020202020206361736520313A0A2020202020202020202020202020202020202020202020202020202069662028747970656F6620285F636F6E74656E7429203D3D3D20276E756D6265722729207B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(995) := '20202020202020202020202020202020202077616974203D205F636F6E74656E743B0A202020202020202020202020202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(996) := '20202020636F6E74656E74203D205F636F6E74656E743B0A202020202020202020202020202020202020202020202020202020202020202077616974203D20746869732E5F5F696E7465726E616C2E64656C61793B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(997) := '20202020202020202020202020207D0A20202020202020202020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202020202020202020206361736520323A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(998) := '2020202020202020202020636F6E74656E74203D205F636F6E74656E743B0A2020202020202020202020202020202020202020202020202020202077616974203D205F776169743B0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(999) := '20627265616B3B0A2020202020202020202020202020202020202020202020207D0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E636C6F7365427574746F6E203D20616C6572746966792E646566';
wwv_flow_api.g_varchar2_table(1000) := '61756C74732E6E6F7469666965722E636C6F7365427574746F6E3B0A2020202020202020202020202020202020202020202020202F2F2073657420636F6E74656E74730A2020202020202020202020202020202020202020202020206966202874797065';
wwv_flow_api.g_varchar2_table(1001) := '6F6620636F6E74656E7420213D3D2027756E646566696E65642729207B0A20202020202020202020202020202020202020202020202020202020746869732E736574436F6E74656E7428636F6E74656E74293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1002) := '20202020202020207D0A2020202020202020202020202020202020202020202020202F2F20617070656E64206F7220696E736572740A202020202020202020202020202020202020202020202020696620286E6F7469666965722E5F5F696E7465726E61';
wwv_flow_api.g_varchar2_table(1003) := '6C2E706F736974696F6E2E696E6465784F662827746F702729203C203029207B0A20202020202020202020202020202020202020202020202020202020656C656D656E742E617070656E644368696C6428746869732E656C656D656E74293B0A20202020';
wwv_flow_api.g_varchar2_table(1004) := '20202020202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202020202020202020656C656D656E742E696E736572744265666F726528746869732E656C656D656E742C20656C656D656E742E';
wwv_flow_api.g_varchar2_table(1005) := '66697273744368696C64293B0A2020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020207265666C6F77203D20746869732E656C656D656E742E6F666673657457696474683B0A2020';
wwv_flow_api.g_varchar2_table(1006) := '20202020202020202020202020202020202020202020616464436C61737328746869732E656C656D656E742C20636C61737365732E76697369626C65293B0A2020202020202020202020202020202020202020202020202F2F2061747461636820636C69';
wwv_flow_api.g_varchar2_table(1007) := '636B206576656E740A2020202020202020202020202020202020202020202020206F6E28746869732E656C656D656E742C2027636C69636B272C20746869732E5F5F696E7465726E616C2E636C69636B48616E646C6572293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1008) := '202020202020202020202020202072657475726E20746869732E64656C61792877616974293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020202020202072657475726E20746869733B0A202020202020';
wwv_flow_api.g_varchar2_table(1009) := '202020202020202020207D2C0A202020202020202020202020202020202F2A0A20202020202020202020202020202020202A207B46756E6374696F6E7D2063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564206265666F7265';
wwv_flow_api.g_varchar2_table(1010) := '206469736D697373696E6720746865206E6F74696669636174696F6E206D6573736167652E0A20202020202020202020202020202020202A2052656D61726B733A20412072657475726E2076616C7565203D3D3D202766616C7365272077696C6C206361';
wwv_flow_api.g_varchar2_table(1011) := '6E63656C20746865206469736D697373616C0A20202020202020202020202020202020202A200A20202020202020202020202020202020202A2F0A202020202020202020202020202020206F6E6469736D6973733A2066756E6374696F6E202829207B20';
wwv_flow_api.g_varchar2_table(1012) := '7D2C0A202020202020202020202020202020202F2A0A20202020202020202020202020202020202A207B46756E6374696F6E7D2063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206D657373616765';
wwv_flow_api.g_varchar2_table(1013) := '206973206469736D69737365642E0A20202020202020202020202020202020202A200A20202020202020202020202020202020202A2F0A2020202020202020202020202020202063616C6C6261636B3A2063616C6C6261636B2C0A202020202020202020';
wwv_flow_api.g_varchar2_table(1014) := '202020202020202F2A0A20202020202020202020202020202020202A204469736D697373657320746865206E6F74696669636174696F6E206D657373616765200A20202020202020202020202020202020202A2040706172616D207B426F6F6C65616E7D';
wwv_flow_api.g_varchar2_table(1015) := '20636C69636B6564204120666C616720696E6469636174696E6720696620746865206469736D697373616C2077617320636175736564206279206120636C69636B2E0A20202020202020202020202020202020202A200A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1016) := '202020202A2F0A202020202020202020202020202020206469736D6973733A2066756E6374696F6E2028636C69636B656429207B0A202020202020202020202020202020202020202069662028746869732E5F5F696E7465726E616C2E70757368656429';
wwv_flow_api.g_varchar2_table(1017) := '207B0A202020202020202020202020202020202020202020202020636C65617254696D6572732874686973293B0A202020202020202020202020202020202020202020202020696620282128747970656F6620746869732E6F6E6469736D697373203D3D';
wwv_flow_api.g_varchar2_table(1018) := '3D202766756E6374696F6E2720262620746869732E6F6E6469736D6973732E63616C6C287468697329203D3D3D2066616C73652929207B0A202020202020202020202020202020202020202020202020202020202F2F64657461636820636C69636B2065';
wwv_flow_api.g_varchar2_table(1019) := '76656E740A202020202020202020202020202020202020202020202020202020206F666628746869732E656C656D656E742C2027636C69636B272C20746869732E5F5F696E7465726E616C2E636C69636B48616E646C6572293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1020) := '202020202020202020202020202020202020202F2F20656E7375726520656C656D656E74206578697374730A2020202020202020202020202020202020202020202020202020202069662028747970656F6620746869732E656C656D656E7420213D3D20';
wwv_flow_api.g_varchar2_table(1021) := '27756E646566696E65642720262620746869732E656C656D656E742E706172656E744E6F6465203D3D3D20656C656D656E7429207B0A20202020202020202020202020202020202020202020202020202020202020202F2F7472616E736974696F6E2065';
wwv_flow_api.g_varchar2_table(1022) := '6E64206F722066616C6C6261636B0A2020202020202020202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E7472616E736974696F6E54696D656F7574203D2073657454696D656F757428746869732E5F';
wwv_flow_api.g_varchar2_table(1023) := '5F696E7465726E616C2E7472616E736974696F6E456E6448616E646C65722C207472616E736974696F6E2E737570706F72746564203F2031303030203A20313030293B0A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1024) := '72656D6F7665436C61737328746869732E656C656D656E742C20636C61737365732E76697369626C65293B0A0A20202020202020202020202020202020202020202020202020202020202020202F2F20637573746F6D2063616C6C6261636B206F6E2064';
wwv_flow_api.g_varchar2_table(1025) := '69736D6973730A202020202020202020202020202020202020202020202020202020202020202069662028747970656F6620746869732E63616C6C6261636B203D3D3D202766756E6374696F6E2729207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1026) := '202020202020202020202020202020202020746869732E63616C6C6261636B2E63616C6C28746869732C20636C69636B6564293B0A20202020202020202020202020202020202020202020202020202020202020207D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1027) := '2020202020202020202020202020207D0A20202020202020202020202020202020202020202020202020202020706F70496E7374616E63652874686973293B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1028) := '202020202020202020207D0A202020202020202020202020202020202020202072657475726E20746869733B0A202020202020202020202020202020207D2C0A202020202020202020202020202020202F2A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1029) := '2A2044656C61797320746865206E6F74696669636174696F6E206D657373616765206469736D697373616C0A20202020202020202020202020202020202A2040706172616D207B4E756D6265727D2077616974205468652074696D652028696E20736563';
wwv_flow_api.g_varchar2_table(1030) := '6F6E64732920746F2077616974206265666F726520746865206D657373616765206973206469736D69737365642C20612076616C7565206F662030206D65616E73206B656570206F70656E2074696C6C20636C69636B65642E0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1031) := '202020202020202A200A20202020202020202020202020202020202A2F0A2020202020202020202020202020202064656C61793A2066756E6374696F6E20287761697429207B0A2020202020202020202020202020202020202020636C65617254696D65';
wwv_flow_api.g_varchar2_table(1032) := '72732874686973293B0A2020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E64656C6179203D20747970656F66207761697420213D3D2027756E646566696E656427202626202169734E614E282B7761697429203F';
wwv_flow_api.g_varchar2_table(1033) := '202B77616974203A206E6F7469666965722E5F5F696E7465726E616C2E64656C61793B0A202020202020202020202020202020202020202069662028746869732E5F5F696E7465726E616C2E64656C6179203E203029207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1034) := '20202020202020202020202020766172202073656C66203D20746869733B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E74696D6572203D2073657454696D656F75742866756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(1035) := '29207B2073656C662E6469736D69737328293B207D2C20746869732E5F5F696E7465726E616C2E64656C6179202A2031303030293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(1036) := '726E20746869733B0A202020202020202020202020202020207D2C0A202020202020202020202020202020202F2A0A20202020202020202020202020202020202A205365747320746865206E6F74696669636174696F6E206D65737361676520636F6E74';
wwv_flow_api.g_varchar2_table(1037) := '656E74730A20202020202020202020202020202020202A2040706172616D207B737472696E67206F7220444F4D456C656D656E747D20636F6E74656E7420546865206E6F74696669636174696F6E206D65737361676520636F6E74656E740A2020202020';
wwv_flow_api.g_varchar2_table(1038) := '2020202020202020202020202A200A20202020202020202020202020202020202A2F0A20202020202020202020202020202020736574436F6E74656E743A2066756E6374696F6E2028636F6E74656E7429207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1039) := '2020202069662028747970656F6620636F6E74656E74203D3D3D2027737472696E672729207B0A202020202020202020202020202020202020202020202020636C656172436F6E74656E747328746869732E656C656D656E74293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1040) := '20202020202020202020202020202020746869732E656C656D656E742E696E6E657248544D4C203D20636F6E74656E743B0A20202020202020202020202020202020202020207D20656C73652069662028636F6E74656E7420696E7374616E63656F6620';
wwv_flow_api.g_varchar2_table(1041) := '77696E646F772E48544D4C456C656D656E7420262620746869732E656C656D656E742E66697273744368696C6420213D3D20636F6E74656E7429207B0A202020202020202020202020202020202020202020202020636C656172436F6E74656E74732874';
wwv_flow_api.g_varchar2_table(1042) := '6869732E656C656D656E74293B0A202020202020202020202020202020202020202020202020746869732E656C656D656E742E617070656E644368696C6428636F6E74656E74293B0A20202020202020202020202020202020202020207D0A2020202020';
wwv_flow_api.g_varchar2_table(1043) := '202020202020202020202020202020696628746869732E5F5F696E7465726E616C2E636C6F7365427574746F6E297B0A20202020202020202020202020202020202020202020202076617220636C6F7365203D20646F63756D656E742E63726561746545';
wwv_flow_api.g_varchar2_table(1044) := '6C656D656E7428277370616E27293B0A202020202020202020202020202020202020202020202020616464436C61737328636C6F73652C20636C61737365732E636C6F7365293B0A202020202020202020202020202020202020202020202020636C6F73';
wwv_flow_api.g_varchar2_table(1045) := '652E7365744174747269627574652827646174612D636C6F7365272C2074727565293B0A202020202020202020202020202020202020202020202020746869732E656C656D656E742E617070656E644368696C6428636C6F7365293B0A20202020202020';
wwv_flow_api.g_varchar2_table(1046) := '202020202020202020202020207D0A202020202020202020202020202020202020202072657475726E20746869733B0A202020202020202020202020202020207D2C0A202020202020202020202020202020202F2A0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1047) := '2020202A204469736D697373657320616C6C206F70656E206E6F74696669636174696F6E732065786365707420746869732E0A20202020202020202020202020202020202A200A20202020202020202020202020202020202A2F0A202020202020202020';
wwv_flow_api.g_varchar2_table(1048) := '202020202020206469736D6973734F74686572733A2066756E6374696F6E202829207B0A20202020202020202020202020202020202020206E6F7469666965722E6469736D697373416C6C2874686973293B0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1049) := '20202072657475726E20746869733B0A202020202020202020202020202020207D0A2020202020202020202020207D293B0A20202020202020207D0A0A20202020202020202F2F6E6F746966696572206170690A202020202020202072657475726E207B';
wwv_flow_api.g_varchar2_table(1050) := '0A2020202020202020202020202F2A2A0A202020202020202020202020202A2047657473206F722053657473206E6F7469666965722073657474696E67732E200A202020202020202020202020202A0A202020202020202020202020202A204070617261';
wwv_flow_api.g_varchar2_table(1051) := '6D207B737472696E677D206B6579205468652073657474696E67206E616D650A202020202020202020202020202A2040706172616D207B56617269616E747D2076616C7565205468652073657474696E672076616C75652E0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1052) := '20202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D096966207468652063616C6C65642061732061207365747465722C2072657475726E20746865206E6F74696669657220696E7374616E63652E0A20202020202020';
wwv_flow_api.g_varchar2_table(1053) := '2020202020202A2F0A20202020202020202020202073657474696E673A2066756E6374696F6E20286B65792C2076616C756529207B0A202020202020202020202020202020202F2F656E7375726520696E69740A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1054) := '696E697469616C697A652874686973293B0A0A2020202020202020202020202020202069662028747970656F662076616C7565203D3D3D2027756E646566696E65642729207B0A20202020202020202020202020202020202020202F2F6765740A202020';
wwv_flow_api.g_varchar2_table(1055) := '202020202020202020202020202020202072657475726E20746869732E5F5F696E7465726E616C5B6B65795D3B0A202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202F2F7365740A202020';
wwv_flow_api.g_varchar2_table(1056) := '202020202020202020202020202020202073776974636820286B657929207B0A2020202020202020202020202020202020202020636173652027706F736974696F6E273A0A202020202020202020202020202020202020202020202020746869732E5F5F';
wwv_flow_api.g_varchar2_table(1057) := '696E7465726E616C2E706F736974696F6E203D2076616C75653B0A202020202020202020202020202020202020202020202020757064617465506F736974696F6E2874686973293B0A202020202020202020202020202020202020202020202020627265';
wwv_flow_api.g_varchar2_table(1058) := '616B3B0A202020202020202020202020202020202020202063617365202764656C6179273A0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E64656C6179203D2076616C75653B0A20202020202020';
wwv_flow_api.g_varchar2_table(1059) := '2020202020202020202020202020202020627265616B3B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020202020202072657475726E20746869733B0A20202020202020';
wwv_flow_api.g_varchar2_table(1060) := '20202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A205B416C6961735D2053657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A20202020202020';
wwv_flow_api.g_varchar2_table(1061) := '20202020207365743A66756E6374696F6E286B65792C76616C7565297B0A20202020202020202020202020202020746869732E73657474696E67286B65792C76616C7565293B0A2020202020202020202020202020202072657475726E20746869733B0A';
wwv_flow_api.g_varchar2_table(1062) := '2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A205B416C6961735D2047657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A';
wwv_flow_api.g_varchar2_table(1063) := '2020202020202020202020206765743A66756E6374696F6E286B6579297B0A2020202020202020202020202020202072657475726E20746869732E73657474696E67286B6579293B0A2020202020202020202020207D2C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1064) := '2F2A2A0A202020202020202020202020202A20437265617465732061206E6577206E6F74696669636174696F6E206D6573736167650A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B737472696E677D20';
wwv_flow_api.g_varchar2_table(1065) := '74797065205468652074797065206F66206E6F74696669636174696F6E206D657373616765202873696D706C7920612043535320636C617373206E616D652027616A732D7B747970657D2720746F206265206164646564292E0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1066) := '2020202A2040706172616D207B46756E6374696F6E7D2063616C6C6261636B2020412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206D657373616765206973206469736D69737365642E0A2020';
wwv_flow_api.g_varchar2_table(1067) := '20202020202020202020202A0A202020202020202020202020202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F0A2020202020202020202020206372656174653A2066756E6374696F6E2028747970652C20';
wwv_flow_api.g_varchar2_table(1068) := '63616C6C6261636B29207B0A202020202020202020202020202020202F2F656E73757265206E6F74696669657220696E69740A20202020202020202020202020202020696E697469616C697A652874686973293B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1069) := '202F2F637265617465206E6577206E6F74696669636174696F6E206D6573736167650A2020202020202020202020202020202076617220646976203D20646F63756D656E742E637265617465456C656D656E74282764697627293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1070) := '20202020202020206469762E636C6173734E616D65203D20636C61737365732E6D657373616765202B202828747970656F662074797065203D3D3D2027737472696E6727202626207479706520213D3D20272729203F202720616A732D27202B20747970';
wwv_flow_api.g_varchar2_table(1071) := '65203A202727293B0A2020202020202020202020202020202072657475726E20637265617465286469762C2063616C6C6261636B293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A';
wwv_flow_api.g_varchar2_table(1072) := '204469736D697373657320616C6C206F70656E206E6F74696669636174696F6E732E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B4F626A6563747D20657863706574205B6F7074696F6E616C5D2054';
wwv_flow_api.g_varchar2_table(1073) := '6865206E6F74696669636174696F6E206F626A65637420746F206578636C7564652066726F6D206469736D697373616C2E0A202020202020202020202020202A0A202020202020202020202020202A2F0A2020202020202020202020206469736D697373';
wwv_flow_api.g_varchar2_table(1074) := '416C6C3A2066756E6374696F6E202865786365707429207B0A2020202020202020202020202020202076617220636C6F6E65203D206F70656E496E7374616E6365732E736C6963652830293B0A20202020202020202020202020202020666F7220287661';
wwv_flow_api.g_varchar2_table(1075) := '722078203D20303B2078203C20636C6F6E652E6C656E6774683B2078202B3D203129207B0A20202020202020202020202020202020202020207661722020696E7374616E6365203D20636C6F6E655B785D3B0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1076) := '20202069662028657863657074203D3D3D20756E646566696E6564207C7C2065786365707420213D3D20696E7374616E636529207B0A202020202020202020202020202020202020202020202020696E7374616E63652E6469736D69737328293B0A2020';
wwv_flow_api.g_varchar2_table(1077) := '2020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D3B0A202020207D2928293B0A202020202F2A2A0A20202020202A20416C65727469667920707562';
wwv_flow_api.g_varchar2_table(1078) := '6C6963204150490A20202020202A205468697320636F6E7461696E732065766572797468696E672074686174206973206578706F736564207468726F7567682074686520616C657274696679206F626A6563742E0A20202020202A0A20202020202A2040';
wwv_flow_api.g_varchar2_table(1079) := '72657475726E207B4F626A6563747D0A20202020202A2F0A2020202066756E6374696F6E20416C6572746966792829207B0A0A20202020202020202F2F20686F6C64732061207265666572656E636573206F662063726561746564206469616C6F67730A';
wwv_flow_api.g_varchar2_table(1080) := '2020202020202020766172206469616C6F6773203D207B7D3B0A0A20202020202020202F2A2A0A2020202020202020202A20457874656E6473206120676976656E2070726F746F74797065206279206D657267696E672070726F70657274696573206672';
wwv_flow_api.g_varchar2_table(1081) := '6F6D206261736520696E746F207375622E0A2020202020202020202A0A2020202020202020202A2040737562207B4F626A6563747D20737562205468652070726F746F74797065206265696E67206F7665727772697474656E2E0A202020202020202020';
wwv_flow_api.g_varchar2_table(1082) := '2A204062617365207B4F626A6563747D2062617365205468652070726F746F74797065206265696E67207772697474656E2E0A2020202020202020202A0A2020202020202020202A204072657475726E207B4F626A6563747D2054686520657874656E64';
wwv_flow_api.g_varchar2_table(1083) := '65642070726F746F747970652E0A2020202020202020202A2F0A202020202020202066756E6374696F6E20657874656E64287375622C206261736529207B0A2020202020202020202020202F2F20636F7079206469616C6F6720706F746F74797065206F';
wwv_flow_api.g_varchar2_table(1084) := '76657220646566696E6974696F6E2E0A202020202020202020202020666F7220287661722070726F7020696E206261736529207B0A2020202020202020202020202020202069662028626173652E6861734F776E50726F70657274792870726F70292920';
wwv_flow_api.g_varchar2_table(1085) := '7B0A20202020202020202020202020202020202020207375625B70726F705D203D20626173655B70726F705D3B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020202020202072657475726E20737562';
wwv_flow_api.g_varchar2_table(1086) := '3B0A20202020202020207D0A0A0A20202020202020202F2A2A0A20202020202020202A2048656C7065723A2072657475726E732061206469616C6F6720696E7374616E63652066726F6D207361766564206469616C6F67732E0A20202020202020202A20';
wwv_flow_api.g_varchar2_table(1087) := '616E6420696E697469616C697A657320746865206469616C6F6720696620697473206E6F7420616C726561647920696E697469616C697A65642E0A20202020202020202A0A20202020202020202A20406E616D65207B537472696E677D206E616D652054';
wwv_flow_api.g_varchar2_table(1088) := '6865206469616C6F67206E616D652E0A20202020202020202A0A20202020202020202A204072657475726E207B4F626A6563747D20546865206469616C6F6720696E7374616E63652E0A20202020202020202A2F0A202020202020202066756E6374696F';
wwv_flow_api.g_varchar2_table(1089) := '6E206765745F6469616C6F67286E616D6529207B0A202020202020202020202020766172206469616C6F67203D206469616C6F67735B6E616D655D2E6469616C6F673B0A2020202020202020202020202F2F696E697469616C697A652074686520646961';
wwv_flow_api.g_varchar2_table(1090) := '6C6F6720696620697473206E6F7420616C726561647920696E697469616C697A65642E0A202020202020202020202020696620286469616C6F6720262620747970656F66206469616C6F672E5F5F696E6974203D3D3D202766756E6374696F6E2729207B';
wwv_flow_api.g_varchar2_table(1091) := '0A202020202020202020202020202020206469616C6F672E5F5F696E6974286469616C6F67293B0A2020202020202020202020207D0A20202020202020202020202072657475726E206469616C6F673B0A20202020202020207D0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(1092) := '2F2A2A0A2020202020202020202A2048656C7065723A20207265676973746572732061206E6577206469616C6F6720646566696E6974696F6E2E0A2020202020202020202A0A2020202020202020202A20406E616D65207B537472696E677D206E616D65';
wwv_flow_api.g_varchar2_table(1093) := '20546865206469616C6F67206E616D652E0A2020202020202020202A2040466163746F7279207B46756E6374696F6E7D20466163746F727920612066756E6374696F6E20726573706F7369626C6520666F72206372656174696E67206469616C6F672070';
wwv_flow_api.g_varchar2_table(1094) := '726F746F747970652E0A2020202020202020202A20407472616E7369656E74207B426F6F6C65616E7D207472616E7369656E74205472756520746F206372656174652061206E6577206469616C6F6720696E7374616E636520656163682074696D652074';
wwv_flow_api.g_varchar2_table(1095) := '6865206469616C6F6720697320696E766F6B65642C2066616C7365206F74686572776973652E0A2020202020202020202A204062617365207B537472696E677D206261736520746865206E616D65206F6620616E6F74686572206469616C6F6720746F20';
wwv_flow_api.g_varchar2_table(1096) := '696E68657269742066726F6D2E0A2020202020202020202A0A2020202020202020202A204072657475726E207B4F626A6563747D20546865206469616C6F6720646566696E6974696F6E2E0A2020202020202020202A2F0A202020202020202066756E63';
wwv_flow_api.g_varchar2_table(1097) := '74696F6E207265676973746572286E616D652C20466163746F72792C207472616E7369656E742C206261736529207B0A20202020202020202020202076617220646566696E6974696F6E203D207B0A202020202020202020202020202020206469616C6F';
wwv_flow_api.g_varchar2_table(1098) := '673A206E756C6C2C0A20202020202020202020202020202020666163746F72793A20466163746F72790A2020202020202020202020207D3B0A0A2020202020202020202020202F2F69662074686973206973206261736564206F6E20616E206578697374';
wwv_flow_api.g_varchar2_table(1099) := '696E67206469616C6F672C206372656174652061206E657720646566696E6974696F6E0A2020202020202020202020202F2F6279206170706C79696E6720746865206E65772070726F746F797065206F76657220746865206578697374696E67206F6E65';
wwv_flow_api.g_varchar2_table(1100) := '2E0A202020202020202020202020696620286261736520213D3D20756E646566696E656429207B0A20202020202020202020202020202020646566696E6974696F6E2E666163746F7279203D2066756E6374696F6E202829207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1101) := '202020202020202020202072657475726E20657874656E64286E6577206469616C6F67735B626173655D2E666163746F727928292C206E657720466163746F72792829293B0A202020202020202020202020202020207D3B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1102) := '207D0A0A20202020202020202020202069662028217472616E7369656E7429207B0A202020202020202020202020202020202F2F6372656174652061206E657720646566696E6974696F6E206261736564206F6E206469616C6F670A2020202020202020';
wwv_flow_api.g_varchar2_table(1103) := '2020202020202020646566696E6974696F6E2E6469616C6F67203D20657874656E64286E657720646566696E6974696F6E2E666163746F727928292C206469616C6F67293B0A2020202020202020202020207D0A20202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(1104) := '726E206469616C6F67735B6E616D655D203D20646566696E6974696F6E3B0A20202020202020207D0A0A202020202020202072657475726E207B0A2020202020202020202020202F2A2A0A202020202020202020202020202A20416C6572746966792064';
wwv_flow_api.g_varchar2_table(1105) := '656661756C74730A202020202020202020202020202A200A202020202020202020202020202A204074797065207B4F626A6563747D0A202020202020202020202020202A2F0A20202020202020202020202064656661756C74733A2064656661756C7473';
wwv_flow_api.g_varchar2_table(1106) := '2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A204469616C6F677320666163746F7279200A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B737472696E677D2020202020';
wwv_flow_api.g_varchar2_table(1107) := '204469616C6F67206E616D652E0A202020202020202020202020202A2040706172616D207B46756E6374696F6E7D2020202041204469616C6F6720666163746F72792066756E6374696F6E2E0A202020202020202020202020202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(1108) := '426F6F6C65616E7D2020202020496E64696361746573207768657468657220746F2063726561746520612073696E676C65746F6E206F72207472616E7369656E74206469616C6F672E0A202020202020202020202020202A2040706172616D207B537472';
wwv_flow_api.g_varchar2_table(1109) := '696E677D202020202020546865206E616D65206F66207468652062617365207479706520746F20696E68657269742066726F6D2E0A202020202020202020202020202A2F0A2020202020202020202020206469616C6F673A2066756E6374696F6E20286E';
wwv_flow_api.g_varchar2_table(1110) := '616D652C20466163746F72792C207472616E7369656E742C206261736529207B0A0A202020202020202020202020202020202F2F2067657420726571756573742C206372656174652061206E657720696E7374616E636520616E642072657475726E2069';
wwv_flow_api.g_varchar2_table(1111) := '742E0A2020202020202020202020202020202069662028747970656F6620466163746F727920213D3D202766756E6374696F6E2729207B0A202020202020202020202020202020202020202072657475726E206765745F6469616C6F67286E616D65293B';
wwv_flow_api.g_varchar2_table(1112) := '0A202020202020202020202020202020207D0A0A2020202020202020202020202020202069662028746869732E6861734F776E50726F7065727479286E616D652929207B0A20202020202020202020202020202020202020207468726F77206E65772045';
wwv_flow_api.g_varchar2_table(1113) := '72726F722827616C6572746966792E6469616C6F673A206E616D6520616C72656164792065786973747327293B0A202020202020202020202020202020207D0A0A202020202020202020202020202020202F2F2072656769737465722074686520646961';
wwv_flow_api.g_varchar2_table(1114) := '6C6F670A2020202020202020202020202020202076617220646566696E6974696F6E203D207265676973746572286E616D652C20466163746F72792C207472616E7369656E742C2062617365293B0A0A2020202020202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(1115) := '7472616E7369656E7429207B0A0A20202020202020202020202020202020202020202F2F206D616B65206974207075626C69630A2020202020202020202020202020202020202020746869735B6E616D655D203D2066756E6374696F6E202829207B0A20';
wwv_flow_api.g_varchar2_table(1116) := '20202020202020202020202020202020202020202020202F2F6966207061737365642077697468206E6F20706172616D732C20636F6E736964657220697420612067657420726571756573740A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1117) := '2069662028617267756D656E74732E6C656E677468203D3D3D203029207B0A2020202020202020202020202020202020202020202020202020202072657475726E20646566696E6974696F6E2E6469616C6F673B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1118) := '2020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020202020202020202076617220696E7374616E6365203D20657874656E64286E657720646566696E6974696F6E2E666163746F727928292C206469616C6F67';
wwv_flow_api.g_varchar2_table(1119) := '293B0A202020202020202020202020202020202020202020202020202020202F2F656E7375726520696E69740A2020202020202020202020202020202020202020202020202020202069662028696E7374616E636520262620747970656F6620696E7374';
wwv_flow_api.g_varchar2_table(1120) := '616E63652E5F5F696E6974203D3D3D202766756E6374696F6E2729207B0A2020202020202020202020202020202020202020202020202020202020202020696E7374616E63652E5F5F696E697428696E7374616E6365293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1121) := '20202020202020202020202020202020207D0A20202020202020202020202020202020202020202020202020202020696E7374616E63655B276D61696E275D2E6170706C7928696E7374616E63652C20617267756D656E7473293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(1122) := '202020202020202020202020202020202020202072657475726E20696E7374616E63655B2773686F77275D2E6170706C7928696E7374616E6365293B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1123) := '202020202020207D3B0A202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202F2F206D616B65206974207075626C69630A2020202020202020202020202020202020202020746869735B6E61';
wwv_flow_api.g_varchar2_table(1124) := '6D655D203D2066756E6374696F6E202829207B0A2020202020202020202020202020202020202020202020202F2F656E7375726520696E69740A20202020202020202020202020202020202020202020202069662028646566696E6974696F6E2E646961';
wwv_flow_api.g_varchar2_table(1125) := '6C6F6720262620747970656F6620646566696E6974696F6E2E6469616C6F672E5F5F696E6974203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202020202020202020202020202020202020646566696E6974696F6E2E6469616C';
wwv_flow_api.g_varchar2_table(1126) := '6F672E5F5F696E697428646566696E6974696F6E2E6469616C6F67293B0A2020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020202F2F6966207061737365642077697468206E6F20';
wwv_flow_api.g_varchar2_table(1127) := '706172616D732C20636F6E736964657220697420612067657420726571756573740A20202020202020202020202020202020202020202020202069662028617267756D656E74732E6C656E677468203D3D3D203029207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1128) := '2020202020202020202020202020202072657475726E20646566696E6974696F6E2E6469616C6F673B0A2020202020202020202020202020202020202020202020207D20656C7365207B0A20202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1129) := '202020766172206469616C6F67203D20646566696E6974696F6E2E6469616C6F673B0A202020202020202020202020202020202020202020202020202020206469616C6F675B276D61696E275D2E6170706C7928646566696E6974696F6E2E6469616C6F';
wwv_flow_api.g_varchar2_table(1130) := '672C20617267756D656E7473293B0A2020202020202020202020202020202020202020202020202020202072657475726E206469616C6F675B2773686F77275D2E6170706C7928646566696E6974696F6E2E6469616C6F67293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1131) := '2020202020202020202020202020207D0A20202020202020202020202020202020202020207D3B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1132) := '20202A20436C6F736520616C6C206F70656E206469616C6F67732E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D207B4F626A6563747D20657863706574205B6F7074696F6E616C5D20546865206469616C';
wwv_flow_api.g_varchar2_table(1133) := '6F67206F626A65637420746F206578636C7564652066726F6D20636C6F73696E672E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F';
wwv_flow_api.g_varchar2_table(1134) := '0A202020202020202020202020636C6F7365416C6C3A2066756E6374696F6E202865786365707429207B0A2020202020202020202020202020202076617220636C6F6E65203D206F70656E4469616C6F67732E736C6963652830293B0A20202020202020';
wwv_flow_api.g_varchar2_table(1135) := '202020202020202020666F7220287661722078203D20303B2078203C20636C6F6E652E6C656E6774683B2078202B3D203129207B0A202020202020202020202020202020202020202076617220696E7374616E6365203D20636C6F6E655B785D3B0A2020';
wwv_flow_api.g_varchar2_table(1136) := '20202020202020202020202020202020202069662028657863657074203D3D3D20756E646566696E6564207C7C2065786365707420213D3D20696E7374616E636529207B0A202020202020202020202020202020202020202020202020696E7374616E63';
wwv_flow_api.g_varchar2_table(1137) := '652E636C6F736528293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20476574';
wwv_flow_api.g_varchar2_table(1138) := '73206F722053657473206469616C6F672073657474696E67732F6F7074696F6E732E20696620746865206469616C6F67206973207472616E7369656E742C20746869732063616C6C20646F6573206E6F7468696E672E0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1139) := '2A0A202020202020202020202020202A2040706172616D207B737472696E677D206E616D6520546865206469616C6F67206E616D652E0A202020202020202020202020202A2040706172616D207B537472696E677C4F626A6563747D206B657920412073';
wwv_flow_api.g_varchar2_table(1140) := '7472696E672073706563696679696E6720612070726F70657279206E616D65206F72206120636F6C6C656374696F6E206F66206B65792F76616C75652070616972732E0A202020202020202020202020202A2040706172616D207B56617269616E747D20';
wwv_flow_api.g_varchar2_table(1141) := '76616C7565204F7074696F6E616C2C207468652076616C7565206173736F636961746564207769746820746865206B65792028696E206361736520697420776173206120737472696E67292E0A202020202020202020202020202A0A2020202020202020';
wwv_flow_api.g_varchar2_table(1142) := '20202020202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F0A20202020202020202020202073657474696E673A2066756E6374696F6E20286E616D652C206B65792C2076616C756529207B0A0A2020202020';
wwv_flow_api.g_varchar2_table(1143) := '2020202020202020202020696620286E616D65203D3D3D20276E6F7469666965722729207B0A202020202020202020202020202020202020202072657475726E206E6F7469666965722E73657474696E67286B65792C2076616C7565293B0A2020202020';
wwv_flow_api.g_varchar2_table(1144) := '20202020202020202020207D0A0A20202020202020202020202020202020766172206469616C6F67203D206765745F6469616C6F67286E616D65293B0A20202020202020202020202020202020696620286469616C6F6729207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1145) := '202020202020202020202072657475726E206469616C6F672E73657474696E67286B65792C2076616C7565293B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A2020202020';
wwv_flow_api.g_varchar2_table(1146) := '20202020202020202A205B416C6961735D2053657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A2020202020202020202020207365743A2066756E6374696F6E286E616D652C6B65792C76';
wwv_flow_api.g_varchar2_table(1147) := '616C7565297B0A2020202020202020202020202020202072657475726E20746869732E73657474696E67286E616D652C206B65792C76616C7565293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A2020202020202020';
wwv_flow_api.g_varchar2_table(1148) := '20202020202A205B416C6961735D2047657473206469616C6F672073657474696E67732F6F7074696F6E73200A202020202020202020202020202A2F0A2020202020202020202020206765743A2066756E6374696F6E286E616D652C206B6579297B0A20';
wwv_flow_api.g_varchar2_table(1149) := '20202020202020202020202020202072657475726E20746869732E73657474696E67286E616D652C206B6579293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A2043726561746573';
wwv_flow_api.g_varchar2_table(1150) := '2061206E6577206E6F74696669636174696F6E206D6573736167652E0A202020202020202020202020202A20496620612074797065206973207061737365642C206120636C617373206E616D652022616A732D7B747970657D222077696C6C2062652061';
wwv_flow_api.g_varchar2_table(1151) := '646465642E0A202020202020202020202020202A205468697320616C6C6F777320666F7220637573746F6D206C6F6F6B20616E64206665656C20666F7220766172696F7573207479706573206F66206E6F74696669636174696F6E732E0A202020202020';
wwv_flow_api.g_varchar2_table(1152) := '202020202020202A0A202020202020202020202020202A2040706172616D20207B537472696E67207C20444F4D456C656D656E747D202020205B6D6573736167653D756E646566696E65645D09094D65737361676520746578740A202020202020202020';
wwv_flow_api.g_varchar2_table(1153) := '202020202A2040706172616D20207B537472696E677D20202020202020202020202020202020205B747970653D27275D0909090954797065206F66206C6F67206D6573736167650A202020202020202020202020202A2040706172616D20207B53747269';
wwv_flow_api.g_varchar2_table(1154) := '6E677D20202020202020202020202020202020205B776169743D27275D0909090954696D652028696E207365636F6E64732920746F2077616974206265666F7265206175746F2D636C6F73650A202020202020202020202020202A2040706172616D2020';
wwv_flow_api.g_varchar2_table(1155) := '7B46756E6374696F6E7D2020202020202020202020202020205B63616C6C6261636B3D756E646566696E65645D09412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206C6F6720697320636C6F73';
wwv_flow_api.g_varchar2_table(1156) := '65642E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D204E6F74696669636174696F6E206F626A6563742E0A202020202020202020202020202A2F0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1157) := '6E6F746966793A2066756E6374696F6E20286D6573736167652C20747970652C20776169742C2063616C6C6261636B29207B0A2020202020202020202020202020202072657475726E206E6F7469666965722E63726561746528747970652C2063616C6C';
wwv_flow_api.g_varchar2_table(1158) := '6261636B292E70757368286D6573736167652C2077616974293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20437265617465732061206E6577206E6F74696669636174696F6E20';
wwv_flow_api.g_varchar2_table(1159) := '6D6573736167652E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D20207B537472696E677D09095B6D6573736167653D756E646566696E65645D09094D65737361676520746578740A202020202020202020';
wwv_flow_api.g_varchar2_table(1160) := '202020202A2040706172616D20207B537472696E677D20202020205B776169743D27275D0909090954696D652028696E207365636F6E64732920746F2077616974206265666F7265206175746F2D636C6F73650A202020202020202020202020202A2040';
wwv_flow_api.g_varchar2_table(1161) := '706172616D20207B46756E6374696F6E7D095B63616C6C6261636B3D756E646566696E65645D09412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206C6F6720697320636C6F7365642E0A202020';
wwv_flow_api.g_varchar2_table(1162) := '202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D204E6F74696669636174696F6E206F626A6563742E0A202020202020202020202020202A2F0A2020202020202020202020206D657373616765';
wwv_flow_api.g_varchar2_table(1163) := '3A2066756E6374696F6E20286D6573736167652C20776169742C2063616C6C6261636B29207B0A2020202020202020202020202020202072657475726E206E6F7469666965722E637265617465286E756C6C2C2063616C6C6261636B292E70757368286D';
wwv_flow_api.g_varchar2_table(1164) := '6573736167652C2077616974293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20437265617465732061206E6577206E6F74696669636174696F6E206D657373616765206F662074';
wwv_flow_api.g_varchar2_table(1165) := '797065202773756363657373272E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D20207B537472696E677D09095B6D6573736167653D756E646566696E65645D09094D65737361676520746578740A202020';
wwv_flow_api.g_varchar2_table(1166) := '202020202020202020202A2040706172616D20207B537472696E677D20202020205B776169743D27275D0909090954696D652028696E207365636F6E64732920746F2077616974206265666F7265206175746F2D636C6F73650A20202020202020202020';
wwv_flow_api.g_varchar2_table(1167) := '2020202A2040706172616D20207B46756E6374696F6E7D095B63616C6C6261636B3D756E646566696E65645D09412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206C6F6720697320636C6F7365';
wwv_flow_api.g_varchar2_table(1168) := '642E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D204E6F74696669636174696F6E206F626A6563742E0A202020202020202020202020202A2F0A20202020202020202020202073';
wwv_flow_api.g_varchar2_table(1169) := '7563636573733A2066756E6374696F6E20286D6573736167652C20776169742C2063616C6C6261636B29207B0A2020202020202020202020202020202072657475726E206E6F7469666965722E637265617465282773756363657373272C2063616C6C62';
wwv_flow_api.g_varchar2_table(1170) := '61636B292E70757368286D6573736167652C2077616974293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20437265617465732061206E6577206E6F74696669636174696F6E206D';
wwv_flow_api.g_varchar2_table(1171) := '657373616765206F66207479706520276572726F72272E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D20207B537472696E677D09095B6D6573736167653D756E646566696E65645D09094D657373616765';
wwv_flow_api.g_varchar2_table(1172) := '20746578740A202020202020202020202020202A2040706172616D20207B537472696E677D20202020205B776169743D27275D0909090954696D652028696E207365636F6E64732920746F2077616974206265666F7265206175746F2D636C6F73650A20';
wwv_flow_api.g_varchar2_table(1173) := '2020202020202020202020202A2040706172616D20207B46756E6374696F6E7D095B63616C6C6261636B3D756E646566696E65645D09412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20746865206C6F67';
wwv_flow_api.g_varchar2_table(1174) := '20697320636C6F7365642E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D204E6F74696669636174696F6E206F626A6563742E0A202020202020202020202020202A2F0A20202020';
wwv_flow_api.g_varchar2_table(1175) := '20202020202020206572726F723A2066756E6374696F6E20286D6573736167652C20776169742C2063616C6C6261636B29207B0A2020202020202020202020202020202072657475726E206E6F7469666965722E63726561746528276572726F72272C20';
wwv_flow_api.g_varchar2_table(1176) := '63616C6C6261636B292E70757368286D6573736167652C2077616974293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A20437265617465732061206E6577206E6F74696669636174';
wwv_flow_api.g_varchar2_table(1177) := '696F6E206D657373616765206F66207479706520277761726E696E67272E0A202020202020202020202020202A0A202020202020202020202020202A2040706172616D20207B537472696E677D09095B6D6573736167653D756E646566696E65645D0909';
wwv_flow_api.g_varchar2_table(1178) := '4D65737361676520746578740A202020202020202020202020202A2040706172616D20207B537472696E677D20202020205B776169743D27275D0909090954696D652028696E207365636F6E64732920746F2077616974206265666F7265206175746F2D';
wwv_flow_api.g_varchar2_table(1179) := '636C6F73650A202020202020202020202020202A2040706172616D20207B46756E6374696F6E7D095B63616C6C6261636B3D756E646566696E65645D09412063616C6C6261636B2066756E6374696F6E20746F20626520696E766F6B6564207768656E20';
wwv_flow_api.g_varchar2_table(1180) := '746865206C6F6720697320636C6F7365642E0A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B4F626A6563747D204E6F74696669636174696F6E206F626A6563742E0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1181) := '2A2F0A2020202020202020202020207761726E696E673A2066756E6374696F6E20286D6573736167652C20776169742C2063616C6C6261636B29207B0A2020202020202020202020202020202072657475726E206E6F7469666965722E63726561746528';
wwv_flow_api.g_varchar2_table(1182) := '277761726E696E67272C2063616C6C6261636B292E70757368286D6573736167652C2077616974293B0A2020202020202020202020207D2C0A2020202020202020202020202F2A2A0A202020202020202020202020202A204469736D697373657320616C';
wwv_flow_api.g_varchar2_table(1183) := '6C206F70656E206E6F74696669636174696F6E730A202020202020202020202020202A0A202020202020202020202020202A204072657475726E207B756E646566696E65647D0A202020202020202020202020202A2F0A20202020202020202020202064';
wwv_flow_api.g_varchar2_table(1184) := '69736D697373416C6C3A2066756E6374696F6E202829207B0A202020202020202020202020202020206E6F7469666965722E6469736D697373416C6C28293B0A2020202020202020202020207D0A20202020202020207D3B0A202020207D0A2020202076';
wwv_flow_api.g_varchar2_table(1185) := '617220616C657274696679203D206E657720416C65727469667928293B0A0A202020202F2A2A0A202020202A20416C657274206469616C6F6720646566696E6974696F6E0A202020202A0A202020202A20696E766F6B65642062793A0A202020202A0961';
wwv_flow_api.g_varchar2_table(1186) := '6C6572746966792E616C657274286D657373616765293B0A202020202A09616C6572746966792E616C657274287469746C652C206D657373616765293B0A202020202A09616C6572746966792E616C657274286D6573736167652C206F6E6F6B293B0A20';
wwv_flow_api.g_varchar2_table(1187) := '2020202A09616C6572746966792E616C657274287469746C652C206D6573736167652C206F6E6F6B293B0A20202020202A2F0A20202020616C6572746966792E6469616C6F672827616C657274272C2066756E6374696F6E202829207B0A202020202020';
wwv_flow_api.g_varchar2_table(1188) := '202072657475726E207B0A2020202020202020202020206D61696E3A2066756E6374696F6E20285F7469746C652C205F6D6573736167652C205F6F6E6F6B29207B0A20202020202020202020202020202020766172207469746C652C206D657373616765';
wwv_flow_api.g_varchar2_table(1189) := '2C206F6E6F6B3B0A202020202020202020202020202020207377697463682028617267756D656E74732E6C656E67746829207B0A202020202020202020202020202020206361736520313A0A20202020202020202020202020202020202020206D657373';
wwv_flow_api.g_varchar2_table(1190) := '616765203D205F7469746C653B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520323A0A202020202020202020202020202020202020202069662028747970656F66205F6D6573';
wwv_flow_api.g_varchar2_table(1191) := '73616765203D3D3D202766756E6374696F6E2729207B0A2020202020202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A2020202020202020202020202020202020202020202020206F6E6F6B203D205F6D6573';
wwv_flow_api.g_varchar2_table(1192) := '736167653B0A20202020202020202020202020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020202020207469746C65203D205F7469746C653B0A2020202020202020202020202020202020202020202020206D';
wwv_flow_api.g_varchar2_table(1193) := '657373616765203D205F6D6573736167653B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520333A0A2020202020202020';
wwv_flow_api.g_varchar2_table(1194) := '2020202020202020202020207469746C65203D205F7469746C653B0A20202020202020202020202020202020202020206D657373616765203D205F6D6573736167653B0A20202020202020202020202020202020202020206F6E6F6B203D205F6F6E6F6B';
wwv_flow_api.g_varchar2_table(1195) := '3B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A20202020202020202020202020202020746869732E73657428277469746C65272C207469746C65293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1196) := '2020202020746869732E73657428276D657373616765272C206D657373616765293B0A20202020202020202020202020202020746869732E73657428276F6E6F6B272C206F6E6F6B293B0A2020202020202020202020202020202072657475726E207468';
wwv_flow_api.g_varchar2_table(1197) := '69733B0A2020202020202020202020207D2C0A20202020202020202020202073657475703A2066756E6374696F6E202829207B0A2020202020202020202020202020202072657475726E207B0A2020202020202020202020202020202020202020627574';
wwv_flow_api.g_varchar2_table(1198) := '746F6E733A205B0A2020202020202020202020202020202020202020202020207B0A20202020202020202020202020202020202020202020202020202020746578743A20616C6572746966792E64656661756C74732E676C6F73736172792E6F6B2C0A20';
wwv_flow_api.g_varchar2_table(1199) := '2020202020202020202020202020202020202020202020202020206B65793A206B6579732E4553432C0A20202020202020202020202020202020202020202020202020202020696E766F6B654F6E436C6F73653A20747275652C0A202020202020202020';
wwv_flow_api.g_varchar2_table(1200) := '20202020202020202020202020202020202020636C6173734E616D653A20616C6572746966792E64656661756C74732E7468656D652E6F6B2C0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1201) := '202020205D2C0A2020202020202020202020202020202020202020666F6375733A207B0A202020202020202020202020202020202020202020202020656C656D656E743A20302C0A20202020202020202020202020202020202020202020202073656C65';
wwv_flow_api.g_varchar2_table(1202) := '63743A2066616C73650A20202020202020202020202020202020202020207D2C0A20202020202020202020202020202020202020206F7074696F6E733A207B0A2020202020202020202020202020202020202020202020206D6178696D697A61626C653A';
wwv_flow_api.g_varchar2_table(1203) := '2066616C73652C0A202020202020202020202020202020202020202020202020726573697A61626C653A2066616C73650A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D3B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1204) := '20207D2C0A2020202020202020202020206275696C643A2066756E6374696F6E202829207B0A202020202020202020202020202020202F2F206E6F7468696E670A2020202020202020202020207D2C0A202020202020202020202020707265706172653A';
wwv_flow_api.g_varchar2_table(1205) := '2066756E6374696F6E202829207B0A202020202020202020202020202020202F2F6E6F7468696E670A2020202020202020202020207D2C0A2020202020202020202020207365744D6573736167653A2066756E6374696F6E20286D65737361676529207B';
wwv_flow_api.g_varchar2_table(1206) := '0A20202020202020202020202020202020746869732E736574436F6E74656E74286D657373616765293B0A2020202020202020202020207D2C0A20202020202020202020202073657474696E67733A207B0A202020202020202020202020202020206D65';
wwv_flow_api.g_varchar2_table(1207) := '73736167653A20756E646566696E65642C0A202020202020202020202020202020206F6E6F6B3A20756E646566696E65642C0A202020202020202020202020202020206C6162656C3A20756E646566696E65642C0A2020202020202020202020207D2C0A';
wwv_flow_api.g_varchar2_table(1208) := '20202020202020202020202073657474696E67557064617465643A2066756E6374696F6E20286B65792C206F6C6456616C75652C206E657756616C756529207B0A2020202020202020202020202020202073776974636820286B657929207B0A20202020';
wwv_flow_api.g_varchar2_table(1209) := '2020202020202020202020206361736520276D657373616765273A0A2020202020202020202020202020202020202020746869732E7365744D657373616765286E657756616C7565293B0A2020202020202020202020202020202020202020627265616B';
wwv_flow_api.g_varchar2_table(1210) := '3B0A202020202020202020202020202020206361736520276C6162656C273A0A202020202020202020202020202020202020202069662028746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E7429207B0A202020202020';
wwv_flow_api.g_varchar2_table(1211) := '202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E742E696E6E657248544D4C203D206E657756616C75653B0A20202020202020202020202020202020202020207D0A202020';
wwv_flow_api.g_varchar2_table(1212) := '2020202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A20202020202020202020202063616C6C6261636B3A2066756E6374696F6E2028636C6F73654576656E7429';
wwv_flow_api.g_varchar2_table(1213) := '207B0A2020202020202020202020202020202069662028747970656F6620746869732E67657428276F6E6F6B2729203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202020202020202020207661722072657475726E56616C7565';
wwv_flow_api.g_varchar2_table(1214) := '203D20746869732E67657428276F6E6F6B27292E63616C6C28746869732C20636C6F73654576656E74293B0A202020202020202020202020202020202020202069662028747970656F662072657475726E56616C756520213D3D2027756E646566696E65';
wwv_flow_api.g_varchar2_table(1215) := '642729207B0A202020202020202020202020202020202020202020202020636C6F73654576656E742E63616E63656C203D202172657475726E56616C75653B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1216) := '20207D0A2020202020202020202020207D0A20202020202020207D3B0A202020207D293B0A202020202F2A2A0A20202020202A20436F6E6669726D206469616C6F67206F626A6563740A20202020202A0A20202020202A09616C6572746966792E636F6E';
wwv_flow_api.g_varchar2_table(1217) := '6669726D286D657373616765293B0A20202020202A09616C6572746966792E636F6E6669726D286D6573736167652C206F6E6F6B293B0A20202020202A09616C6572746966792E636F6E6669726D286D6573736167652C206F6E6F6B2C206F6E63616E63';
wwv_flow_api.g_varchar2_table(1218) := '656C293B0A20202020202A09616C6572746966792E636F6E6669726D287469746C652C206D6573736167652C206F6E6F6B2C206F6E63616E63656C293B0A20202020202A2F0A20202020616C6572746966792E6469616C6F672827636F6E6669726D272C';
wwv_flow_api.g_varchar2_table(1219) := '2066756E6374696F6E202829207B0A0A2020202020202020766172206175746F436F6E6669726D203D207B0A20202020202020202020202074696D65723A206E756C6C2C0A202020202020202020202020696E6465783A206E756C6C2C0A202020202020';
wwv_flow_api.g_varchar2_table(1220) := '202020202020746578743A206E756C6C2C0A2020202020202020202020206475726174696F6E3A206E756C6C2C0A2020202020202020202020207461736B3A2066756E6374696F6E20286576656E742C2073656C6629207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1221) := '20202020206966202873656C662E69734F70656E282929207B0A202020202020202020202020202020202020202073656C662E5F5F696E7465726E616C2E627574746F6E735B6175746F436F6E6669726D2E696E6465785D2E656C656D656E742E696E6E';
wwv_flow_api.g_varchar2_table(1222) := '657248544D4C203D206175746F436F6E6669726D2E74657874202B202720282623383230373B27202B206175746F436F6E6669726D2E6475726174696F6E202B20272623383230373B2920273B0A20202020202020202020202020202020202020206175';
wwv_flow_api.g_varchar2_table(1223) := '746F436F6E6669726D2E6475726174696F6E202D3D20313B0A2020202020202020202020202020202020202020696620286175746F436F6E6669726D2E6475726174696F6E203D3D3D202D3129207B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1224) := '20202020636C6561724175746F436F6E6669726D2873656C66293B0A20202020202020202020202020202020202020202020202076617220627574746F6E203D2073656C662E5F5F696E7465726E616C2E627574746F6E735B6175746F436F6E6669726D';
wwv_flow_api.g_varchar2_table(1225) := '2E696E6465785D3B0A20202020202020202020202020202020202020202020202076617220636C6F73654576656E74203D20637265617465436C6F73654576656E74286175746F436F6E6669726D2E696E6465782C20627574746F6E293B0A0A20202020';
wwv_flow_api.g_varchar2_table(1226) := '202020202020202020202020202020202020202069662028747970656F662073656C662E63616C6C6261636B203D3D3D202766756E6374696F6E2729207B0A2020202020202020202020202020202020202020202020202020202073656C662E63616C6C';
wwv_flow_api.g_varchar2_table(1227) := '6261636B2E6170706C792873656C662C205B636C6F73654576656E745D293B0A2020202020202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020202020202F2F636C6F736520746865206469616C6F67';
wwv_flow_api.g_varchar2_table(1228) := '2E0A20202020202020202020202020202020202020202020202069662028636C6F73654576656E742E636C6F736520213D3D2066616C736529207B0A2020202020202020202020202020202020202020202020202020202073656C662E636C6F73652829';
wwv_flow_api.g_varchar2_table(1229) := '3B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020636C656172';
wwv_flow_api.g_varchar2_table(1230) := '4175746F436F6E6669726D2873656C66293B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D3B0A0A202020202020202066756E6374696F6E20636C6561724175746F436F6E6669726D2873656C';
wwv_flow_api.g_varchar2_table(1231) := '6629207B0A202020202020202020202020696620286175746F436F6E6669726D2E74696D657220213D3D206E756C6C29207B0A20202020202020202020202020202020636C656172496E74657276616C286175746F436F6E6669726D2E74696D6572293B';
wwv_flow_api.g_varchar2_table(1232) := '0A202020202020202020202020202020206175746F436F6E6669726D2E74696D6572203D206E756C6C3B0A2020202020202020202020202020202073656C662E5F5F696E7465726E616C2E627574746F6E735B6175746F436F6E6669726D2E696E646578';
wwv_flow_api.g_varchar2_table(1233) := '5D2E656C656D656E742E696E6E657248544D4C203D206175746F436F6E6669726D2E746578743B0A2020202020202020202020207D0A20202020202020207D0A0A202020202020202066756E6374696F6E2073746172744175746F436F6E6669726D2873';
wwv_flow_api.g_varchar2_table(1234) := '656C662C20696E6465782C206475726174696F6E29207B0A202020202020202020202020636C6561724175746F436F6E6669726D2873656C66293B0A2020202020202020202020206175746F436F6E6669726D2E6475726174696F6E203D206475726174';
wwv_flow_api.g_varchar2_table(1235) := '696F6E3B0A2020202020202020202020206175746F436F6E6669726D2E696E646578203D20696E6465783B0A2020202020202020202020206175746F436F6E6669726D2E74657874203D2073656C662E5F5F696E7465726E616C2E627574746F6E735B69';
wwv_flow_api.g_varchar2_table(1236) := '6E6465785D2E656C656D656E742E696E6E657248544D4C3B0A2020202020202020202020206175746F436F6E6669726D2E74696D6572203D20736574496E74657276616C2864656C65676174652873656C662C206175746F436F6E6669726D2E7461736B';
wwv_flow_api.g_varchar2_table(1237) := '292C2031303030293B0A2020202020202020202020206175746F436F6E6669726D2E7461736B286E756C6C2C2073656C66293B0A20202020202020207D0A0A0A202020202020202072657475726E207B0A2020202020202020202020206D61696E3A2066';
wwv_flow_api.g_varchar2_table(1238) := '756E6374696F6E20285F7469746C652C205F6D6573736167652C205F6F6E6F6B2C205F6F6E63616E63656C29207B0A20202020202020202020202020202020766172207469746C652C206D6573736167652C206F6E6F6B2C206F6E63616E63656C3B0A20';
wwv_flow_api.g_varchar2_table(1239) := '2020202020202020202020202020207377697463682028617267756D656E74732E6C656E67746829207B0A202020202020202020202020202020206361736520313A0A20202020202020202020202020202020202020206D657373616765203D205F7469';
wwv_flow_api.g_varchar2_table(1240) := '746C653B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520323A0A20202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A202020202020';
wwv_flow_api.g_varchar2_table(1241) := '20202020202020202020202020206F6E6F6B203D205F6D6573736167653B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520333A0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1242) := '20206D657373616765203D205F7469746C653B0A20202020202020202020202020202020202020206F6E6F6B203D205F6D6573736167653B0A20202020202020202020202020202020202020206F6E63616E63656C203D205F6F6E6F6B3B0A2020202020';
wwv_flow_api.g_varchar2_table(1243) := '202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520343A0A20202020202020202020202020202020202020207469746C65203D205F7469746C653B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1244) := '20206D657373616765203D205F6D6573736167653B0A20202020202020202020202020202020202020206F6E6F6B203D205F6F6E6F6B3B0A20202020202020202020202020202020202020206F6E63616E63656C203D205F6F6E63616E63656C3B0A2020';
wwv_flow_api.g_varchar2_table(1245) := '202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A20202020202020202020202020202020746869732E73657428277469746C65272C207469746C65293B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1246) := '20746869732E73657428276D657373616765272C206D657373616765293B0A20202020202020202020202020202020746869732E73657428276F6E6F6B272C206F6E6F6B293B0A20202020202020202020202020202020746869732E73657428276F6E63';
wwv_flow_api.g_varchar2_table(1247) := '616E63656C272C206F6E63616E63656C293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A20202020202020202020202073657475703A2066756E6374696F6E202829207B0A20202020';
wwv_flow_api.g_varchar2_table(1248) := '20202020202020202020202072657475726E207B0A2020202020202020202020202020202020202020627574746F6E733A205B0A2020202020202020202020202020202020202020202020207B0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1249) := '202020202020746578743A20616C6572746966792E64656661756C74732E676C6F73736172792E6F6B2C0A202020202020202020202020202020202020202020202020202020206B65793A206B6579732E454E5445522C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1250) := '20202020202020202020202020202020636C6173734E616D653A20616C6572746966792E64656661756C74732E7468656D652E6F6B2C0A2020202020202020202020202020202020202020202020207D2C0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1251) := '2020202020207B0A20202020202020202020202020202020202020202020202020202020746578743A20616C6572746966792E64656661756C74732E676C6F73736172792E63616E63656C2C0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1252) := '20202020206B65793A206B6579732E4553432C0A20202020202020202020202020202020202020202020202020202020696E766F6B654F6E436C6F73653A20747275652C0A20202020202020202020202020202020202020202020202020202020636C61';
wwv_flow_api.g_varchar2_table(1253) := '73734E616D653A20616C6572746966792E64656661756C74732E7468656D652E63616E63656C2C0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020205D2C0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1254) := '202020202020202020666F6375733A207B0A202020202020202020202020202020202020202020202020656C656D656E743A20302C0A20202020202020202020202020202020202020202020202073656C6563743A2066616C73650A2020202020202020';
wwv_flow_api.g_varchar2_table(1255) := '2020202020202020202020207D2C0A20202020202020202020202020202020202020206F7074696F6E733A207B0A2020202020202020202020202020202020202020202020206D6178696D697A61626C653A2066616C73652C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1256) := '2020202020202020202020202020726573697A61626C653A2066616C73650A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D3B0A2020202020202020202020207D2C0A20202020202020202020202062';
wwv_flow_api.g_varchar2_table(1257) := '75696C643A2066756E6374696F6E202829207B0A202020202020202020202020202020202F2F6E6F7468696E670A2020202020202020202020207D2C0A202020202020202020202020707265706172653A2066756E6374696F6E202829207B0A20202020';
wwv_flow_api.g_varchar2_table(1258) := '2020202020202020202020202F2F6E6F7468696E670A2020202020202020202020207D2C0A2020202020202020202020207365744D6573736167653A2066756E6374696F6E20286D65737361676529207B0A202020202020202020202020202020207468';
wwv_flow_api.g_varchar2_table(1259) := '69732E736574436F6E74656E74286D657373616765293B0A2020202020202020202020207D2C0A20202020202020202020202073657474696E67733A207B0A202020202020202020202020202020206D6573736167653A206E756C6C2C0A202020202020';
wwv_flow_api.g_varchar2_table(1260) := '202020202020202020206C6162656C733A206E756C6C2C0A202020202020202020202020202020206F6E6F6B3A206E756C6C2C0A202020202020202020202020202020206F6E63616E63656C3A206E756C6C2C0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1261) := '64656661756C74466F6375733A206E756C6C2C0A2020202020202020202020202020202072657665727365427574746F6E733A206E756C6C2C0A2020202020202020202020207D2C0A20202020202020202020202073657474696E67557064617465643A';
wwv_flow_api.g_varchar2_table(1262) := '2066756E6374696F6E20286B65792C206F6C6456616C75652C206E657756616C756529207B0A2020202020202020202020202020202073776974636820286B657929207B0A202020202020202020202020202020206361736520276D657373616765273A';
wwv_flow_api.g_varchar2_table(1263) := '0A2020202020202020202020202020202020202020746869732E7365744D657373616765286E657756616C7565293B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520276C6162';
wwv_flow_api.g_varchar2_table(1264) := '656C73273A0A202020202020202020202020202020202020202069662028276F6B2720696E206E657756616C756520262620746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E7429207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1265) := '202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E74657874203D206E657756616C75652E6F6B3B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E62';
wwv_flow_api.g_varchar2_table(1266) := '7574746F6E735B305D2E656C656D656E742E696E6E657248544D4C203D206E657756616C75652E6F6B3B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020696620282763616E63656C2720696E';
wwv_flow_api.g_varchar2_table(1267) := '206E657756616C756520262620746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E7429207B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B31';
wwv_flow_api.g_varchar2_table(1268) := '5D2E74657874203D206E657756616C75652E63616E63656C3B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E742E696E6E657248544D4C203D206E6577';
wwv_flow_api.g_varchar2_table(1269) := '56616C75652E63616E63656C3B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202063617365202772657665727365427574746F6E7327';
wwv_flow_api.g_varchar2_table(1270) := '3A0A2020202020202020202020202020202020202020696620286E657756616C7565203D3D3D207472756529207B0A202020202020202020202020202020202020202020202020746869732E656C656D656E74732E627574746F6E732E7072696D617279';
wwv_flow_api.g_varchar2_table(1271) := '2E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74293B0A20202020202020202020202020202020202020207D20656C7365207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1272) := '202020746869732E656C656D656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E74293B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1273) := '20207D0A2020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202063617365202764656661756C74466F637573273A0A2020202020202020202020202020202020202020746869732E5F5F696E746572';
wwv_flow_api.g_varchar2_table(1274) := '6E616C2E666F6375732E656C656D656E74203D206E657756616C7565203D3D3D20276F6B27203F2030203A20313B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1275) := '202020207D2C0A20202020202020202020202063616C6C6261636B3A2066756E6374696F6E2028636C6F73654576656E7429207B0A20202020202020202020202020202020636C6561724175746F436F6E6669726D2874686973293B0A20202020202020';
wwv_flow_api.g_varchar2_table(1276) := '2020202020202020207661722072657475726E56616C75653B0A202020202020202020202020202020207377697463682028636C6F73654576656E742E696E64657829207B0A202020202020202020202020202020206361736520303A0A202020202020';
wwv_flow_api.g_varchar2_table(1277) := '202020202020202020202020202069662028747970656F6620746869732E67657428276F6E6F6B2729203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202020202020202020202020202072657475726E56616C7565203D207468';
wwv_flow_api.g_varchar2_table(1278) := '69732E67657428276F6E6F6B27292E63616C6C28746869732C20636C6F73654576656E74293B0A20202020202020202020202020202020202020202020202069662028747970656F662072657475726E56616C756520213D3D2027756E646566696E6564';
wwv_flow_api.g_varchar2_table(1279) := '2729207B0A20202020202020202020202020202020202020202020202020202020636C6F73654576656E742E63616E63656C203D202172657475726E56616C75653B0A2020202020202020202020202020202020202020202020207D0A20202020202020';
wwv_flow_api.g_varchar2_table(1280) := '202020202020202020202020207D0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520313A0A202020202020202020202020202020202020202069662028747970656F6620746869';
wwv_flow_api.g_varchar2_table(1281) := '732E67657428276F6E63616E63656C2729203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202020202020202020202020202072657475726E56616C7565203D20746869732E67657428276F6E63616E63656C27292E63616C6C28';
wwv_flow_api.g_varchar2_table(1282) := '746869732C20636C6F73654576656E74293B0A20202020202020202020202020202020202020202020202069662028747970656F662072657475726E56616C756520213D3D2027756E646566696E65642729207B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1283) := '20202020202020202020202020636C6F73654576656E742E63616E63656C203D202172657475726E56616C75653B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A2020202020';
wwv_flow_api.g_varchar2_table(1284) := '202020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020206175746F4F6B3A2066756E6374696F6E20286475726174696F6E29207B0A202020';
wwv_flow_api.g_varchar2_table(1285) := '2020202020202020202020202073746172744175746F436F6E6669726D28746869732C20302C206475726174696F6E293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A202020202020';
wwv_flow_api.g_varchar2_table(1286) := '2020202020206175746F43616E63656C3A2066756E6374696F6E20286475726174696F6E29207B0A2020202020202020202020202020202073746172744175746F436F6E6669726D28746869732C20312C206475726174696F6E293B0A20202020202020';
wwv_flow_api.g_varchar2_table(1287) := '20202020202020202072657475726E20746869733B0A2020202020202020202020207D0A20202020202020207D3B0A202020207D293B0A202020202F2A2A0A20202020202A2050726F6D7074206469616C6F67206F626A6563740A20202020202A0A2020';
wwv_flow_api.g_varchar2_table(1288) := '2020202A20696E766F6B65642062793A0A20202020202A09616C6572746966792E70726F6D7074286D657373616765293B0A20202020202A09616C6572746966792E70726F6D7074286D6573736167652C2076616C7565293B0A20202020202A09616C65';
wwv_flow_api.g_varchar2_table(1289) := '72746966792E70726F6D7074286D6573736167652C2076616C75652C206F6E6F6B293B0A20202020202A09616C6572746966792E70726F6D7074286D6573736167652C2076616C75652C206F6E6F6B2C206F6E63616E63656C293B0A20202020202A0961';
wwv_flow_api.g_varchar2_table(1290) := '6C6572746966792E70726F6D7074287469746C652C206D6573736167652C2076616C75652C206F6E6F6B2C206F6E63616E63656C293B0A20202020202A2F0A20202020616C6572746966792E6469616C6F67282770726F6D7074272C2066756E6374696F';
wwv_flow_api.g_varchar2_table(1291) := '6E202829207B0A202020202020202076617220696E707574203D20646F63756D656E742E637265617465456C656D656E742827494E50555427293B0A20202020202020207661722070203D20646F63756D656E742E637265617465456C656D656E742827';
wwv_flow_api.g_varchar2_table(1292) := '5027293B0A202020202020202072657475726E207B0A2020202020202020202020206D61696E3A2066756E6374696F6E20285F7469746C652C205F6D6573736167652C205F76616C75652C205F6F6E6F6B2C205F6F6E63616E63656C29207B0A20202020';
wwv_flow_api.g_varchar2_table(1293) := '202020202020202020202020766172207469746C652C206D6573736167652C2076616C75652C206F6E6F6B2C206F6E63616E63656C3B0A202020202020202020202020202020207377697463682028617267756D656E74732E6C656E67746829207B0A20';
wwv_flow_api.g_varchar2_table(1294) := '2020202020202020202020202020206361736520313A0A20202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1295) := '202020206361736520323A0A20202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A202020202020202020202020202020202020202076616C7565203D205F6D6573736167653B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1296) := '2020202020202020627265616B3B0A202020202020202020202020202020206361736520333A0A20202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A202020202020202020202020202020202020202076616C';
wwv_flow_api.g_varchar2_table(1297) := '7565203D205F6D6573736167653B0A20202020202020202020202020202020202020206F6E6F6B203D205F76616C75653B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520343A';
wwv_flow_api.g_varchar2_table(1298) := '0A20202020202020202020202020202020202020206D657373616765203D205F7469746C653B0A202020202020202020202020202020202020202076616C7565203D205F6D6573736167653B0A20202020202020202020202020202020202020206F6E6F';
wwv_flow_api.g_varchar2_table(1299) := '6B203D205F76616C75653B0A20202020202020202020202020202020202020206F6E63616E63656C203D205F6F6E6F6B3B0A2020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020206361736520353A';
wwv_flow_api.g_varchar2_table(1300) := '0A20202020202020202020202020202020202020207469746C65203D205F7469746C653B0A20202020202020202020202020202020202020206D657373616765203D205F6D6573736167653B0A202020202020202020202020202020202020202076616C';
wwv_flow_api.g_varchar2_table(1301) := '7565203D205F76616C75653B0A20202020202020202020202020202020202020206F6E6F6B203D205F6F6E6F6B3B0A20202020202020202020202020202020202020206F6E63616E63656C203D205F6F6E63616E63656C3B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1302) := '202020202020202020627265616B3B0A202020202020202020202020202020207D0A20202020202020202020202020202020746869732E73657428277469746C65272C207469746C65293B0A20202020202020202020202020202020746869732E736574';
wwv_flow_api.g_varchar2_table(1303) := '28276D657373616765272C206D657373616765293B0A20202020202020202020202020202020746869732E736574282776616C7565272C2076616C7565293B0A20202020202020202020202020202020746869732E73657428276F6E6F6B272C206F6E6F';
wwv_flow_api.g_varchar2_table(1304) := '6B293B0A20202020202020202020202020202020746869732E73657428276F6E63616E63656C272C206F6E63616E63656C293B0A2020202020202020202020202020202072657475726E20746869733B0A2020202020202020202020207D2C0A20202020';
wwv_flow_api.g_varchar2_table(1305) := '202020202020202073657475703A2066756E6374696F6E202829207B0A2020202020202020202020202020202072657475726E207B0A2020202020202020202020202020202020202020627574746F6E733A205B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1306) := '2020202020202020207B0A20202020202020202020202020202020202020202020202020202020746578743A20616C6572746966792E64656661756C74732E676C6F73736172792E6F6B2C0A202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1307) := '202020206B65793A206B6579732E454E5445522C0A20202020202020202020202020202020202020202020202020202020636C6173734E616D653A20616C6572746966792E64656661756C74732E7468656D652E6F6B2C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1308) := '2020202020202020202020207D2C0A2020202020202020202020202020202020202020202020207B0A20202020202020202020202020202020202020202020202020202020746578743A20616C6572746966792E64656661756C74732E676C6F73736172';
wwv_flow_api.g_varchar2_table(1309) := '792E63616E63656C2C0A202020202020202020202020202020202020202020202020202020206B65793A206B6579732E4553432C0A20202020202020202020202020202020202020202020202020202020696E766F6B654F6E436C6F73653A2074727565';
wwv_flow_api.g_varchar2_table(1310) := '2C0A20202020202020202020202020202020202020202020202020202020636C6173734E616D653A20616C6572746966792E64656661756C74732E7468656D652E63616E63656C2C0A2020202020202020202020202020202020202020202020207D0A20';
wwv_flow_api.g_varchar2_table(1311) := '202020202020202020202020202020202020205D2C0A2020202020202020202020202020202020202020666F6375733A207B0A202020202020202020202020202020202020202020202020656C656D656E743A20696E7075742C0A202020202020202020';
wwv_flow_api.g_varchar2_table(1312) := '20202020202020202020202020202073656C6563743A20747275650A20202020202020202020202020202020202020207D2C0A20202020202020202020202020202020202020206F7074696F6E733A207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1313) := '2020202020206D6178696D697A61626C653A2066616C73652C0A202020202020202020202020202020202020202020202020726573697A61626C653A2066616C73650A20202020202020202020202020202020202020207D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1314) := '20202020207D3B0A2020202020202020202020207D2C0A2020202020202020202020206275696C643A2066756E6374696F6E202829207B0A20202020202020202020202020202020696E7075742E636C6173734E616D65203D20616C6572746966792E64';
wwv_flow_api.g_varchar2_table(1315) := '656661756C74732E7468656D652E696E7075743B0A20202020202020202020202020202020696E7075742E736574417474726962757465282774797065272C20277465787427293B0A20202020202020202020202020202020696E7075742E76616C7565';
wwv_flow_api.g_varchar2_table(1316) := '203D20746869732E676574282776616C756527293B0A20202020202020202020202020202020746869732E656C656D656E74732E636F6E74656E742E617070656E644368696C642870293B0A20202020202020202020202020202020746869732E656C65';
wwv_flow_api.g_varchar2_table(1317) := '6D656E74732E636F6E74656E742E617070656E644368696C6428696E707574293B0A2020202020202020202020207D2C0A202020202020202020202020707265706172653A2066756E6374696F6E202829207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1318) := '2F2F6E6F7468696E670A2020202020202020202020207D2C0A2020202020202020202020207365744D6573736167653A2066756E6374696F6E20286D65737361676529207B0A2020202020202020202020202020202069662028747970656F66206D6573';
wwv_flow_api.g_varchar2_table(1319) := '73616765203D3D3D2027737472696E672729207B0A2020202020202020202020202020202020202020636C656172436F6E74656E74732870293B0A2020202020202020202020202020202020202020702E696E6E657248544D4C203D206D657373616765';
wwv_flow_api.g_varchar2_table(1320) := '3B0A202020202020202020202020202020207D20656C736520696620286D65737361676520696E7374616E63656F662077696E646F772E48544D4C456C656D656E7420262620702E66697273744368696C6420213D3D206D65737361676529207B0A2020';
wwv_flow_api.g_varchar2_table(1321) := '202020202020202020202020202020202020636C656172436F6E74656E74732870293B0A2020202020202020202020202020202020202020702E617070656E644368696C64286D657373616765293B0A202020202020202020202020202020207D0A2020';
wwv_flow_api.g_varchar2_table(1322) := '202020202020202020207D2C0A20202020202020202020202073657474696E67733A207B0A202020202020202020202020202020206D6573736167653A20756E646566696E65642C0A202020202020202020202020202020206C6162656C733A20756E64';
wwv_flow_api.g_varchar2_table(1323) := '6566696E65642C0A202020202020202020202020202020206F6E6F6B3A20756E646566696E65642C0A202020202020202020202020202020206F6E63616E63656C3A20756E646566696E65642C0A2020202020202020202020202020202076616C75653A';
wwv_flow_api.g_varchar2_table(1324) := '2027272C0A20202020202020202020202020202020747970653A2774657874272C0A2020202020202020202020202020202072657665727365427574746F6E733A20756E646566696E65642C0A2020202020202020202020207D2C0A2020202020202020';
wwv_flow_api.g_varchar2_table(1325) := '2020202073657474696E67557064617465643A2066756E6374696F6E20286B65792C206F6C6456616C75652C206E657756616C756529207B0A2020202020202020202020202020202073776974636820286B657929207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1326) := '202020206361736520276D657373616765273A0A2020202020202020202020202020202020202020746869732E7365744D657373616765286E657756616C7565293B0A2020202020202020202020202020202020202020627265616B3B0A202020202020';
wwv_flow_api.g_varchar2_table(1327) := '2020202020202020202063617365202776616C7565273A0A2020202020202020202020202020202020202020696E7075742E76616C7565203D206E657756616C75653B0A2020202020202020202020202020202020202020627265616B3B0A2020202020';
wwv_flow_api.g_varchar2_table(1328) := '202020202020202020202063617365202774797065273A0A202020202020202020202020202020202020202073776974636820286E657756616C756529207B0A202020202020202020202020202020202020202063617365202774657874273A0A202020';
wwv_flow_api.g_varchar2_table(1329) := '2020202020202020202020202020202020636173652027636F6C6F72273A0A202020202020202020202020202020202020202063617365202764617465273A0A20202020202020202020202020202020202020206361736520276461746574696D652D6C';
wwv_flow_api.g_varchar2_table(1330) := '6F63616C273A0A2020202020202020202020202020202020202020636173652027656D61696C273A0A20202020202020202020202020202020202020206361736520276D6F6E7468273A0A20202020202020202020202020202020202020206361736520';
wwv_flow_api.g_varchar2_table(1331) := '276E756D626572273A0A202020202020202020202020202020202020202063617365202770617373776F7264273A0A2020202020202020202020202020202020202020636173652027736561726368273A0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1332) := '202063617365202774656C273A0A202020202020202020202020202020202020202063617365202774696D65273A0A20202020202020202020202020202020202020206361736520277765656B273A0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1333) := '20202020696E7075742E74797065203D206E657756616C75653B0A202020202020202020202020202020202020202020202020627265616B3B0A202020202020202020202020202020202020202064656661756C743A0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(1334) := '2020202020202020202020696E7075742E74797065203D202774657874273B0A202020202020202020202020202020202020202020202020627265616B3B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1335) := '2020202020627265616B3B0A202020202020202020202020202020206361736520276C6162656C73273A0A2020202020202020202020202020202020202020696620286E657756616C75652E6F6B20262620746869732E5F5F696E7465726E616C2E6275';
wwv_flow_api.g_varchar2_table(1336) := '74746F6E735B305D2E656C656D656E7429207B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E742E696E6E657248544D4C203D206E657756616C75652E';
wwv_flow_api.g_varchar2_table(1337) := '6F6B3B0A20202020202020202020202020202020202020207D0A2020202020202020202020202020202020202020696620286E657756616C75652E63616E63656C20262620746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D';
wwv_flow_api.g_varchar2_table(1338) := '656E7429207B0A202020202020202020202020202020202020202020202020746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E742E696E6E657248544D4C203D206E657756616C75652E63616E63656C3B0A2020202020';
wwv_flow_api.g_varchar2_table(1339) := '2020202020202020202020202020207D0A2020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202063617365202772657665727365427574746F6E73273A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1340) := '202020696620286E657756616C7565203D3D3D207472756529207B0A202020202020202020202020202020202020202020202020746869732E656C656D656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F';
wwv_flow_api.g_varchar2_table(1341) := '5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74293B0A20202020202020202020202020202020202020207D20656C7365207B0A202020202020202020202020202020202020202020202020746869732E656C656D656E74732E6275';
wwv_flow_api.g_varchar2_table(1342) := '74746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E74293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1343) := '2020202020627265616B3B0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A20202020202020202020202063616C6C6261636B3A2066756E6374696F6E2028636C6F73654576656E7429207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(1344) := '202020202020207661722072657475726E56616C75653B0A202020202020202020202020202020207377697463682028636C6F73654576656E742E696E64657829207B0A202020202020202020202020202020206361736520303A0A2020202020202020';
wwv_flow_api.g_varchar2_table(1345) := '202020202020202020202020746869732E73657474696E67732E76616C7565203D20696E7075742E76616C75653B0A202020202020202020202020202020202020202069662028747970656F6620746869732E67657428276F6E6F6B2729203D3D3D2027';
wwv_flow_api.g_varchar2_table(1346) := '66756E6374696F6E2729207B0A20202020202020202020202020202020202020202020202072657475726E56616C7565203D20746869732E67657428276F6E6F6B27292E63616C6C28746869732C20636C6F73654576656E742C20746869732E73657474';
wwv_flow_api.g_varchar2_table(1347) := '696E67732E76616C7565293B0A20202020202020202020202020202020202020202020202069662028747970656F662072657475726E56616C756520213D3D2027756E646566696E65642729207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1348) := '20202020202020636C6F73654576656E742E63616E63656C203D202172657475726E56616C75653B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(1349) := '202020202020202020627265616B3B0A202020202020202020202020202020206361736520313A0A202020202020202020202020202020202020202069662028747970656F6620746869732E67657428276F6E63616E63656C2729203D3D3D202766756E';
wwv_flow_api.g_varchar2_table(1350) := '6374696F6E2729207B0A20202020202020202020202020202020202020202020202072657475726E56616C7565203D20746869732E67657428276F6E63616E63656C27292E63616C6C28746869732C20636C6F73654576656E74293B0A20202020202020';
wwv_flow_api.g_varchar2_table(1351) := '202020202020202020202020202020202069662028747970656F662072657475726E56616C756520213D3D2027756E646566696E65642729207B0A20202020202020202020202020202020202020202020202020202020636C6F73654576656E742E6361';
wwv_flow_api.g_varchar2_table(1352) := '6E63656C203D202172657475726E56616C75653B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A202020202020202020202020202020202020202069662821636C6F73654576';
wwv_flow_api.g_varchar2_table(1353) := '656E742E63616E63656C297B0A202020202020202020202020202020202020202020202020696E7075742E76616C7565203D20746869732E73657474696E67732E76616C75653B0A20202020202020202020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(1354) := '2020202020202020202020202020627265616B3B0A202020202020202020202020202020207D0A2020202020202020202020207D0A20202020202020207D3B0A202020207D293B0A0A202020202F2F20436F6D6D6F6E4A530A2020202069662028207479';
wwv_flow_api.g_varchar2_table(1355) := '70656F66206D6F64756C65203D3D3D20276F626A6563742720262620747970656F66206D6F64756C652E6578706F727473203D3D3D20276F626A656374272029207B0A20202020202020206D6F64756C652E6578706F727473203D20616C657274696679';
wwv_flow_api.g_varchar2_table(1356) := '3B0A202020202F2F20414D440A202020207D20656C7365206966202820747970656F6620646566696E65203D3D3D202766756E6374696F6E2720262620646566696E652E616D6429207B0A2020202020202020646566696E6528205B5D2C2066756E6374';
wwv_flow_api.g_varchar2_table(1357) := '696F6E202829207B0A20202020202020202020202072657475726E20616C6572746966793B0A20202020202020207D20293B0A202020202F2F2077696E646F770A202020207D20656C73652069662028202177696E646F772E616C657274696679202920';
wwv_flow_api.g_varchar2_table(1358) := '7B0A202020202020202077696E646F772E616C657274696679203D20616C6572746966793B0A202020207D0A0A7D202820747970656F662077696E646F7720213D3D2027756E646566696E656427203F2077696E646F77203A2074686973202920293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92429430917845225)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'js/alertify.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2120616C6572746966796A73202D2076312E31302E30202D204D6F68616D6D616420596F756E6573203C4D6F68616D6D616440616C6572746966796A732E636F6D3E2028687474703A2F2F616C6572746966796A732E636F6D29202A2F0A2166756E';
wwv_flow_api.g_varchar2_table(2) := '6374696F6E2861297B2275736520737472696374223B66756E6374696F6E206228612C62297B612E636C6173734E616D652B3D2220222B627D66756E6374696F6E206328612C62297B666F722876617220633D612E636C6173734E616D652E73706C6974';
wwv_flow_api.g_varchar2_table(3) := '28222022292C643D622E73706C697428222022292C653D303B653C642E6C656E6774683B652B3D31297B76617220663D632E696E6465784F6628645B655D293B663E2D312626632E73706C69636528662C31297D612E636C6173734E616D653D632E6A6F';
wwv_flow_api.g_varchar2_table(4) := '696E28222022297D66756E6374696F6E206428297B72657475726E2272746C223D3D3D612E676574436F6D70757465645374796C6528646F63756D656E742E626F6479292E646972656374696F6E7D66756E6374696F6E206528297B72657475726E2064';
wwv_flow_api.g_varchar2_table(5) := '6F63756D656E742E646F63756D656E74456C656D656E742626646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F707C7C646F63756D656E742E626F64792E7363726F6C6C546F707D66756E6374696F6E206628297B7265';
wwv_flow_api.g_varchar2_table(6) := '7475726E20646F63756D656E742E646F63756D656E74456C656D656E742626646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C6566747C7C646F63756D656E742E626F64792E7363726F6C6C4C6566747D66756E6374696F';
wwv_flow_api.g_varchar2_table(7) := '6E20672861297B666F72283B612E6C6173744368696C643B29612E72656D6F76654368696C6428612E6C6173744368696C64297D66756E6374696F6E20682861297B6966286E756C6C3D3D3D612972657475726E20613B76617220623B69662841727261';
wwv_flow_api.g_varchar2_table(8) := '792E69734172726179286129297B623D5B5D3B666F722876617220633D303B633C612E6C656E6774683B632B3D3129622E70757368286828615B635D29293B72657475726E20627D6966286120696E7374616E63656F6620446174652972657475726E20';
wwv_flow_api.g_varchar2_table(9) := '6E6577204461746528612E67657454696D652829293B6966286120696E7374616E63656F66205265674578702972657475726E20623D6E65772052656745787028612E736F75726365292C622E676C6F62616C3D612E676C6F62616C2C622E69676E6F72';
wwv_flow_api.g_varchar2_table(10) := '65436173653D612E69676E6F7265436173652C622E6D756C74696C696E653D612E6D756C74696C696E652C622E6C617374496E6465783D612E6C617374496E6465782C623B696628226F626A656374223D3D747970656F662061297B623D7B7D3B666F72';
wwv_flow_api.g_varchar2_table(11) := '28766172206420696E206129612E6861734F776E50726F7065727479286429262628625B645D3D6828615B645D29293B72657475726E20627D72657475726E20617D66756E6374696F6E206928612C62297B76617220633D612E656C656D656E74732E72';
wwv_flow_api.g_varchar2_table(12) := '6F6F743B632E706172656E744E6F64652E72656D6F76654368696C642863292C64656C65746520612E656C656D656E74732C612E73657474696E67733D6828612E5F5F73657474696E6773292C612E5F5F696E69743D622C64656C65746520612E5F5F69';
wwv_flow_api.g_varchar2_table(13) := '6E7465726E616C7D66756E6374696F6E206A28612C62297B72657475726E2066756E6374696F6E28297B696628617267756D656E74732E6C656E6774683E30297B666F722876617220633D5B5D2C643D303B643C617267756D656E74732E6C656E677468';
wwv_flow_api.g_varchar2_table(14) := '3B642B3D3129632E7075736828617267756D656E74735B645D293B72657475726E20632E707573682861292C622E6170706C7928612C63297D72657475726E20622E6170706C7928612C5B6E756C6C2C615D297D7D66756E6374696F6E206B28612C6229';
wwv_flow_api.g_varchar2_table(15) := '7B72657475726E7B696E6465783A612C627574746F6E3A622C63616E63656C3A21317D7D66756E6374696F6E206C28612C62297B72657475726E2266756E6374696F6E223D3D747970656F6620622E6765742861293F622E6765742861292E63616C6C28';
wwv_flow_api.g_varchar2_table(16) := '62293A766F696420307D66756E6374696F6E206D28297B66756E6374696F6E206128612C62297B666F7228766172206320696E206229622E6861734F776E50726F7065727479286329262628615B635D3D625B635D293B72657475726E20617D66756E63';
wwv_flow_api.g_varchar2_table(17) := '74696F6E20622861297B76617220623D645B615D2E6469616C6F673B72657475726E206226262266756E6374696F6E223D3D747970656F6620622E5F5F696E69742626622E5F5F696E69742862292C627D66756E6374696F6E206328622C632C652C6629';
wwv_flow_api.g_varchar2_table(18) := '7B76617220673D7B6469616C6F673A6E756C6C2C666163746F72793A637D3B72657475726E20766F69642030213D3D66262628672E666163746F72793D66756E6374696F6E28297B72657475726E2061286E657720645B665D2E666163746F72792C6E65';
wwv_flow_api.g_varchar2_table(19) := '772063297D292C657C7C28672E6469616C6F673D61286E657720672E666163746F72792C7429292C645B625D3D677D76617220643D7B7D3B72657475726E7B64656661756C74733A6F2C6469616C6F673A66756E6374696F6E28642C652C662C67297B69';
wwv_flow_api.g_varchar2_table(20) := '66282266756E6374696F6E22213D747970656F6620652972657475726E20622864293B696628746869732E6861734F776E50726F7065727479286429297468726F77206E6577204572726F722822616C6572746966792E6469616C6F673A206E616D6520';
wwv_flow_api.g_varchar2_table(21) := '616C72656164792065786973747322293B76617220683D6328642C652C662C67293B663F746869735B645D3D66756E6374696F6E28297B696628303D3D3D617267756D656E74732E6C656E6774682972657475726E20682E6469616C6F673B7661722062';
wwv_flow_api.g_varchar2_table(22) := '3D61286E657720682E666163746F72792C74293B72657475726E206226262266756E6374696F6E223D3D747970656F6620622E5F5F696E69742626622E5F5F696E69742862292C622E6D61696E2E6170706C7928622C617267756D656E7473292C622E73';
wwv_flow_api.g_varchar2_table(23) := '686F772E6170706C792862297D3A746869735B645D3D66756E6374696F6E28297B696628682E6469616C6F6726262266756E6374696F6E223D3D747970656F6620682E6469616C6F672E5F5F696E69742626682E6469616C6F672E5F5F696E697428682E';
wwv_flow_api.g_varchar2_table(24) := '6469616C6F67292C303D3D3D617267756D656E74732E6C656E6774682972657475726E20682E6469616C6F673B76617220613D682E6469616C6F673B72657475726E20612E6D61696E2E6170706C7928682E6469616C6F672C617267756D656E7473292C';
wwv_flow_api.g_varchar2_table(25) := '612E73686F772E6170706C7928682E6469616C6F67297D7D2C636C6F7365416C6C3A66756E6374696F6E2861297B666F722876617220623D702E736C6963652830292C633D303B633C622E6C656E6774683B632B3D31297B76617220643D625B635D3B28';
wwv_flow_api.g_varchar2_table(26) := '766F696420303D3D3D617C7C61213D3D64292626642E636C6F736528297D7D2C73657474696E673A66756E6374696F6E28612C632C64297B696628226E6F746966696572223D3D3D612972657475726E20752E73657474696E6728632C64293B76617220';
wwv_flow_api.g_varchar2_table(27) := '653D622861293B72657475726E20653F652E73657474696E6728632C64293A766F696420307D2C7365743A66756E6374696F6E28612C622C63297B72657475726E20746869732E73657474696E6728612C622C63297D2C6765743A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(28) := '612C62297B72657475726E20746869732E73657474696E6728612C62297D2C6E6F746966793A66756E6374696F6E28612C622C632C64297B72657475726E20752E63726561746528622C64292E7075736828612C63297D2C6D6573736167653A66756E63';
wwv_flow_api.g_varchar2_table(29) := '74696F6E28612C622C63297B72657475726E20752E637265617465286E756C6C2C63292E7075736828612C62297D2C737563636573733A66756E6374696F6E28612C622C63297B72657475726E20752E637265617465282273756363657373222C63292E';
wwv_flow_api.g_varchar2_table(30) := '7075736828612C62297D2C6572726F723A66756E6374696F6E28612C622C63297B72657475726E20752E63726561746528226572726F72222C63292E7075736828612C62297D2C7761726E696E673A66756E6374696F6E28612C622C63297B7265747572';
wwv_flow_api.g_varchar2_table(31) := '6E20752E63726561746528227761726E696E67222C63292E7075736828612C62297D2C6469736D697373416C6C3A66756E6374696F6E28297B752E6469736D697373416C6C28297D7D7D766172206E3D7B454E5445523A31332C4553433A32372C46313A';
wwv_flow_api.g_varchar2_table(32) := '3131322C4631323A3132332C4C4546543A33372C52494748543A33397D2C6F3D7B6175746F52657365743A21302C62617369633A21312C636C6F7361626C653A21302C636C6F7361626C65427944696D6D65723A21302C6672616D656C6573733A21312C';
wwv_flow_api.g_varchar2_table(33) := '6D61696E7461696E466F6375733A21302C6D6178696D697A61626C653A21302C6D6F64616C3A21302C6D6F7661626C653A21302C6D6F7665426F756E6465643A21312C6F766572666C6F773A21302C70616464696E673A21302C70696E6E61626C653A21';
wwv_flow_api.g_varchar2_table(34) := '302C70696E6E65643A21302C70726576656E74426F647953686966743A21312C726573697A61626C653A21302C73746172744D6178696D697A65643A21312C7472616E736974696F6E3A2270756C7365222C6E6F7469666965723A7B64656C61793A352C';
wwv_flow_api.g_varchar2_table(35) := '706F736974696F6E3A22626F74746F6D2D7269676874222C636C6F7365427574746F6E3A21317D2C676C6F73736172793A7B7469746C653A22416C6572746966794A53222C6F6B3A224F4B222C63616E63656C3A2243616E63656C222C6163636370743A';
wwv_flow_api.g_varchar2_table(36) := '22416363657074222C64656E793A2244656E79222C636F6E6669726D3A22436F6E6669726D222C6465636C696E653A224465636C696E65222C636C6F73653A22436C6F7365222C6D6178696D697A653A224D6178696D697A65222C726573746F72653A22';
wwv_flow_api.g_varchar2_table(37) := '526573746F7265227D2C7468656D653A7B696E7075743A22616A732D696E707574222C6F6B3A22616A732D6F6B222C63616E63656C3A22616A732D63616E63656C227D7D2C703D5B5D2C713D66756E6374696F6E28297B72657475726E20646F63756D65';
wwv_flow_api.g_varchar2_table(38) := '6E742E6164644576656E744C697374656E65723F66756E6374696F6E28612C622C632C64297B612E6164644576656E744C697374656E657228622C632C643D3D3D2130297D3A646F63756D656E742E6174746163684576656E743F66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(39) := '612C622C63297B612E6174746163684576656E7428226F6E222B622C63297D3A766F696420307D28292C723D66756E6374696F6E28297B72657475726E20646F63756D656E742E72656D6F76654576656E744C697374656E65723F66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(40) := '612C622C632C64297B612E72656D6F76654576656E744C697374656E657228622C632C643D3D3D2130297D3A646F63756D656E742E6465746163684576656E743F66756E6374696F6E28612C622C63297B612E6465746163684576656E7428226F6E222B';
wwv_flow_api.g_varchar2_table(41) := '622C63297D3A766F696420307D28292C733D66756E6374696F6E28297B76617220612C622C633D21312C643D7B616E696D6174696F6E3A22616E696D6174696F6E656E64222C4F416E696D6174696F6E3A226F416E696D6174696F6E456E64206F616E69';
wwv_flow_api.g_varchar2_table(42) := '6D6174696F6E656E64222C6D73416E696D6174696F6E3A224D53416E696D6174696F6E456E64222C4D6F7A416E696D6174696F6E3A22616E696D6174696F6E656E64222C5765626B6974416E696D6174696F6E3A227765626B6974416E696D6174696F6E';
wwv_flow_api.g_varchar2_table(43) := '456E64227D3B666F72286120696E206429696628766F69642030213D3D646F63756D656E742E646F63756D656E74456C656D656E742E7374796C655B615D297B623D645B615D2C633D21303B627265616B7D72657475726E7B747970653A622C73757070';
wwv_flow_api.g_varchar2_table(44) := '6F727465643A637D7D28292C743D66756E6374696F6E28297B66756E6374696F6E206D2861297B69662821612E5F5F696E7465726E616C297B64656C65746520612E5F5F696E69742C612E5F5F73657474696E67737C7C28612E5F5F73657474696E6773';
wwv_flow_api.g_varchar2_table(45) := '3D6828612E73657474696E677329292C6E756C6C3D3D3D7A612626646F63756D656E742E626F64792E7365744174747269627574652822746162696E646578222C223022293B76617220633B2266756E6374696F6E223D3D747970656F6620612E736574';
wwv_flow_api.g_varchar2_table(46) := '75703F28633D612E736574757028292C632E6F7074696F6E733D632E6F7074696F6E737C7C7B7D2C632E666F6375733D632E666F6375737C7C7B7D293A633D7B627574746F6E733A5B5D2C666F6375733A7B656C656D656E743A6E756C6C2C73656C6563';
wwv_flow_api.g_varchar2_table(47) := '743A21317D2C6F7074696F6E733A7B7D7D2C226F626A65637422213D747970656F6620612E686F6F6B73262628612E686F6F6B733D7B7D293B76617220643D5B5D3B69662841727261792E6973417272617928632E627574746F6E732929666F72287661';
wwv_flow_api.g_varchar2_table(48) := '7220653D303B653C632E627574746F6E732E6C656E6774683B652B3D31297B76617220663D632E627574746F6E735B655D2C673D7B7D3B666F7228766172206920696E206629662E6861734F776E50726F7065727479286929262628675B695D3D665B69';
wwv_flow_api.g_varchar2_table(49) := '5D293B642E707573682867297D766172206B3D612E5F5F696E7465726E616C3D7B69734F70656E3A21312C616374697665456C656D656E743A646F63756D656E742E626F64792C74696D6572496E3A766F696420302C74696D65724F75743A766F696420';
wwv_flow_api.g_varchar2_table(50) := '302C627574746F6E733A642C666F6375733A632E666F6375732C6F7074696F6E733A7B7469746C653A766F696420302C6D6F64616C3A766F696420302C62617369633A766F696420302C6672616D656C6573733A766F696420302C70696E6E65643A766F';
wwv_flow_api.g_varchar2_table(51) := '696420302C6D6F7661626C653A766F696420302C6D6F7665426F756E6465643A766F696420302C726573697A61626C653A766F696420302C6175746F52657365743A766F696420302C636C6F7361626C653A766F696420302C636C6F7361626C65427944';
wwv_flow_api.g_varchar2_table(52) := '696D6D65723A766F696420302C6D6178696D697A61626C653A766F696420302C73746172744D6178696D697A65643A766F696420302C70696E6E61626C653A766F696420302C7472616E736974696F6E3A766F696420302C70616464696E673A766F6964';
wwv_flow_api.g_varchar2_table(53) := '20302C6F766572666C6F773A766F696420302C6F6E73686F773A766F696420302C6F6E636C6F73696E673A766F696420302C6F6E636C6F73653A766F696420302C6F6E666F6375733A766F696420302C6F6E6D6F76653A766F696420302C6F6E6D6F7665';
wwv_flow_api.g_varchar2_table(54) := '643A766F696420302C6F6E726573697A653A766F696420302C6F6E726573697A65643A766F696420302C6F6E6D6178696D697A653A766F696420302C6F6E6D6178696D697A65643A766F696420302C6F6E726573746F72653A766F696420302C6F6E7265';
wwv_flow_api.g_varchar2_table(55) := '73746F7265643A766F696420307D2C726573657448616E646C65723A766F696420302C626567696E4D6F766548616E646C65723A766F696420302C626567696E526573697A6548616E646C65723A766F696420302C6272696E67546F46726F6E7448616E';
wwv_flow_api.g_varchar2_table(56) := '646C65723A766F696420302C6D6F64616C436C69636B48616E646C65723A766F696420302C627574746F6E73436C69636B48616E646C65723A766F696420302C636F6D6D616E6473436C69636B48616E646C65723A766F696420302C7472616E73697469';
wwv_flow_api.g_varchar2_table(57) := '6F6E496E48616E646C65723A766F696420302C7472616E736974696F6E4F757448616E646C65723A766F696420302C64657374726F793A766F696420307D2C6C3D7B7D3B6C2E726F6F743D646F63756D656E742E637265617465456C656D656E74282264';
wwv_flow_api.g_varchar2_table(58) := '697622292C6C2E726F6F742E636C6173734E616D653D43612E626173652B2220222B43612E68696464656E2B2220222C6C2E726F6F742E696E6E657248544D4C3D42612E64696D6D65722B42612E6D6F64616C2C6C2E64696D6D65723D6C2E726F6F742E';
wwv_flow_api.g_varchar2_table(59) := '66697273744368696C642C6C2E6D6F64616C3D6C2E726F6F742E6C6173744368696C642C6C2E6D6F64616C2E696E6E657248544D4C3D42612E6469616C6F672C6C2E6469616C6F673D6C2E6D6F64616C2E66697273744368696C642C6C2E6469616C6F67';
wwv_flow_api.g_varchar2_table(60) := '2E696E6E657248544D4C3D42612E72657365742B42612E636F6D6D616E64732B42612E6865616465722B42612E626F64792B42612E666F6F7465722B42612E726573697A6548616E646C652B42612E72657365742C6C2E72657365743D5B5D2C6C2E7265';
wwv_flow_api.g_varchar2_table(61) := '7365742E70757368286C2E6469616C6F672E66697273744368696C64292C6C2E72657365742E70757368286C2E6469616C6F672E6C6173744368696C64292C6C2E636F6D6D616E64733D7B7D2C6C2E636F6D6D616E64732E636F6E7461696E65723D6C2E';
wwv_flow_api.g_varchar2_table(62) := '72657365745B305D2E6E6578745369626C696E672C6C2E636F6D6D616E64732E70696E3D6C2E636F6D6D616E64732E636F6E7461696E65722E66697273744368696C642C6C2E636F6D6D616E64732E6D6178696D697A653D6C2E636F6D6D616E64732E70';
wwv_flow_api.g_varchar2_table(63) := '696E2E6E6578745369626C696E672C6C2E636F6D6D616E64732E636C6F73653D6C2E636F6D6D616E64732E6D6178696D697A652E6E6578745369626C696E672C6C2E6865616465723D6C2E636F6D6D616E64732E636F6E7461696E65722E6E6578745369';
wwv_flow_api.g_varchar2_table(64) := '626C696E672C6C2E626F64793D6C2E6865616465722E6E6578745369626C696E672C6C2E626F64792E696E6E657248544D4C3D42612E636F6E74656E742C6C2E636F6E74656E743D6C2E626F64792E66697273744368696C642C6C2E666F6F7465723D6C';
wwv_flow_api.g_varchar2_table(65) := '2E626F64792E6E6578745369626C696E672C6C2E666F6F7465722E696E6E657248544D4C3D42612E627574746F6E732E617578696C696172792B42612E627574746F6E732E7072696D6172792C6C2E726573697A6548616E646C653D6C2E666F6F746572';
wwv_flow_api.g_varchar2_table(66) := '2E6E6578745369626C696E672C6C2E627574746F6E733D7B7D2C6C2E627574746F6E732E617578696C696172793D6C2E666F6F7465722E66697273744368696C642C6C2E627574746F6E732E7072696D6172793D6C2E627574746F6E732E617578696C69';
wwv_flow_api.g_varchar2_table(67) := '6172792E6E6578745369626C696E672C6C2E627574746F6E732E7072696D6172792E696E6E657248544D4C3D42612E627574746F6E2C6C2E627574746F6E54656D706C6174653D6C2E627574746F6E732E7072696D6172792E66697273744368696C642C';
wwv_flow_api.g_varchar2_table(68) := '6C2E627574746F6E732E7072696D6172792E72656D6F76654368696C64286C2E627574746F6E54656D706C617465293B666F7228766172206D3D303B6D3C612E5F5F696E7465726E616C2E627574746F6E732E6C656E6774683B6D2B3D31297B76617220';
wwv_flow_api.g_varchar2_table(69) := '6E3D612E5F5F696E7465726E616C2E627574746F6E735B6D5D3B79612E696E6465784F66286E2E6B6579293C30262679612E70757368286E2E6B6579292C6E2E656C656D656E743D6C2E627574746F6E54656D706C6174652E636C6F6E654E6F64652829';
wwv_flow_api.g_varchar2_table(70) := '2C6E2E656C656D656E742E696E6E657248544D4C3D6E2E746578742C22737472696E67223D3D747970656F66206E2E636C6173734E616D6526262222213D3D6E2E636C6173734E616D65262662286E2E656C656D656E742C6E2E636C6173734E616D6529';
wwv_flow_api.g_varchar2_table(71) := '3B666F7228766172206F20696E206E2E61747472732922636C6173734E616D6522213D3D6F26266E2E61747472732E6861734F776E50726F7065727479286F2926266E2E656C656D656E742E736574417474726962757465286F2C6E2E61747472735B6F';
wwv_flow_api.g_varchar2_table(72) := '5D293B22617578696C69617279223D3D3D6E2E73636F70653F6C2E627574746F6E732E617578696C696172792E617070656E644368696C64286E2E656C656D656E74293A6C2E627574746F6E732E7072696D6172792E617070656E644368696C64286E2E';
wwv_flow_api.g_varchar2_table(73) := '656C656D656E74297D612E656C656D656E74733D6C2C6B2E726573657448616E646C65723D6A28612C58292C6B2E626567696E4D6F766548616E646C65723D6A28612C6161292C6B2E626567696E526573697A6548616E646C65723D6A28612C6761292C';
wwv_flow_api.g_varchar2_table(74) := '6B2E6272696E67546F46726F6E7448616E646C65723D6A28612C42292C6B2E6D6F64616C436C69636B48616E646C65723D6A28612C52292C6B2E627574746F6E73436C69636B48616E646C65723D6A28612C54292C6B2E636F6D6D616E6473436C69636B';
wwv_flow_api.g_varchar2_table(75) := '48616E646C65723D6A28612C46292C6B2E7472616E736974696F6E496E48616E646C65723D6A28612C59292C6B2E7472616E736974696F6E4F757448616E646C65723D6A28612C5A293B666F7228766172207020696E206B2E6F7074696F6E7329766F69';
wwv_flow_api.g_varchar2_table(76) := '642030213D3D632E6F7074696F6E735B705D3F612E73657428702C632E6F7074696F6E735B705D293A762E64656661756C74732E6861734F776E50726F70657274792870293F612E73657428702C762E64656661756C74735B705D293A227469746C6522';
wwv_flow_api.g_varchar2_table(77) := '3D3D3D702626612E73657428702C762E64656661756C74732E676C6F73736172795B705D293B2266756E6374696F6E223D3D747970656F6620612E6275696C642626612E6275696C6428297D646F63756D656E742E626F64792E617070656E644368696C';
wwv_flow_api.g_varchar2_table(78) := '6428612E656C656D656E74732E726F6F74297D66756E6374696F6E206F28297B77613D6628292C78613D6528297D66756E6374696F6E207428297B612E7363726F6C6C546F2877612C7861297D66756E6374696F6E207528297B666F722876617220613D';
wwv_flow_api.g_varchar2_table(79) := '302C643D303B643C702E6C656E6774683B642B3D31297B76617220653D705B645D3B28652E69734D6F64616C28297C7C652E69734D6178696D697A6564282929262628612B3D31297D303D3D3D612626646F63756D656E742E626F64792E636C6173734E';
wwv_flow_api.g_varchar2_table(80) := '616D652E696E6465784F662843612E6E6F4F766572666C6F77293E3D303F286328646F63756D656E742E626F64792C43612E6E6F4F766572666C6F77292C7728213129293A613E302626646F63756D656E742E626F64792E636C6173734E616D652E696E';
wwv_flow_api.g_varchar2_table(81) := '6465784F662843612E6E6F4F766572666C6F77293C3026262877282130292C6228646F63756D656E742E626F64792C43612E6E6F4F766572666C6F7729297D66756E6374696F6E20772864297B762E64656661756C74732E70726576656E74426F647953';
wwv_flow_api.g_varchar2_table(82) := '686966742626646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4865696768743E646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874262628643F2845613D78612C44613D612E6765';
wwv_flow_api.g_varchar2_table(83) := '74436F6D70757465645374796C6528646F63756D656E742E626F6479292E746F702C6228646F63756D656E742E626F64792C43612E6669786564292C646F63756D656E742E626F64792E7374796C652E746F703D2D78612B22707822293A2878613D4561';
wwv_flow_api.g_varchar2_table(84) := '2C646F63756D656E742E626F64792E7374796C652E746F703D44612C6328646F63756D656E742E626F64792C43612E6669786564292C74282929297D66756E6374696F6E207828612C642C65297B22737472696E67223D3D747970656F66206526266328';
wwv_flow_api.g_varchar2_table(85) := '612E656C656D656E74732E726F6F742C43612E7072656669782B65292C6228612E656C656D656E74732E726F6F742C43612E7072656669782B64292C7A613D612E656C656D656E74732E726F6F742E6F666673657457696474687D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(86) := '792861297B612E67657428226D6F64616C22293F286328612E656C656D656E74732E726F6F742C43612E6D6F64656C657373292C612E69734F70656E282926262870612861292C4E2861292C75282929293A286228612E656C656D656E74732E726F6F74';
wwv_flow_api.g_varchar2_table(87) := '2C43612E6D6F64656C657373292C612E69734F70656E28292626286F612861292C4E2861292C75282929297D66756E6374696F6E207A2861297B612E6765742822626173696322293F6228612E656C656D656E74732E726F6F742C43612E626173696329';
wwv_flow_api.g_varchar2_table(88) := '3A6328612E656C656D656E74732E726F6F742C43612E6261736963297D66756E6374696F6E20412861297B612E67657428226672616D656C65737322293F6228612E656C656D656E74732E726F6F742C43612E6672616D656C657373293A6328612E656C';
wwv_flow_api.g_varchar2_table(89) := '656D656E74732E726F6F742C43612E6672616D656C657373297D66756E6374696F6E204228612C62297B666F722876617220633D702E696E6465784F662862292C643D632B313B643C702E6C656E6774683B642B3D3129696628705B645D2E69734D6F64';
wwv_flow_api.g_varchar2_table(90) := '616C28292972657475726E3B72657475726E20646F63756D656E742E626F64792E6C6173744368696C64213D3D622E656C656D656E74732E726F6F74262628646F63756D656E742E626F64792E617070656E644368696C6428622E656C656D656E74732E';
wwv_flow_api.g_varchar2_table(91) := '726F6F74292C702E73706C69636528702E696E6465784F662862292C31292C702E707573682862292C57286229292C21317D66756E6374696F6E204328612C642C652C66297B7377697463682864297B63617365227469746C65223A612E736574486561';
wwv_flow_api.g_varchar2_table(92) := '6465722866293B627265616B3B63617365226D6F64616C223A792861293B627265616B3B63617365226261736963223A7A2861293B627265616B3B63617365226672616D656C657373223A412861293B627265616B3B636173652270696E6E6564223A4F';
wwv_flow_api.g_varchar2_table(93) := '2861293B627265616B3B6361736522636C6F7361626C65223A512861293B627265616B3B63617365226D6178696D697A61626C65223A502861293B627265616B3B636173652270696E6E61626C65223A4B2861293B627265616B3B63617365226D6F7661';
wwv_flow_api.g_varchar2_table(94) := '626C65223A65612861293B627265616B3B6361736522726573697A61626C65223A6B612861293B627265616B3B63617365227472616E736974696F6E223A7828612C662C65293B627265616B3B636173652270616464696E67223A663F6328612E656C65';
wwv_flow_api.g_varchar2_table(95) := '6D656E74732E726F6F742C43612E6E6F50616464696E67293A612E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F662843612E6E6F50616464696E67293C3026266228612E656C656D656E74732E726F6F742C43612E6E6F50';
wwv_flow_api.g_varchar2_table(96) := '616464696E67293B627265616B3B63617365226F766572666C6F77223A663F6328612E656C656D656E74732E726F6F742C43612E6E6F4F766572666C6F77293A612E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F66284361';
wwv_flow_api.g_varchar2_table(97) := '2E6E6F4F766572666C6F77293C3026266228612E656C656D656E74732E726F6F742C43612E6E6F4F766572666C6F77293B627265616B3B63617365227472616E736974696F6E223A7828612C662C65297D2266756E6374696F6E223D3D747970656F6620';
wwv_flow_api.g_varchar2_table(98) := '612E686F6F6B732E6F6E7570646174652626612E686F6F6B732E6F6E7570646174652E63616C6C28612C642C652C66297D66756E6374696F6E204428612C622C632C642C65297B76617220663D7B6F703A766F696420302C6974656D733A5B5D7D3B6966';
wwv_flow_api.g_varchar2_table(99) := '2822756E646566696E6564223D3D747970656F662065262622737472696E67223D3D747970656F66206429662E6F703D22676574222C622E6861734F776E50726F70657274792864293F28662E666F756E643D21302C662E76616C75653D625B645D293A';
wwv_flow_api.g_varchar2_table(100) := '28662E666F756E643D21312C662E76616C75653D766F69642030293B656C73657B76617220673B696628662E6F703D22736574222C226F626A656374223D3D747970656F662064297B76617220683D643B666F7228766172206920696E206829622E6861';
wwv_flow_api.g_varchar2_table(101) := '734F776E50726F70657274792869293F28625B695D213D3D685B695D262628673D625B695D2C625B695D3D685B695D2C632E63616C6C28612C692C672C685B695D29292C662E6974656D732E70757368287B6B65793A692C76616C75653A685B695D2C66';
wwv_flow_api.g_varchar2_table(102) := '6F756E643A21307D29293A662E6974656D732E70757368287B6B65793A692C76616C75653A685B695D2C666F756E643A21317D297D656C73657B69662822737472696E6722213D747970656F662064297468726F77206E6577204572726F722822617267';
wwv_flow_api.g_varchar2_table(103) := '73206D757374206265206120737472696E67206F72206F626A65637422293B622E6861734F776E50726F70657274792864293F28625B645D213D3D65262628673D625B645D2C625B645D3D652C632E63616C6C28612C642C672C6529292C662E6974656D';
wwv_flow_api.g_varchar2_table(104) := '732E70757368287B6B65793A642C76616C75653A652C666F756E643A21307D29293A662E6974656D732E70757368287B6B65793A642C76616C75653A652C666F756E643A21317D297D7D72657475726E20667D66756E6374696F6E20452861297B766172';
wwv_flow_api.g_varchar2_table(105) := '20623B5328612C66756E6374696F6E2861297B72657475726E20623D612E696E766F6B654F6E436C6F73653D3D3D21307D292C21622626612E69734F70656E28292626612E636C6F736528297D66756E6374696F6E204628612C62297B76617220633D61';
wwv_flow_api.g_varchar2_table(106) := '2E737263456C656D656E747C7C612E7461726765743B7377697463682863297B6361736520622E656C656D656E74732E636F6D6D616E64732E70696E3A622E697350696E6E656428293F482862293A472862293B627265616B3B6361736520622E656C65';
wwv_flow_api.g_varchar2_table(107) := '6D656E74732E636F6D6D616E64732E6D6178696D697A653A622E69734D6178696D697A656428293F4A2862293A492862293B627265616B3B6361736520622E656C656D656E74732E636F6D6D616E64732E636C6F73653A452862297D72657475726E2131';
wwv_flow_api.g_varchar2_table(108) := '7D66756E6374696F6E20472861297B612E736574282270696E6E6564222C2130297D66756E6374696F6E20482861297B612E736574282270696E6E6564222C2131297D66756E6374696F6E20492861297B6C28226F6E6D6178696D697A65222C61292C62';
wwv_flow_api.g_varchar2_table(109) := '28612E656C656D656E74732E726F6F742C43612E6D6178696D697A6564292C612E69734F70656E282926267528292C6C28226F6E6D6178696D697A6564222C61297D66756E6374696F6E204A2861297B6C28226F6E726573746F7265222C61292C632861';
wwv_flow_api.g_varchar2_table(110) := '2E656C656D656E74732E726F6F742C43612E6D6178696D697A6564292C612E69734F70656E282926267528292C6C28226F6E726573746F726564222C61297D66756E6374696F6E204B2861297B612E676574282270696E6E61626C6522293F6228612E65';
wwv_flow_api.g_varchar2_table(111) := '6C656D656E74732E726F6F742C43612E70696E6E61626C65293A6328612E656C656D656E74732E726F6F742C43612E70696E6E61626C65297D66756E6374696F6E204C2861297B76617220623D6628293B612E656C656D656E74732E6D6F64616C2E7374';
wwv_flow_api.g_varchar2_table(112) := '796C652E6D617267696E546F703D6528292B227078222C612E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E4C6566743D622B227078222C612E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E52696768743D2D';
wwv_flow_api.g_varchar2_table(113) := '622B227078227D66756E6374696F6E204D2861297B76617220623D7061727365496E7428612E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E546F702C3130292C633D7061727365496E7428612E656C656D656E74732E6D6F64616C';
wwv_flow_api.g_varchar2_table(114) := '2E7374796C652E6D617267696E4C6566742C3130293B696628612E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E546F703D22222C612E656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E4C6566743D22222C612E';
wwv_flow_api.g_varchar2_table(115) := '656C656D656E74732E6D6F64616C2E7374796C652E6D617267696E52696768743D22222C612E69734F70656E2829297B76617220643D302C673D303B2222213D3D612E656C656D656E74732E6469616C6F672E7374796C652E746F70262628643D706172';
wwv_flow_api.g_varchar2_table(116) := '7365496E7428612E656C656D656E74732E6469616C6F672E7374796C652E746F702C313029292C612E656C656D656E74732E6469616C6F672E7374796C652E746F703D642B28622D652829292B227078222C2222213D3D612E656C656D656E74732E6469';
wwv_flow_api.g_varchar2_table(117) := '616C6F672E7374796C652E6C656674262628673D7061727365496E7428612E656C656D656E74732E6469616C6F672E7374796C652E6C6566742C313029292C612E656C656D656E74732E6469616C6F672E7374796C652E6C6566743D672B28632D662829';
wwv_flow_api.g_varchar2_table(118) := '292B227078227D7D66756E6374696F6E204E2861297B612E67657428226D6F64616C22297C7C612E676574282270696E6E656422293F4D2861293A4C2861297D66756E6374696F6E204F2861297B612E676574282270696E6E656422293F286328612E65';
wwv_flow_api.g_varchar2_table(119) := '6C656D656E74732E726F6F742C43612E756E70696E6E6564292C612E69734F70656E282926264D286129293A286228612E656C656D656E74732E726F6F742C43612E756E70696E6E6564292C612E69734F70656E2829262621612E69734D6F64616C2829';
wwv_flow_api.g_varchar2_table(120) := '26264C286129297D66756E6374696F6E20502861297B612E67657428226D6178696D697A61626C6522293F6228612E656C656D656E74732E726F6F742C43612E6D6178696D697A61626C65293A6328612E656C656D656E74732E726F6F742C43612E6D61';
wwv_flow_api.g_varchar2_table(121) := '78696D697A61626C65297D66756E6374696F6E20512861297B612E6765742822636C6F7361626C6522293F286228612E656C656D656E74732E726F6F742C43612E636C6F7361626C65292C7561286129293A286328612E656C656D656E74732E726F6F74';
wwv_flow_api.g_varchar2_table(122) := '2C43612E636C6F7361626C65292C7661286129297D66756E6374696F6E205228612C62297B76617220633D612E737263456C656D656E747C7C612E7461726765743B72657475726E2046617C7C63213D3D622E656C656D656E74732E6D6F64616C7C7C62';
wwv_flow_api.g_varchar2_table(123) := '2E6765742822636C6F7361626C65427944696D6D65722229213D3D21307C7C452862292C46613D21312C21317D66756E6374696F6E205328612C62297B666F722876617220633D303B633C612E5F5F696E7465726E616C2E627574746F6E732E6C656E67';
wwv_flow_api.g_varchar2_table(124) := '74683B632B3D31297B76617220643D612E5F5F696E7465726E616C2E627574746F6E735B635D3B69662821642E656C656D656E742E64697361626C6564262662286429297B76617220653D6B28632C64293B2266756E6374696F6E223D3D747970656F66';
wwv_flow_api.g_varchar2_table(125) := '20612E63616C6C6261636B2626612E63616C6C6261636B2E6170706C7928612C5B655D292C652E63616E63656C3D3D3D21312626612E636C6F736528293B627265616B7D7D7D66756E6374696F6E205428612C62297B76617220633D612E737263456C65';
wwv_flow_api.g_varchar2_table(126) := '6D656E747C7C612E7461726765743B5328622C66756E6374696F6E2861297B72657475726E20612E656C656D656E743D3D3D6326262847613D2130297D297D66756E6374696F6E20552861297B69662847612972657475726E20766F69642847613D2131';
wwv_flow_api.g_varchar2_table(127) := '293B76617220623D705B702E6C656E6774682D315D2C633D612E6B6579436F64653B72657475726E20303D3D3D622E5F5F696E7465726E616C2E627574746F6E732E6C656E6774682626633D3D3D6E2E4553432626622E6765742822636C6F7361626C65';
wwv_flow_api.g_varchar2_table(128) := '22293D3D3D21303F28452862292C2131293A79612E696E6465784F662863293E2D313F285328622C66756E6374696F6E2861297B72657475726E20612E6B65793D3D3D637D292C2131293A766F696420307D66756E6374696F6E20562861297B76617220';
wwv_flow_api.g_varchar2_table(129) := '623D705B702E6C656E6774682D315D2C633D612E6B6579436F64653B696628633D3D3D6E2E4C4546547C7C633D3D3D6E2E5249474854297B666F722876617220643D622E5F5F696E7465726E616C2E627574746F6E732C653D303B653C642E6C656E6774';
wwv_flow_api.g_varchar2_table(130) := '683B652B3D3129696628646F63756D656E742E616374697665456C656D656E743D3D3D645B655D2E656C656D656E74297377697463682863297B63617365206E2E4C4546543A72657475726E20766F696420645B28657C7C642E6C656E677468292D315D';
wwv_flow_api.g_varchar2_table(131) := '2E656C656D656E742E666F63757328293B63617365206E2E52494748543A72657475726E20766F696420645B28652B312925642E6C656E6774685D2E656C656D656E742E666F63757328297D7D656C736520696628633C6E2E4631322B312626633E6E2E';
wwv_flow_api.g_varchar2_table(132) := '46312D31262679612E696E6465784F662863293E2D312972657475726E20612E70726576656E7444656661756C7428292C612E73746F7050726F7061676174696F6E28292C5328622C66756E6374696F6E2861297B72657475726E20612E6B65793D3D3D';
wwv_flow_api.g_varchar2_table(133) := '637D292C21317D66756E6374696F6E205728612C62297B6966286229622E666F63757328293B656C73657B76617220633D612E5F5F696E7465726E616C2E666F6375732C643D632E656C656D656E743B73776974636828747970656F6620632E656C656D';
wwv_flow_api.g_varchar2_table(134) := '656E74297B63617365226E756D626572223A612E5F5F696E7465726E616C2E627574746F6E732E6C656E6774683E632E656C656D656E74262628643D612E6765742822626173696322293D3D3D21303F612E656C656D656E74732E72657365745B305D3A';
wwv_flow_api.g_varchar2_table(135) := '612E5F5F696E7465726E616C2E627574746F6E735B632E656C656D656E745D2E656C656D656E74293B627265616B3B6361736522737472696E67223A643D612E656C656D656E74732E626F64792E717565727953656C6563746F7228632E656C656D656E';
wwv_flow_api.g_varchar2_table(136) := '74293B627265616B3B636173652266756E6374696F6E223A643D632E656C656D656E742E63616C6C2861297D22756E646566696E656422213D747970656F66206426266E756C6C213D3D647C7C30213D3D612E5F5F696E7465726E616C2E627574746F6E';
wwv_flow_api.g_varchar2_table(137) := '732E6C656E6774687C7C28643D612E656C656D656E74732E72657365745B305D292C642626642E666F637573262628642E666F63757328292C632E73656C6563742626642E73656C6563742626642E73656C6563742829297D7D66756E6374696F6E2058';
wwv_flow_api.g_varchar2_table(138) := '28612C62297B696628216229666F722876617220633D702E6C656E6774682D313B633E2D313B632D3D3129696628705B635D2E69734D6F64616C2829297B623D705B635D3B627265616B7D696628622626622E69734D6F64616C2829297B76617220642C';
wwv_flow_api.g_varchar2_table(139) := '653D612E737263456C656D656E747C7C612E7461726765742C663D653D3D3D622E656C656D656E74732E72657365745B315D7C7C303D3D3D622E5F5F696E7465726E616C2E627574746F6E732E6C656E6774682626653D3D3D646F63756D656E742E626F';
wwv_flow_api.g_varchar2_table(140) := '64793B66262628622E67657428226D6178696D697A61626C6522293F643D622E656C656D656E74732E636F6D6D616E64732E6D6178696D697A653A622E6765742822636C6F7361626C652229262628643D622E656C656D656E74732E636F6D6D616E6473';
wwv_flow_api.g_varchar2_table(141) := '2E636C6F736529292C766F696420303D3D3D64262628226E756D626572223D3D747970656F6620622E5F5F696E7465726E616C2E666F6375732E656C656D656E743F653D3D3D622E656C656D656E74732E72657365745B305D3F643D622E656C656D656E';
wwv_flow_api.g_varchar2_table(142) := '74732E627574746F6E732E617578696C696172792E66697273744368696C647C7C622E656C656D656E74732E627574746F6E732E7072696D6172792E66697273744368696C643A66262628643D622E656C656D656E74732E72657365745B305D293A653D';
wwv_flow_api.g_varchar2_table(143) := '3D3D622E656C656D656E74732E72657365745B305D262628643D622E656C656D656E74732E627574746F6E732E7072696D6172792E6C6173744368696C647C7C622E656C656D656E74732E627574746F6E732E617578696C696172792E6C617374436869';
wwv_flow_api.g_varchar2_table(144) := '6C6429292C5728622C64297D7D66756E6374696F6E205928612C62297B636C65617254696D656F757428622E5F5F696E7465726E616C2E74696D6572496E292C572862292C7428292C47613D21312C6C28226F6E666F637573222C62292C7228622E656C';
wwv_flow_api.g_varchar2_table(145) := '656D656E74732E6469616C6F672C732E747970652C622E5F5F696E7465726E616C2E7472616E736974696F6E496E48616E646C6572292C6328622E656C656D656E74732E726F6F742C43612E616E696D6174696F6E496E297D66756E6374696F6E205A28';
wwv_flow_api.g_varchar2_table(146) := '612C62297B636C65617254696D656F757428622E5F5F696E7465726E616C2E74696D65724F7574292C7228622E656C656D656E74732E6469616C6F672C732E747970652C622E5F5F696E7465726E616C2E7472616E736974696F6E4F757448616E646C65';
wwv_flow_api.g_varchar2_table(147) := '72292C64612862292C6A612862292C622E69734D6178696D697A65642829262621622E676574282273746172744D6178696D697A6564222926264A2862292C762E64656661756C74732E6D61696E7461696E466F6375732626622E5F5F696E7465726E61';
wwv_flow_api.g_varchar2_table(148) := '6C2E616374697665456C656D656E74262628622E5F5F696E7465726E616C2E616374697665456C656D656E742E666F63757328292C622E5F5F696E7465726E616C2E616374697665456C656D656E743D6E756C6C292C2266756E6374696F6E223D3D7479';
wwv_flow_api.g_varchar2_table(149) := '70656F6620622E5F5F696E7465726E616C2E64657374726F792626622E5F5F696E7465726E616C2E64657374726F792E6170706C792862297D66756E6374696F6E202428612C62297B76617220633D615B4B615D2D49612C643D615B4C615D2D4A613B4E';
wwv_flow_api.g_varchar2_table(150) := '61262628642D3D646F63756D656E742E626F64792E7363726F6C6C546F70292C622E7374796C652E6C6566743D632B227078222C622E7374796C652E746F703D642B227078227D66756E6374696F6E205F28612C62297B76617220633D615B4B615D2D49';
wwv_flow_api.g_varchar2_table(151) := '612C643D615B4C615D2D4A613B4E61262628642D3D646F63756D656E742E626F64792E7363726F6C6C546F70292C622E7374796C652E6C6566743D4D6174682E6D696E284D612E6D61784C6566742C4D6174682E6D6178284D612E6D696E4C6566742C63';
wwv_flow_api.g_varchar2_table(152) := '29292B227078222C4E613F622E7374796C652E746F703D4D6174682E6D696E284D612E6D6178546F702C4D6174682E6D6178284D612E6D696E546F702C6429292B227078223A622E7374796C652E746F703D4D6174682E6D6178284D612E6D696E546F70';
wwv_flow_api.g_varchar2_table(153) := '2C64292B227078227D66756E6374696F6E20616128612C63297B6966286E756C6C3D3D3D5061262621632E69734D6178696D697A656428292626632E67657428226D6F7661626C652229297B76617220642C653D302C663D303B69662822746F75636873';
wwv_flow_api.g_varchar2_table(154) := '74617274223D3D3D612E747970653F28612E70726576656E7444656661756C7428292C643D612E746172676574546F75636865735B305D2C4B613D22636C69656E7458222C4C613D22636C69656E745922293A303D3D3D612E627574746F6E262628643D';
wwv_flow_api.g_varchar2_table(155) := '61292C64297B76617220673D632E656C656D656E74732E6469616C6F673B6966286228672C43612E63617074757265292C672E7374796C652E6C656674262628653D7061727365496E7428672E7374796C652E6C6566742C313029292C672E7374796C65';
wwv_flow_api.g_varchar2_table(156) := '2E746F70262628663D7061727365496E7428672E7374796C652E746F702C313029292C49613D645B4B615D2D652C4A613D645B4C615D2D662C632E69734D6F64616C28293F4A612B3D632E656C656D656E74732E6D6F64616C2E7363726F6C6C546F703A';
wwv_flow_api.g_varchar2_table(157) := '632E697350696E6E656428292626284A612D3D646F63756D656E742E626F64792E7363726F6C6C546F70292C632E67657428226D6F7665426F756E6465642229297B76617220683D672C693D2D652C6A3D2D663B646F20692B3D682E6F66667365744C65';
wwv_flow_api.g_varchar2_table(158) := '66742C6A2B3D682E6F6666736574546F703B7768696C6528683D682E6F6666736574506172656E74293B4D613D7B6D61784C6566743A692C6D696E4C6566743A2D692C6D6178546F703A646F63756D656E742E646F63756D656E74456C656D656E742E63';
wwv_flow_api.g_varchar2_table(159) := '6C69656E744865696768742D672E636C69656E744865696768742D6A2C6D696E546F703A2D6A7D2C4F613D5F7D656C7365204D613D6E756C6C2C4F613D243B72657475726E206C28226F6E6D6F7665222C63292C4E613D21632E69734D6F64616C282926';
wwv_flow_api.g_varchar2_table(160) := '26632E697350696E6E656428292C48613D632C4F6128642C67292C6228646F63756D656E742E626F64792C43612E6E6F53656C656374696F6E292C21317D7D7D66756E6374696F6E2062612861297B6966284861297B76617220623B22746F7563686D6F';
wwv_flow_api.g_varchar2_table(161) := '7665223D3D3D612E747970653F28612E70726576656E7444656661756C7428292C623D612E746172676574546F75636865735B305D293A303D3D3D612E627574746F6E262628623D61292C6226264F6128622C48612E656C656D656E74732E6469616C6F';
wwv_flow_api.g_varchar2_table(162) := '67297D7D66756E6374696F6E20636128297B6966284861297B76617220613D48613B48613D4D613D6E756C6C2C6328646F63756D656E742E626F64792C43612E6E6F53656C656374696F6E292C6328612E656C656D656E74732E6469616C6F672C43612E';
wwv_flow_api.g_varchar2_table(163) := '63617074757265292C6C28226F6E6D6F766564222C61297D7D66756E6374696F6E2064612861297B48613D6E756C6C3B76617220623D612E656C656D656E74732E6469616C6F673B622E7374796C652E6C6566743D622E7374796C652E746F703D22227D';
wwv_flow_api.g_varchar2_table(164) := '66756E6374696F6E2065612861297B612E67657428226D6F7661626C6522293F286228612E656C656D656E74732E726F6F742C43612E6D6F7661626C65292C612E69734F70656E282926267161286129293A2864612861292C6328612E656C656D656E74';
wwv_flow_api.g_varchar2_table(165) := '732E726F6F742C43612E6D6F7661626C65292C612E69734F70656E282926267261286129297D66756E6374696F6E20666128612C622C63297B76617220653D622C663D302C673D303B646F20662B3D652E6F66667365744C6566742C672B3D652E6F6666';
wwv_flow_api.g_varchar2_table(166) := '736574546F703B7768696C6528653D652E6F6666736574506172656E74293B76617220682C693B633D3D3D21303F28683D612E70616765582C693D612E7061676559293A28683D612E636C69656E74582C693D612E636C69656E7459293B766172206A3D';
wwv_flow_api.g_varchar2_table(167) := '6428293B6966286A262628683D646F63756D656E742E626F64792E6F666673657457696474682D682C69734E614E285161297C7C28663D646F63756D656E742E626F64792E6F666673657457696474682D662D622E6F6666736574576964746829292C62';
wwv_flow_api.g_varchar2_table(168) := '2E7374796C652E6865696768743D692D672B54612B227078222C622E7374796C652E77696474683D682D662B54612B227078222C2169734E614E28516129297B766172206B3D2E352A4D6174682E61627328622E6F666673657457696474682D5261293B';
wwv_flow_api.g_varchar2_table(169) := '6A2626286B2A3D2D31292C622E6F666673657457696474683E52613F622E7374796C652E6C6566743D51612B6B2B227078223A622E6F666673657457696474683E3D5361262628622E7374796C652E6C6566743D51612D6B2B22707822297D7D66756E63';
wwv_flow_api.g_varchar2_table(170) := '74696F6E20676128612C63297B69662821632E69734D6178696D697A65642829297B76617220643B69662822746F7563687374617274223D3D3D612E747970653F28612E70726576656E7444656661756C7428292C643D612E746172676574546F756368';
wwv_flow_api.g_varchar2_table(171) := '65735B305D293A303D3D3D612E627574746F6E262628643D61292C64297B6C28226F6E726573697A65222C63292C50613D632C54613D632E656C656D656E74732E726573697A6548616E646C652E6F66667365744865696768742F323B76617220653D63';
wwv_flow_api.g_varchar2_table(172) := '2E656C656D656E74732E6469616C6F673B72657475726E206228652C43612E63617074757265292C51613D7061727365496E7428652E7374796C652E6C6566742C3130292C652E7374796C652E6865696768743D652E6F66667365744865696768742B22';
wwv_flow_api.g_varchar2_table(173) := '7078222C652E7374796C652E6D696E4865696768743D632E656C656D656E74732E6865616465722E6F66667365744865696768742B632E656C656D656E74732E666F6F7465722E6F66667365744865696768742B227078222C652E7374796C652E776964';
wwv_flow_api.g_varchar2_table(174) := '74683D2852613D652E6F66667365745769647468292B227078222C226E6F6E6522213D3D652E7374796C652E6D61785769647468262628652E7374796C652E6D696E57696474683D2853613D652E6F66667365745769647468292B22707822292C652E73';
wwv_flow_api.g_varchar2_table(175) := '74796C652E6D617857696474683D226E6F6E65222C6228646F63756D656E742E626F64792C43612E6E6F53656C656374696F6E292C21317D7D7D66756E6374696F6E2068612861297B6966285061297B76617220623B22746F7563686D6F7665223D3D3D';
wwv_flow_api.g_varchar2_table(176) := '612E747970653F28612E70726576656E7444656661756C7428292C623D612E746172676574546F75636865735B305D293A303D3D3D612E627574746F6E262628623D61292C622626666128622C50612E656C656D656E74732E6469616C6F672C2150612E';
wwv_flow_api.g_varchar2_table(177) := '67657428226D6F64616C222926262150612E676574282270696E6E65642229297D7D66756E6374696F6E20696128297B6966285061297B76617220613D50613B50613D6E756C6C2C6328646F63756D656E742E626F64792C43612E6E6F53656C65637469';
wwv_flow_api.g_varchar2_table(178) := '6F6E292C6328612E656C656D656E74732E6469616C6F672C43612E63617074757265292C46613D21302C6C28226F6E726573697A6564222C61297D7D66756E6374696F6E206A612861297B50613D6E756C6C3B76617220623D612E656C656D656E74732E';
wwv_flow_api.g_varchar2_table(179) := '6469616C6F673B226E6F6E65223D3D3D622E7374796C652E6D61785769647468262628622E7374796C652E6D617857696474683D622E7374796C652E6D696E57696474683D622E7374796C652E77696474683D622E7374796C652E6865696768743D622E';
wwv_flow_api.g_varchar2_table(180) := '7374796C652E6D696E4865696768743D622E7374796C652E6C6566743D22222C51613D4E756D6265722E4E616E2C52613D53613D54613D30297D66756E6374696F6E206B612861297B612E6765742822726573697A61626C6522293F286228612E656C65';
wwv_flow_api.g_varchar2_table(181) := '6D656E74732E726F6F742C43612E726573697A61626C65292C612E69734F70656E282926267361286129293A286A612861292C6328612E656C656D656E74732E726F6F742C43612E726573697A61626C65292C612E69734F70656E282926267461286129';
wwv_flow_api.g_varchar2_table(182) := '297D66756E6374696F6E206C6128297B666F722876617220613D303B613C702E6C656E6774683B612B3D31297B76617220623D705B615D3B622E67657428226175746F5265736574222926262864612862292C6A61286229297D7D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(183) := '6D612862297B313D3D3D702E6C656E6774682626287128612C22726573697A65222C6C61292C7128646F63756D656E742E626F64792C226B65797570222C55292C7128646F63756D656E742E626F64792C226B6579646F776E222C56292C7128646F6375';
wwv_flow_api.g_varchar2_table(184) := '6D656E742E626F64792C22666F637573222C58292C7128646F63756D656E742E646F63756D656E74456C656D656E742C226D6F7573656D6F7665222C6261292C7128646F63756D656E742E646F63756D656E74456C656D656E742C22746F7563686D6F76';
wwv_flow_api.g_varchar2_table(185) := '65222C6261292C7128646F63756D656E742E646F63756D656E74456C656D656E742C226D6F7573657570222C6361292C7128646F63756D656E742E646F63756D656E74456C656D656E742C22746F756368656E64222C6361292C7128646F63756D656E74';
wwv_flow_api.g_varchar2_table(186) := '2E646F63756D656E74456C656D656E742C226D6F7573656D6F7665222C6861292C7128646F63756D656E742E646F63756D656E74456C656D656E742C22746F7563686D6F7665222C6861292C7128646F63756D656E742E646F63756D656E74456C656D65';
wwv_flow_api.g_varchar2_table(187) := '6E742C226D6F7573657570222C6961292C7128646F63756D656E742E646F63756D656E74456C656D656E742C22746F756368656E64222C696129292C7128622E656C656D656E74732E636F6D6D616E64732E636F6E7461696E65722C22636C69636B222C';
wwv_flow_api.g_varchar2_table(188) := '622E5F5F696E7465726E616C2E636F6D6D616E6473436C69636B48616E646C6572292C7128622E656C656D656E74732E666F6F7465722C22636C69636B222C622E5F5F696E7465726E616C2E627574746F6E73436C69636B48616E646C6572292C712862';
wwv_flow_api.g_varchar2_table(189) := '2E656C656D656E74732E72657365745B305D2C22666F637573222C622E5F5F696E7465726E616C2E726573657448616E646C6572292C7128622E656C656D656E74732E72657365745B315D2C22666F637573222C622E5F5F696E7465726E616C2E726573';
wwv_flow_api.g_varchar2_table(190) := '657448616E646C6572292C47613D21302C7128622E656C656D656E74732E6469616C6F672C732E747970652C622E5F5F696E7465726E616C2E7472616E736974696F6E496E48616E646C6572292C622E67657428226D6F64616C22297C7C6F612862292C';
wwv_flow_api.g_varchar2_table(191) := '622E6765742822726573697A61626C652229262673612862292C622E67657428226D6F7661626C652229262671612862297D66756E6374696F6E206E612862297B313D3D3D702E6C656E6774682626287228612C22726573697A65222C6C61292C722864';
wwv_flow_api.g_varchar2_table(192) := '6F63756D656E742E626F64792C226B65797570222C55292C7228646F63756D656E742E626F64792C226B6579646F776E222C56292C7228646F63756D656E742E626F64792C22666F637573222C58292C7228646F63756D656E742E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(193) := '6C656D656E742C226D6F7573656D6F7665222C6261292C7228646F63756D656E742E646F63756D656E74456C656D656E742C226D6F7573657570222C6361292C7228646F63756D656E742E646F63756D656E74456C656D656E742C226D6F7573656D6F76';
wwv_flow_api.g_varchar2_table(194) := '65222C6861292C7228646F63756D656E742E646F63756D656E74456C656D656E742C226D6F7573657570222C696129292C7228622E656C656D656E74732E636F6D6D616E64732E636F6E7461696E65722C22636C69636B222C622E5F5F696E7465726E61';
wwv_flow_api.g_varchar2_table(195) := '6C2E636F6D6D616E6473436C69636B48616E646C6572292C7228622E656C656D656E74732E666F6F7465722C22636C69636B222C622E5F5F696E7465726E616C2E627574746F6E73436C69636B48616E646C6572292C7228622E656C656D656E74732E72';
wwv_flow_api.g_varchar2_table(196) := '657365745B305D2C22666F637573222C622E5F5F696E7465726E616C2E726573657448616E646C6572292C7228622E656C656D656E74732E72657365745B315D2C22666F637573222C622E5F5F696E7465726E616C2E726573657448616E646C6572292C';
wwv_flow_api.g_varchar2_table(197) := '7128622E656C656D656E74732E6469616C6F672C732E747970652C622E5F5F696E7465726E616C2E7472616E736974696F6E4F757448616E646C6572292C622E67657428226D6F64616C22297C7C70612862292C622E67657428226D6F7661626C652229';
wwv_flow_api.g_varchar2_table(198) := '262672612862292C622E6765742822726573697A61626C652229262674612862297D66756E6374696F6E206F612861297B7128612E656C656D656E74732E6469616C6F672C22666F637573222C612E5F5F696E7465726E616C2E6272696E67546F46726F';
wwv_flow_api.g_varchar2_table(199) := '6E7448616E646C65722C2130297D66756E6374696F6E2070612861297B7228612E656C656D656E74732E6469616C6F672C22666F637573222C612E5F5F696E7465726E616C2E6272696E67546F46726F6E7448616E646C65722C2130297D66756E637469';
wwv_flow_api.g_varchar2_table(200) := '6F6E2071612861297B7128612E656C656D656E74732E6865616465722C226D6F757365646F776E222C612E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572292C7128612E656C656D656E74732E6865616465722C22746F7563687374';
wwv_flow_api.g_varchar2_table(201) := '617274222C612E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572297D66756E6374696F6E2072612861297B7228612E656C656D656E74732E6865616465722C226D6F757365646F776E222C612E5F5F696E7465726E616C2E62656769';
wwv_flow_api.g_varchar2_table(202) := '6E4D6F766548616E646C6572292C7228612E656C656D656E74732E6865616465722C22746F7563687374617274222C612E5F5F696E7465726E616C2E626567696E4D6F766548616E646C6572297D66756E6374696F6E2073612861297B7128612E656C65';
wwv_flow_api.g_varchar2_table(203) := '6D656E74732E726573697A6548616E646C652C226D6F757365646F776E222C612E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572292C7128612E656C656D656E74732E726573697A6548616E646C652C22746F75636873746172';
wwv_flow_api.g_varchar2_table(204) := '74222C612E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572297D66756E6374696F6E2074612861297B7228612E656C656D656E74732E726573697A6548616E646C652C226D6F757365646F776E222C612E5F5F696E7465726E61';
wwv_flow_api.g_varchar2_table(205) := '6C2E626567696E526573697A6548616E646C6572292C7228612E656C656D656E74732E726573697A6548616E646C652C22746F7563687374617274222C612E5F5F696E7465726E616C2E626567696E526573697A6548616E646C6572297D66756E637469';
wwv_flow_api.g_varchar2_table(206) := '6F6E2075612861297B7128612E656C656D656E74732E6D6F64616C2C22636C69636B222C612E5F5F696E7465726E616C2E6D6F64616C436C69636B48616E646C6572297D66756E6374696F6E2076612861297B7228612E656C656D656E74732E6D6F6461';
wwv_flow_api.g_varchar2_table(207) := '6C2C22636C69636B222C612E5F5F696E7465726E616C2E6D6F64616C436C69636B48616E646C6572297D7661722077612C78612C79613D5B5D2C7A613D6E756C6C2C41613D612E6E6176696761746F722E757365724167656E742E696E6465784F662822';
wwv_flow_api.g_varchar2_table(208) := '53616661726922293E2D312626612E6E6176696761746F722E757365724167656E742E696E6465784F6628224368726F6D6522293C302C42613D7B64696D6D65723A273C64697620636C6173733D22616A732D64696D6D6572223E3C2F6469763E272C6D';
wwv_flow_api.g_varchar2_table(209) := '6F64616C3A273C64697620636C6173733D22616A732D6D6F64616C2220746162696E6465783D2230223E3C2F6469763E272C6469616C6F673A273C64697620636C6173733D22616A732D6469616C6F672220746162696E6465783D2230223E3C2F646976';
wwv_flow_api.g_varchar2_table(210) := '3E272C72657365743A273C627574746F6E20636C6173733D22616A732D7265736574223E3C2F627574746F6E3E272C636F6D6D616E64733A273C64697620636C6173733D22616A732D636F6D6D616E6473223E3C627574746F6E20636C6173733D22616A';
wwv_flow_api.g_varchar2_table(211) := '732D70696E223E3C2F627574746F6E3E3C627574746F6E20636C6173733D22616A732D6D6178696D697A65223E3C2F627574746F6E3E3C627574746F6E20636C6173733D22616A732D636C6F7365223E3C2F627574746F6E3E3C2F6469763E272C686561';
wwv_flow_api.g_varchar2_table(212) := '6465723A273C64697620636C6173733D22616A732D686561646572223E3C2F6469763E272C626F64793A273C64697620636C6173733D22616A732D626F6479223E3C2F6469763E272C636F6E74656E743A273C64697620636C6173733D22616A732D636F';
wwv_flow_api.g_varchar2_table(213) := '6E74656E74223E3C2F6469763E272C666F6F7465723A273C64697620636C6173733D22616A732D666F6F746572223E3C2F6469763E272C627574746F6E733A7B7072696D6172793A273C64697620636C6173733D22616A732D7072696D61727920616A73';
wwv_flow_api.g_varchar2_table(214) := '2D627574746F6E73223E3C2F6469763E272C617578696C696172793A273C64697620636C6173733D22616A732D617578696C6961727920616A732D627574746F6E73223E3C2F6469763E277D2C627574746F6E3A273C627574746F6E20636C6173733D22';
wwv_flow_api.g_varchar2_table(215) := '616A732D627574746F6E223E3C2F627574746F6E3E272C726573697A6548616E646C653A273C64697620636C6173733D22616A732D68616E646C65223E3C2F6469763E277D2C43613D7B616E696D6174696F6E496E3A22616A732D696E222C616E696D61';
wwv_flow_api.g_varchar2_table(216) := '74696F6E4F75743A22616A732D6F7574222C626173653A22616C657274696679222C62617369633A22616A732D6261736963222C636170747572653A22616A732D63617074757265222C636C6F7361626C653A22616A732D636C6F7361626C65222C6669';
wwv_flow_api.g_varchar2_table(217) := '7865643A22616A732D6669786564222C6672616D656C6573733A22616A732D6672616D656C657373222C68696464656E3A22616A732D68696464656E222C6D6178696D697A653A22616A732D6D6178696D697A65222C6D6178696D697A65643A22616A73';
wwv_flow_api.g_varchar2_table(218) := '2D6D6178696D697A6564222C6D6178696D697A61626C653A22616A732D6D6178696D697A61626C65222C6D6F64656C6573733A22616A732D6D6F64656C657373222C6D6F7661626C653A22616A732D6D6F7661626C65222C6E6F53656C656374696F6E3A';
wwv_flow_api.g_varchar2_table(219) := '22616A732D6E6F2D73656C656374696F6E222C6E6F4F766572666C6F773A22616A732D6E6F2D6F766572666C6F77222C6E6F50616464696E673A22616A732D6E6F2D70616464696E67222C70696E3A22616A732D70696E222C70696E6E61626C653A2261';
wwv_flow_api.g_varchar2_table(220) := '6A732D70696E6E61626C65222C7072656669783A22616A732D222C726573697A61626C653A22616A732D726573697A61626C65222C726573746F72653A22616A732D726573746F7265222C7368616B653A22616A732D7368616B65222C756E70696E6E65';
wwv_flow_api.g_varchar2_table(221) := '643A22616A732D756E70696E6E6564227D2C44613D22222C45613D302C46613D21312C47613D21312C48613D6E756C6C2C49613D302C4A613D302C4B613D227061676558222C4C613D227061676559222C4D613D6E756C6C2C4E613D21312C4F613D6E75';
wwv_flow_api.g_varchar2_table(222) := '6C6C2C50613D6E756C6C2C51613D4E756D6265722E4E616E2C52613D302C53613D302C54613D303B72657475726E7B5F5F696E69743A6D2C69734F70656E3A66756E6374696F6E28297B72657475726E20746869732E5F5F696E7465726E616C2E69734F';
wwv_flow_api.g_varchar2_table(223) := '70656E7D2C69734D6F64616C3A66756E6374696F6E28297B72657475726E20746869732E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F662843612E6D6F64656C657373293C307D2C69734D6178696D697A65643A66756E63';
wwv_flow_api.g_varchar2_table(224) := '74696F6E28297B72657475726E20746869732E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F662843612E6D6178696D697A6564293E2D317D2C697350696E6E65643A66756E6374696F6E28297B72657475726E2074686973';
wwv_flow_api.g_varchar2_table(225) := '2E656C656D656E74732E726F6F742E636C6173734E616D652E696E6465784F662843612E756E70696E6E6564293C307D2C6D6178696D697A653A66756E6374696F6E28297B72657475726E20746869732E69734D6178696D697A656428297C7C49287468';
wwv_flow_api.g_varchar2_table(226) := '6973292C746869737D2C726573746F72653A66756E6374696F6E28297B72657475726E20746869732E69734D6178696D697A6564282926264A2874686973292C746869737D2C70696E3A66756E6374696F6E28297B72657475726E20746869732E697350';
wwv_flow_api.g_varchar2_table(227) := '696E6E656428297C7C472874686973292C746869737D2C756E70696E3A66756E6374696F6E28297B72657475726E20746869732E697350696E6E656428292626482874686973292C746869737D2C6272696E67546F46726F6E743A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(228) := '297B72657475726E2042286E756C6C2C74686973292C746869737D2C6D6F7665546F3A66756E6374696F6E28612C62297B6966282169734E614E28612926262169734E614E286229297B6C28226F6E6D6F7665222C74686973293B76617220633D746869';
wwv_flow_api.g_varchar2_table(229) := '732E656C656D656E74732E6469616C6F672C653D632C663D302C673D303B632E7374796C652E6C656674262628662D3D7061727365496E7428632E7374796C652E6C6566742C313029292C632E7374796C652E746F70262628672D3D7061727365496E74';
wwv_flow_api.g_varchar2_table(230) := '28632E7374796C652E746F702C313029293B646F20662B3D652E6F66667365744C6566742C672B3D652E6F6666736574546F703B7768696C6528653D652E6F6666736574506172656E74293B76617220683D612D662C693D622D673B642829262628682A';
wwv_flow_api.g_varchar2_table(231) := '3D2D31292C632E7374796C652E6C6566743D682B227078222C632E7374796C652E746F703D692B227078222C6C28226F6E6D6F766564222C74686973297D72657475726E20746869737D2C726573697A65546F3A66756E6374696F6E28612C62297B7661';
wwv_flow_api.g_varchar2_table(232) := '7220633D7061727365466C6F61742861292C643D7061727365466C6F61742862292C653D2F285C642A5C2E5C642B7C5C642B29252F3B6966282169734E614E28632926262169734E614E2864292626746869732E6765742822726573697A61626C652229';
wwv_flow_api.g_varchar2_table(233) := '3D3D3D2130297B6C28226F6E726573697A65222C74686973292C2822222B61292E6D61746368286529262628633D632F3130302A646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E745769647468292C2822222B62292E6D6174';
wwv_flow_api.g_varchar2_table(234) := '6368286529262628643D642F3130302A646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874293B76617220663D746869732E656C656D656E74732E6469616C6F673B226E6F6E6522213D3D662E7374796C652E6D';
wwv_flow_api.g_varchar2_table(235) := '61785769647468262628662E7374796C652E6D696E57696474683D2853613D662E6F66667365745769647468292B22707822292C662E7374796C652E6D617857696474683D226E6F6E65222C662E7374796C652E6D696E4865696768743D746869732E65';
wwv_flow_api.g_varchar2_table(236) := '6C656D656E74732E6865616465722E6F66667365744865696768742B746869732E656C656D656E74732E666F6F7465722E6F66667365744865696768742B227078222C662E7374796C652E77696474683D632B227078222C662E7374796C652E68656967';
wwv_flow_api.g_varchar2_table(237) := '68743D642B227078222C6C28226F6E726573697A6564222C74686973297D72657475726E20746869737D2C73657474696E673A66756E6374696F6E28612C62297B76617220633D746869732C643D4428746869732C746869732E5F5F696E7465726E616C';
wwv_flow_api.g_varchar2_table(238) := '2E6F7074696F6E732C66756E6374696F6E28612C622C64297B4328632C612C622C64297D2C612C62293B69662822676574223D3D3D642E6F702972657475726E20642E666F756E643F642E76616C75653A22756E646566696E656422213D747970656F66';
wwv_flow_api.g_varchar2_table(239) := '20746869732E73657474696E67733F4428746869732C746869732E73657474696E67732C746869732E73657474696E67557064617465647C7C66756E6374696F6E28297B7D2C612C62292E76616C75653A766F696420303B69662822736574223D3D3D64';
wwv_flow_api.g_varchar2_table(240) := '2E6F70297B696628642E6974656D732E6C656E6774683E3029666F722876617220653D746869732E73657474696E67557064617465647C7C66756E6374696F6E28297B7D2C663D303B663C642E6974656D732E6C656E6774683B662B3D31297B76617220';
wwv_flow_api.g_varchar2_table(241) := '673D642E6974656D735B665D3B672E666F756E647C7C22756E646566696E6564223D3D747970656F6620746869732E73657474696E67737C7C4428746869732C746869732E73657474696E67732C652C672E6B65792C672E76616C7565297D7265747572';
wwv_flow_api.g_varchar2_table(242) := '6E20746869737D7D2C7365743A66756E6374696F6E28612C62297B72657475726E20746869732E73657474696E6728612C62292C746869737D2C6765743A66756E6374696F6E2861297B72657475726E20746869732E73657474696E672861297D2C7365';
wwv_flow_api.g_varchar2_table(243) := '744865616465723A66756E6374696F6E2862297B72657475726E22737472696E67223D3D747970656F6620623F286728746869732E656C656D656E74732E686561646572292C746869732E656C656D656E74732E6865616465722E696E6E657248544D4C';
wwv_flow_api.g_varchar2_table(244) := '3D62293A6220696E7374616E63656F6620612E48544D4C456C656D656E742626746869732E656C656D656E74732E6865616465722E66697273744368696C64213D3D622626286728746869732E656C656D656E74732E686561646572292C746869732E65';
wwv_flow_api.g_varchar2_table(245) := '6C656D656E74732E6865616465722E617070656E644368696C64286229292C746869737D2C736574436F6E74656E743A66756E6374696F6E2862297B72657475726E22737472696E67223D3D747970656F6620623F286728746869732E656C656D656E74';
wwv_flow_api.g_varchar2_table(246) := '732E636F6E74656E74292C746869732E656C656D656E74732E636F6E74656E742E696E6E657248544D4C3D62293A6220696E7374616E63656F6620612E48544D4C456C656D656E742626746869732E656C656D656E74732E636F6E74656E742E66697273';
wwv_flow_api.g_varchar2_table(247) := '744368696C64213D3D622626286728746869732E656C656D656E74732E636F6E74656E74292C746869732E656C656D656E74732E636F6E74656E742E617070656E644368696C64286229292C746869737D2C73686F774D6F64616C3A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(248) := '2861297B72657475726E20746869732E73686F772821302C61297D2C73686F773A66756E6374696F6E28612C64297B6966286D2874686973292C746869732E5F5F696E7465726E616C2E69734F70656E297B64612874686973292C6A612874686973292C';
wwv_flow_api.g_varchar2_table(249) := '6228746869732E656C656D656E74732E6469616C6F672C43612E7368616B65293B76617220653D746869733B73657454696D656F75742866756E6374696F6E28297B6328652E656C656D656E74732E6469616C6F672C43612E7368616B65297D2C323030';
wwv_flow_api.g_varchar2_table(250) := '297D656C73657B696628746869732E5F5F696E7465726E616C2E69734F70656E3D21302C702E707573682874686973292C762E64656661756C74732E6D61696E7461696E466F637573262628746869732E5F5F696E7465726E616C2E616374697665456C';
wwv_flow_api.g_varchar2_table(251) := '656D656E743D646F63756D656E742E616374697665456C656D656E74292C2266756E6374696F6E223D3D747970656F6620746869732E707265706172652626746869732E7072657061726528292C6D612874686973292C766F69642030213D3D61262674';
wwv_flow_api.g_varchar2_table(252) := '6869732E73657428226D6F64616C222C61292C6F28292C7528292C22737472696E67223D3D747970656F66206426262222213D3D64262628746869732E5F5F696E7465726E616C2E636C6173734E616D653D642C6228746869732E656C656D656E74732E';
wwv_flow_api.g_varchar2_table(253) := '726F6F742C6429292C746869732E676574282273746172744D6178696D697A656422293F746869732E6D6178696D697A6528293A746869732E69734D6178696D697A6564282926264A2874686973292C4E2874686973292C6328746869732E656C656D65';
wwv_flow_api.g_varchar2_table(254) := '6E74732E726F6F742C43612E616E696D6174696F6E4F7574292C6228746869732E656C656D656E74732E726F6F742C43612E616E696D6174696F6E496E292C636C65617254696D656F757428746869732E5F5F696E7465726E616C2E74696D6572496E29';
wwv_flow_api.g_varchar2_table(255) := '2C746869732E5F5F696E7465726E616C2E74696D6572496E3D73657454696D656F757428746869732E5F5F696E7465726E616C2E7472616E736974696F6E496E48616E646C65722C732E737570706F727465643F3165333A313030292C4161297B766172';
wwv_flow_api.g_varchar2_table(256) := '20663D746869732E656C656D656E74732E726F6F743B662E7374796C652E646973706C61793D226E6F6E65222C73657454696D656F75742866756E6374696F6E28297B662E7374796C652E646973706C61793D22626C6F636B227D2C30297D7A613D7468';
wwv_flow_api.g_varchar2_table(257) := '69732E656C656D656E74732E726F6F742E6F666673657457696474682C6328746869732E656C656D656E74732E726F6F742C43612E68696464656E292C2266756E6374696F6E223D3D747970656F6620746869732E686F6F6B732E6F6E73686F77262674';
wwv_flow_api.g_varchar2_table(258) := '6869732E686F6F6B732E6F6E73686F772E63616C6C2874686973292C6C28226F6E73686F77222C74686973297D72657475726E20746869737D2C636C6F73653A66756E6374696F6E28297B72657475726E20746869732E5F5F696E7465726E616C2E6973';
wwv_flow_api.g_varchar2_table(259) := '4F70656E26266C28226F6E636C6F73696E67222C7468697329213D3D21312626286E612874686973292C6328746869732E656C656D656E74732E726F6F742C43612E616E696D6174696F6E496E292C6228746869732E656C656D656E74732E726F6F742C';
wwv_flow_api.g_varchar2_table(260) := '43612E616E696D6174696F6E4F7574292C636C65617254696D656F757428746869732E5F5F696E7465726E616C2E74696D65724F7574292C746869732E5F5F696E7465726E616C2E74696D65724F75743D73657454696D656F757428746869732E5F5F69';
wwv_flow_api.g_varchar2_table(261) := '6E7465726E616C2E7472616E736974696F6E4F757448616E646C65722C732E737570706F727465643F3165333A313030292C6228746869732E656C656D656E74732E726F6F742C43612E68696464656E292C7A613D746869732E656C656D656E74732E6D';
wwv_flow_api.g_varchar2_table(262) := '6F64616C2E6F666673657457696474682C22756E646566696E656422213D747970656F6620746869732E5F5F696E7465726E616C2E636C6173734E616D6526262222213D3D746869732E5F5F696E7465726E616C2E636C6173734E616D65262663287468';
wwv_flow_api.g_varchar2_table(263) := '69732E656C656D656E74732E726F6F742C746869732E5F5F696E7465726E616C2E636C6173734E616D65292C2266756E6374696F6E223D3D747970656F6620746869732E686F6F6B732E6F6E636C6F73652626746869732E686F6F6B732E6F6E636C6F73';
wwv_flow_api.g_varchar2_table(264) := '652E63616C6C2874686973292C6C28226F6E636C6F7365222C74686973292C702E73706C69636528702E696E6465784F662874686973292C31292C746869732E5F5F696E7465726E616C2E69734F70656E3D21312C752829292C746869737D2C636C6F73';
wwv_flow_api.g_varchar2_table(265) := '654F74686572733A66756E6374696F6E28297B72657475726E20762E636C6F7365416C6C2874686973292C746869737D2C64657374726F793A66756E6374696F6E28297B72657475726E20746869732E5F5F696E7465726E616C2E69734F70656E3F2874';
wwv_flow_api.g_varchar2_table(266) := '6869732E5F5F696E7465726E616C2E64657374726F793D66756E6374696F6E28297B6928746869732C6D297D2C746869732E636C6F73652829293A6928746869732C6D292C746869737D7D7D28292C753D66756E6374696F6E28297B66756E6374696F6E';
wwv_flow_api.g_varchar2_table(267) := '20642861297B612E5F5F696E7465726E616C7C7C28612E5F5F696E7465726E616C3D7B706F736974696F6E3A762E64656661756C74732E6E6F7469666965722E706F736974696F6E2C64656C61793A762E64656661756C74732E6E6F7469666965722E64';
wwv_flow_api.g_varchar2_table(268) := '656C61797D2C6C3D646F63756D656E742E637265617465456C656D656E74282244495622292C68286129292C6C2E706172656E744E6F6465213D3D646F63756D656E742E626F64792626646F63756D656E742E626F64792E617070656E644368696C6428';
wwv_flow_api.g_varchar2_table(269) := '6C297D66756E6374696F6E20652861297B612E5F5F696E7465726E616C2E7075736865643D21302C6D2E707573682861297D66756E6374696F6E20662861297B6D2E73706C696365286D2E696E6465784F662861292C31292C612E5F5F696E7465726E61';
wwv_flow_api.g_varchar2_table(270) := '6C2E7075736865643D21317D66756E6374696F6E20682861297B737769746368286C2E636C6173734E616D653D6E2E626173652C612E5F5F696E7465726E616C2E706F736974696F6E297B6361736522746F702D7269676874223A62286C2C6E2E746F70';
wwv_flow_api.g_varchar2_table(271) := '2B2220222B6E2E7269676874293B627265616B3B6361736522746F702D6C656674223A62286C2C6E2E746F702B2220222B6E2E6C656674293B627265616B3B6361736522626F74746F6D2D6C656674223A62286C2C6E2E626F74746F6D2B2220222B6E2E';
wwv_flow_api.g_varchar2_table(272) := '6C656674293B627265616B3B64656661756C743A6361736522626F74746F6D2D7269676874223A62286C2C6E2E626F74746F6D2B2220222B6E2E7269676874297D7D66756E6374696F6E206928642C68297B66756E6374696F6E206928612C62297B622E';
wwv_flow_api.g_varchar2_table(273) := '5F5F696E7465726E616C2E636C6F7365427574746F6E2626227472756522213D3D612E7461726765742E6765744174747269627574652822646174612D636C6F736522297C7C622E6469736D697373282130297D66756E6374696F6E206D28612C62297B';
wwv_flow_api.g_varchar2_table(274) := '7228622E656C656D656E742C732E747970652C6D292C6C2E72656D6F76654368696C6428622E656C656D656E74297D66756E6374696F6E206F2861297B72657475726E20612E5F5F696E7465726E616C7C7C28612E5F5F696E7465726E616C3D7B707573';
wwv_flow_api.g_varchar2_table(275) := '6865643A21312C64656C61793A766F696420302C74696D65723A766F696420302C636C69636B48616E646C65723A766F696420302C7472616E736974696F6E456E6448616E646C65723A766F696420302C7472616E736974696F6E54696D656F75743A76';
wwv_flow_api.g_varchar2_table(276) := '6F696420307D2C612E5F5F696E7465726E616C2E636C69636B48616E646C65723D6A28612C69292C612E5F5F696E7465726E616C2E7472616E736974696F6E456E6448616E646C65723D6A28612C6D29292C617D66756E6374696F6E20702861297B636C';
wwv_flow_api.g_varchar2_table(277) := '65617254696D656F757428612E5F5F696E7465726E616C2E74696D6572292C636C65617254696D656F757428612E5F5F696E7465726E616C2E7472616E736974696F6E54696D656F7574297D72657475726E206F287B656C656D656E743A642C70757368';
wwv_flow_api.g_varchar2_table(278) := '3A66756E6374696F6E28612C63297B69662821746869732E5F5F696E7465726E616C2E707573686564297B652874686973292C702874686973293B76617220642C663B73776974636828617267756D656E74732E6C656E677468297B6361736520303A66';
wwv_flow_api.g_varchar2_table(279) := '3D746869732E5F5F696E7465726E616C2E64656C61793B627265616B3B6361736520313A226E756D626572223D3D747970656F6620613F663D613A28643D612C663D746869732E5F5F696E7465726E616C2E64656C6179293B627265616B3B6361736520';
wwv_flow_api.g_varchar2_table(280) := '323A643D612C663D637D72657475726E20746869732E5F5F696E7465726E616C2E636C6F7365427574746F6E3D762E64656661756C74732E6E6F7469666965722E636C6F7365427574746F6E2C22756E646566696E656422213D747970656F6620642626';
wwv_flow_api.g_varchar2_table(281) := '746869732E736574436F6E74656E742864292C752E5F5F696E7465726E616C2E706F736974696F6E2E696E6465784F662822746F7022293C303F6C2E617070656E644368696C6428746869732E656C656D656E74293A6C2E696E736572744265666F7265';
wwv_flow_api.g_varchar2_table(282) := '28746869732E656C656D656E742C6C2E66697273744368696C64292C6B3D746869732E656C656D656E742E6F666673657457696474682C6228746869732E656C656D656E742C6E2E76697369626C65292C7128746869732E656C656D656E742C22636C69';
wwv_flow_api.g_varchar2_table(283) := '636B222C746869732E5F5F696E7465726E616C2E636C69636B48616E646C6572292C746869732E64656C61792866297D72657475726E20746869737D2C6F6E6469736D6973733A66756E6374696F6E28297B7D2C63616C6C6261636B3A682C6469736D69';
wwv_flow_api.g_varchar2_table(284) := '73733A66756E6374696F6E2861297B72657475726E20746869732E5F5F696E7465726E616C2E707573686564262628702874686973292C282266756E6374696F6E22213D747970656F6620746869732E6F6E6469736D6973737C7C746869732E6F6E6469';
wwv_flow_api.g_varchar2_table(285) := '736D6973732E63616C6C287468697329213D3D2131292626287228746869732E656C656D656E742C22636C69636B222C746869732E5F5F696E7465726E616C2E636C69636B48616E646C6572292C22756E646566696E656422213D747970656F66207468';
wwv_flow_api.g_varchar2_table(286) := '69732E656C656D656E742626746869732E656C656D656E742E706172656E744E6F64653D3D3D6C262628746869732E5F5F696E7465726E616C2E7472616E736974696F6E54696D656F75743D73657454696D656F757428746869732E5F5F696E7465726E';
wwv_flow_api.g_varchar2_table(287) := '616C2E7472616E736974696F6E456E6448616E646C65722C732E737570706F727465643F3165333A313030292C6328746869732E656C656D656E742C6E2E76697369626C65292C2266756E6374696F6E223D3D747970656F6620746869732E63616C6C62';
wwv_flow_api.g_varchar2_table(288) := '61636B2626746869732E63616C6C6261636B2E63616C6C28746869732C6129292C6628746869732929292C746869737D2C64656C61793A66756E6374696F6E2861297B696628702874686973292C746869732E5F5F696E7465726E616C2E64656C61793D';
wwv_flow_api.g_varchar2_table(289) := '22756E646566696E6564223D3D747970656F6620617C7C69734E614E282B61293F752E5F5F696E7465726E616C2E64656C61793A2B612C746869732E5F5F696E7465726E616C2E64656C61793E30297B76617220623D746869733B746869732E5F5F696E';
wwv_flow_api.g_varchar2_table(290) := '7465726E616C2E74696D65723D73657454696D656F75742866756E6374696F6E28297B622E6469736D69737328297D2C3165332A746869732E5F5F696E7465726E616C2E64656C6179297D72657475726E20746869737D2C736574436F6E74656E743A66';
wwv_flow_api.g_varchar2_table(291) := '756E6374696F6E2863297B69662822737472696E67223D3D747970656F6620633F286728746869732E656C656D656E74292C746869732E656C656D656E742E696E6E657248544D4C3D63293A6320696E7374616E63656F6620612E48544D4C456C656D65';
wwv_flow_api.g_varchar2_table(292) := '6E742626746869732E656C656D656E742E66697273744368696C64213D3D632626286728746869732E656C656D656E74292C746869732E656C656D656E742E617070656E644368696C64286329292C746869732E5F5F696E7465726E616C2E636C6F7365';
wwv_flow_api.g_varchar2_table(293) := '427574746F6E297B76617220643D646F63756D656E742E637265617465456C656D656E7428227370616E22293B6228642C6E2E636C6F7365292C642E7365744174747269627574652822646174612D636C6F7365222C2130292C746869732E656C656D65';
wwv_flow_api.g_varchar2_table(294) := '6E742E617070656E644368696C642864297D72657475726E20746869737D2C6469736D6973734F74686572733A66756E6374696F6E28297B72657475726E20752E6469736D697373416C6C2874686973292C746869737D7D297D766172206B2C6C2C6D3D';
wwv_flow_api.g_varchar2_table(295) := '5B5D2C6E3D7B626173653A22616C6572746966792D6E6F746966696572222C6D6573736167653A22616A732D6D657373616765222C746F703A22616A732D746F70222C72696768743A22616A732D7269676874222C626F74746F6D3A22616A732D626F74';
wwv_flow_api.g_varchar2_table(296) := '746F6D222C6C6566743A22616A732D6C656674222C76697369626C653A22616A732D76697369626C65222C68696464656E3A22616A732D68696464656E222C636C6F73653A22616A732D636C6F7365227D3B72657475726E7B73657474696E673A66756E';
wwv_flow_api.g_varchar2_table(297) := '6374696F6E28612C62297B696628642874686973292C22756E646566696E6564223D3D747970656F6620622972657475726E20746869732E5F5F696E7465726E616C5B615D3B7377697463682861297B6361736522706F736974696F6E223A746869732E';
wwv_flow_api.g_varchar2_table(298) := '5F5F696E7465726E616C2E706F736974696F6E3D622C682874686973293B627265616B3B636173652264656C6179223A746869732E5F5F696E7465726E616C2E64656C61793D627D72657475726E20746869737D2C7365743A66756E6374696F6E28612C';
wwv_flow_api.g_varchar2_table(299) := '62297B72657475726E20746869732E73657474696E6728612C62292C746869737D2C6765743A66756E6374696F6E2861297B72657475726E20746869732E73657474696E672861297D2C6372656174653A66756E6374696F6E28612C62297B6428746869';
wwv_flow_api.g_varchar2_table(300) := '73293B76617220633D646F63756D656E742E637265617465456C656D656E74282264697622293B72657475726E20632E636C6173734E616D653D6E2E6D6573736167652B2822737472696E67223D3D747970656F66206126262222213D3D613F2220616A';
wwv_flow_api.g_varchar2_table(301) := '732D222B613A2222292C6928632C62297D2C6469736D697373416C6C3A66756E6374696F6E2861297B666F722876617220623D6D2E736C6963652830292C633D303B633C622E6C656E6774683B632B3D31297B76617220643D625B635D3B28766F696420';
wwv_flow_api.g_varchar2_table(302) := '303D3D3D617C7C61213D3D64292626642E6469736D69737328297D7D7D7D28292C763D6E6577206D3B762E6469616C6F672822616C657274222C66756E6374696F6E28297B72657475726E7B6D61696E3A66756E6374696F6E28612C622C63297B766172';
wwv_flow_api.g_varchar2_table(303) := '20642C652C663B73776974636828617267756D656E74732E6C656E677468297B6361736520313A653D613B627265616B3B6361736520323A2266756E6374696F6E223D3D747970656F6620623F28653D612C663D62293A28643D612C653D62293B627265';
wwv_flow_api.g_varchar2_table(304) := '616B3B6361736520333A643D612C653D622C663D637D72657475726E20746869732E73657428227469746C65222C64292C746869732E73657428226D657373616765222C65292C746869732E73657428226F6E6F6B222C66292C746869737D2C73657475';
wwv_flow_api.g_varchar2_table(305) := '703A66756E6374696F6E28297B72657475726E7B627574746F6E733A5B7B746578743A762E64656661756C74732E676C6F73736172792E6F6B2C6B65793A6E2E4553432C696E766F6B654F6E436C6F73653A21302C636C6173734E616D653A762E646566';
wwv_flow_api.g_varchar2_table(306) := '61756C74732E7468656D652E6F6B7D5D2C666F6375733A7B656C656D656E743A302C73656C6563743A21317D2C6F7074696F6E733A7B6D6178696D697A61626C653A21312C726573697A61626C653A21317D7D7D2C6275696C643A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(307) := '297B7D2C707265706172653A66756E6374696F6E28297B7D2C7365744D6573736167653A66756E6374696F6E2861297B746869732E736574436F6E74656E742861297D2C73657474696E67733A7B6D6573736167653A766F696420302C6F6E6F6B3A766F';
wwv_flow_api.g_varchar2_table(308) := '696420302C6C6162656C3A766F696420307D2C73657474696E67557064617465643A66756E6374696F6E28612C622C63297B7377697463682861297B63617365226D657373616765223A746869732E7365744D6573736167652863293B627265616B3B63';
wwv_flow_api.g_varchar2_table(309) := '617365226C6162656C223A746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74262628746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E742E696E6E657248544D4C3D63297D7D2C6361';
wwv_flow_api.g_varchar2_table(310) := '6C6C6261636B3A66756E6374696F6E2861297B6966282266756E6374696F6E223D3D747970656F6620746869732E67657428226F6E6F6B2229297B76617220623D746869732E67657428226F6E6F6B22292E63616C6C28746869732C61293B22756E6465';
wwv_flow_api.g_varchar2_table(311) := '66696E656422213D747970656F662062262628612E63616E63656C3D2162297D7D7D7D292C762E6469616C6F672822636F6E6669726D222C66756E6374696F6E28297B66756E6374696F6E20612861297B6E756C6C213D3D632E74696D6572262628636C';
wwv_flow_api.g_varchar2_table(312) := '656172496E74657276616C28632E74696D6572292C632E74696D65723D6E756C6C2C612E5F5F696E7465726E616C2E627574746F6E735B632E696E6465785D2E656C656D656E742E696E6E657248544D4C3D632E74657874297D66756E6374696F6E2062';
wwv_flow_api.g_varchar2_table(313) := '28622C642C65297B612862292C632E6475726174696F6E3D652C632E696E6465783D642C632E746578743D622E5F5F696E7465726E616C2E627574746F6E735B645D2E656C656D656E742E696E6E657248544D4C2C632E74696D65723D736574496E7465';
wwv_flow_api.g_varchar2_table(314) := '7276616C286A28622C632E7461736B292C316533292C632E7461736B286E756C6C2C62297D76617220633D7B74696D65723A6E756C6C2C696E6465783A6E756C6C2C746578743A6E756C6C2C6475726174696F6E3A6E756C6C2C7461736B3A66756E6374';
wwv_flow_api.g_varchar2_table(315) := '696F6E28622C64297B696628642E69734F70656E2829297B696628642E5F5F696E7465726E616C2E627574746F6E735B632E696E6465785D2E656C656D656E742E696E6E657248544D4C3D632E746578742B2220282623383230373B222B632E64757261';
wwv_flow_api.g_varchar2_table(316) := '74696F6E2B222623383230373B2920222C632E6475726174696F6E2D3D312C2D313D3D3D632E6475726174696F6E297B612864293B76617220653D642E5F5F696E7465726E616C2E627574746F6E735B632E696E6465785D2C663D6B28632E696E646578';
wwv_flow_api.g_varchar2_table(317) := '2C65293B2266756E6374696F6E223D3D747970656F6620642E63616C6C6261636B2626642E63616C6C6261636B2E6170706C7928642C5B665D292C662E636C6F7365213D3D21312626642E636C6F736528297D7D656C736520612864297D7D3B72657475';
wwv_flow_api.g_varchar2_table(318) := '726E7B6D61696E3A66756E6374696F6E28612C622C632C64297B76617220652C662C672C683B73776974636828617267756D656E74732E6C656E677468297B6361736520313A663D613B627265616B3B6361736520323A663D612C673D623B627265616B';
wwv_flow_api.g_varchar2_table(319) := '3B6361736520333A663D612C673D622C683D633B627265616B3B6361736520343A653D612C663D622C673D632C683D647D72657475726E20746869732E73657428227469746C65222C65292C746869732E73657428226D657373616765222C66292C7468';
wwv_flow_api.g_varchar2_table(320) := '69732E73657428226F6E6F6B222C67292C746869732E73657428226F6E63616E63656C222C68292C746869737D2C73657475703A66756E6374696F6E28297B72657475726E7B627574746F6E733A5B7B746578743A762E64656661756C74732E676C6F73';
wwv_flow_api.g_varchar2_table(321) := '736172792E6F6B2C6B65793A6E2E454E5445522C636C6173734E616D653A762E64656661756C74732E7468656D652E6F6B7D2C7B746578743A762E64656661756C74732E676C6F73736172792E63616E63656C2C6B65793A6E2E4553432C696E766F6B65';
wwv_flow_api.g_varchar2_table(322) := '4F6E436C6F73653A21302C0A636C6173734E616D653A762E64656661756C74732E7468656D652E63616E63656C7D5D2C666F6375733A7B656C656D656E743A302C73656C6563743A21317D2C6F7074696F6E733A7B6D6178696D697A61626C653A21312C';
wwv_flow_api.g_varchar2_table(323) := '726573697A61626C653A21317D7D7D2C6275696C643A66756E6374696F6E28297B7D2C707265706172653A66756E6374696F6E28297B7D2C7365744D6573736167653A66756E6374696F6E2861297B746869732E736574436F6E74656E742861297D2C73';
wwv_flow_api.g_varchar2_table(324) := '657474696E67733A7B6D6573736167653A6E756C6C2C6C6162656C733A6E756C6C2C6F6E6F6B3A6E756C6C2C6F6E63616E63656C3A6E756C6C2C64656661756C74466F6375733A6E756C6C2C72657665727365427574746F6E733A6E756C6C7D2C736574';
wwv_flow_api.g_varchar2_table(325) := '74696E67557064617465643A66756E6374696F6E28612C622C63297B7377697463682861297B63617365226D657373616765223A746869732E7365744D6573736167652863293B627265616B3B63617365226C6162656C73223A226F6B22696E20632626';
wwv_flow_api.g_varchar2_table(326) := '746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74262628746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E746578743D632E6F6B2C746869732E5F5F696E7465726E616C2E627574746F6E735B305D';
wwv_flow_api.g_varchar2_table(327) := '2E656C656D656E742E696E6E657248544D4C3D632E6F6B292C2263616E63656C22696E20632626746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E74262628746869732E5F5F696E7465726E616C2E627574746F6E735B';
wwv_flow_api.g_varchar2_table(328) := '315D2E746578743D632E63616E63656C2C746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E742E696E6E657248544D4C3D632E63616E63656C293B627265616B3B636173652272657665727365427574746F6E73223A63';
wwv_flow_api.g_varchar2_table(329) := '3D3D3D21303F746869732E656C656D656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74293A746869732E656C656D656E74732E6275';
wwv_flow_api.g_varchar2_table(330) := '74746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E74293B627265616B3B636173652264656661756C74466F637573223A746869732E5F5F696E7465726E';
wwv_flow_api.g_varchar2_table(331) := '616C2E666F6375732E656C656D656E743D226F6B223D3D3D633F303A317D7D2C63616C6C6261636B3A66756E6374696F6E2862297B612874686973293B76617220633B73776974636828622E696E646578297B6361736520303A2266756E6374696F6E22';
wwv_flow_api.g_varchar2_table(332) := '3D3D747970656F6620746869732E67657428226F6E6F6B2229262628633D746869732E67657428226F6E6F6B22292E63616C6C28746869732C62292C22756E646566696E656422213D747970656F662063262628622E63616E63656C3D216329293B6272';
wwv_flow_api.g_varchar2_table(333) := '65616B3B6361736520313A2266756E6374696F6E223D3D747970656F6620746869732E67657428226F6E63616E63656C2229262628633D746869732E67657428226F6E63616E63656C22292E63616C6C28746869732C62292C22756E646566696E656422';
wwv_flow_api.g_varchar2_table(334) := '213D747970656F662063262628622E63616E63656C3D216329297D7D2C6175746F4F6B3A66756E6374696F6E2861297B72657475726E206228746869732C302C61292C746869737D2C6175746F43616E63656C3A66756E6374696F6E2861297B72657475';
wwv_flow_api.g_varchar2_table(335) := '726E206228746869732C312C61292C746869737D7D7D292C762E6469616C6F67282270726F6D7074222C66756E6374696F6E28297B76617220623D646F63756D656E742E637265617465456C656D656E742822494E50555422292C633D646F63756D656E';
wwv_flow_api.g_varchar2_table(336) := '742E637265617465456C656D656E7428225022293B72657475726E7B6D61696E3A66756E6374696F6E28612C622C632C642C65297B76617220662C672C682C692C6A3B73776974636828617267756D656E74732E6C656E677468297B6361736520313A67';
wwv_flow_api.g_varchar2_table(337) := '3D613B627265616B3B6361736520323A673D612C683D623B627265616B3B6361736520333A673D612C683D622C693D633B627265616B3B6361736520343A673D612C683D622C693D632C6A3D643B627265616B3B6361736520353A663D612C673D622C68';
wwv_flow_api.g_varchar2_table(338) := '3D632C693D642C6A3D657D72657475726E20746869732E73657428227469746C65222C66292C746869732E73657428226D657373616765222C67292C746869732E736574282276616C7565222C68292C746869732E73657428226F6E6F6B222C69292C74';
wwv_flow_api.g_varchar2_table(339) := '6869732E73657428226F6E63616E63656C222C6A292C746869737D2C73657475703A66756E6374696F6E28297B72657475726E7B627574746F6E733A5B7B746578743A762E64656661756C74732E676C6F73736172792E6F6B2C6B65793A6E2E454E5445';
wwv_flow_api.g_varchar2_table(340) := '522C636C6173734E616D653A762E64656661756C74732E7468656D652E6F6B7D2C7B746578743A762E64656661756C74732E676C6F73736172792E63616E63656C2C6B65793A6E2E4553432C696E766F6B654F6E436C6F73653A21302C636C6173734E61';
wwv_flow_api.g_varchar2_table(341) := '6D653A762E64656661756C74732E7468656D652E63616E63656C7D5D2C666F6375733A7B656C656D656E743A622C73656C6563743A21307D2C6F7074696F6E733A7B6D6178696D697A61626C653A21312C726573697A61626C653A21317D7D7D2C627569';
wwv_flow_api.g_varchar2_table(342) := '6C643A66756E6374696F6E28297B622E636C6173734E616D653D762E64656661756C74732E7468656D652E696E7075742C622E736574417474726962757465282274797065222C227465787422292C622E76616C75653D746869732E676574282276616C';
wwv_flow_api.g_varchar2_table(343) := '756522292C746869732E656C656D656E74732E636F6E74656E742E617070656E644368696C642863292C746869732E656C656D656E74732E636F6E74656E742E617070656E644368696C642862297D2C707265706172653A66756E6374696F6E28297B7D';
wwv_flow_api.g_varchar2_table(344) := '2C7365744D6573736167653A66756E6374696F6E2862297B22737472696E67223D3D747970656F6620623F28672863292C632E696E6E657248544D4C3D62293A6220696E7374616E63656F6620612E48544D4C456C656D656E742626632E666972737443';
wwv_flow_api.g_varchar2_table(345) := '68696C64213D3D62262628672863292C632E617070656E644368696C64286229297D2C73657474696E67733A7B6D6573736167653A766F696420302C6C6162656C733A766F696420302C6F6E6F6B3A766F696420302C6F6E63616E63656C3A766F696420';
wwv_flow_api.g_varchar2_table(346) := '302C76616C75653A22222C747970653A2274657874222C72657665727365427574746F6E733A766F696420307D2C73657474696E67557064617465643A66756E6374696F6E28612C632C64297B7377697463682861297B63617365226D65737361676522';
wwv_flow_api.g_varchar2_table(347) := '3A746869732E7365744D6573736167652864293B627265616B3B636173652276616C7565223A622E76616C75653D643B627265616B3B636173652274797065223A7377697463682864297B636173652274657874223A6361736522636F6C6F72223A6361';
wwv_flow_api.g_varchar2_table(348) := '73652264617465223A63617365226461746574696D652D6C6F63616C223A6361736522656D61696C223A63617365226D6F6E7468223A63617365226E756D626572223A636173652270617373776F7264223A6361736522736561726368223A6361736522';
wwv_flow_api.g_varchar2_table(349) := '74656C223A636173652274696D65223A63617365227765656B223A622E747970653D643B627265616B3B64656661756C743A622E747970653D2274657874227D627265616B3B63617365226C6162656C73223A642E6F6B2626746869732E5F5F696E7465';
wwv_flow_api.g_varchar2_table(350) := '726E616C2E627574746F6E735B305D2E656C656D656E74262628746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E742E696E6E657248544D4C3D642E6F6B292C642E63616E63656C2626746869732E5F5F696E7465726E';
wwv_flow_api.g_varchar2_table(351) := '616C2E627574746F6E735B315D2E656C656D656E74262628746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E742E696E6E657248544D4C3D642E63616E63656C293B627265616B3B636173652272657665727365427574';
wwv_flow_api.g_varchar2_table(352) := '746F6E73223A643D3D3D21303F746869732E656C656D656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B305D2E656C656D656E74293A746869732E656C656D';
wwv_flow_api.g_varchar2_table(353) := '656E74732E627574746F6E732E7072696D6172792E617070656E644368696C6428746869732E5F5F696E7465726E616C2E627574746F6E735B315D2E656C656D656E74297D7D2C63616C6C6261636B3A66756E6374696F6E2861297B76617220633B7377';
wwv_flow_api.g_varchar2_table(354) := '6974636828612E696E646578297B6361736520303A746869732E73657474696E67732E76616C75653D622E76616C75652C2266756E6374696F6E223D3D747970656F6620746869732E67657428226F6E6F6B2229262628633D746869732E67657428226F';
wwv_flow_api.g_varchar2_table(355) := '6E6F6B22292E63616C6C28746869732C612C746869732E73657474696E67732E76616C7565292C22756E646566696E656422213D747970656F662063262628612E63616E63656C3D216329293B627265616B3B6361736520313A2266756E6374696F6E22';
wwv_flow_api.g_varchar2_table(356) := '3D3D747970656F6620746869732E67657428226F6E63616E63656C2229262628633D746869732E67657428226F6E63616E63656C22292E63616C6C28746869732C61292C22756E646566696E656422213D747970656F662063262628612E63616E63656C';
wwv_flow_api.g_varchar2_table(357) := '3D216329292C612E63616E63656C7C7C28622E76616C75653D746869732E73657474696E67732E76616C7565297D7D7D7D292C226F626A656374223D3D747970656F66206D6F64756C652626226F626A656374223D3D747970656F66206D6F64756C652E';
wwv_flow_api.g_varchar2_table(358) := '6578706F7274733F6D6F64756C652E6578706F7274733D763A2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E65285B5D2C66756E6374696F6E28297B72657475726E20767D293A612E616C65';
wwv_flow_api.g_varchar2_table(359) := '72746966797C7C28612E616C6572746966793D76297D2822756E646566696E656422213D747970656F662077696E646F773F77696E646F773A74686973293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92429831967845227)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'js/alertify.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F204150455820416C6572746966790A2F2F20417574686F723A2044616E69656C20486F63686C6569746E65720A2F2F2056657273696F6E3A20312E310A0A2F2F20676C6F62616C206E616D6573706163650A7661722061706578416C657274696679';
wwv_flow_api.g_varchar2_table(2) := '203D207B0A202020202F2F20706172736520737472696E6720746F20626F6F6C65616E0A202020207061727365426F6F6C65616E3A2066756E6374696F6E2870537472696E6729207B0A20202020202020207661722070426F6F6C65616E3B0A20202020';
wwv_flow_api.g_varchar2_table(3) := '202020206966202870537472696E672E746F4C6F776572436173652829203D3D2027747275652729207B0A20202020202020202020202070426F6F6C65616E203D20747275653B0A20202020202020207D0A20202020202020206966202870537472696E';
wwv_flow_api.g_varchar2_table(4) := '672E746F4C6F776572436173652829203D3D202766616C73652729207B0A20202020202020202020202070426F6F6C65616E203D2066616C73653B0A20202020202020207D0A202020202020202069662028212870537472696E672E746F4C6F77657243';
wwv_flow_api.g_varchar2_table(5) := '6173652829203D3D202774727565272920262620212870537472696E672E746F4C6F776572436173652829203D3D202766616C7365272929207B0A20202020202020202020202070426F6F6C65616E203D20756E646566696E65643B0A20202020202020';
wwv_flow_api.g_varchar2_table(6) := '207D0A202020202020202072657475726E2070426F6F6C65616E3B0A202020207D2C0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A2020202073686F77416C6572746966793A206675';
wwv_flow_api.g_varchar2_table(7) := '6E6374696F6E2829207B0A20202020202020202F2F20706C7567696E20617474726962757465730A202020202020202076617220646154686973203D20746869733B0A20202020202020207661722076416C65727469667954797065203D206461546869';
wwv_flow_api.g_varchar2_table(8) := '732E616374696F6E2E61747472696275746530313B0A202020202020202076617220765469746C65203D206461546869732E616374696F6E2E61747472696275746530323B0A202020202020202076617220764D657373616765203D206461546869732E';
wwv_flow_api.g_varchar2_table(9) := '616374696F6E2E61747472696275746530333B0A202020202020202076617220764F6B42746E4C6162656C203D206461546869732E616374696F6E2E61747472696275746530343B0A2020202020202020766172207643616E63656C42746E4C6162656C';
wwv_flow_api.g_varchar2_table(10) := '203D206461546869732E616374696F6E2E61747472696275746530353B0A20202020202020207661722076416C6572746966795472616E736974696F6E203D206461546869732E616374696F6E2E61747472696275746530363B0A202020202020202076';
wwv_flow_api.g_varchar2_table(11) := '61722076416C6572746966794D6F64616C203D2061706578416C6572746966792E7061727365426F6F6C65616E286461546869732E616374696F6E2E6174747269627574653037293B0A20202020202020207661722076416C6572746966794D6F766162';
wwv_flow_api.g_varchar2_table(12) := '6C65203D2061706578416C6572746966792E7061727365426F6F6C65616E286461546869732E616374696F6E2E6174747269627574653038293B0A20202020202020207661722076416C657274696679436C6F7361626C65203D2061706578416C657274';
wwv_flow_api.g_varchar2_table(13) := '6966792E7061727365426F6F6C65616E286461546869732E616374696F6E2E6174747269627574653039293B0A20202020202020207661722076416C6572746966794672616D656C657373203D2061706578416C6572746966792E7061727365426F6F6C';
wwv_flow_api.g_varchar2_table(14) := '65616E286461546869732E616374696F6E2E6174747269627574653130293B0A202020202020202076617220764D657373616765536F75726365203D206461546869732E616374696F6E2E61747472696275746531313B0A202020202020202076617220';
wwv_flow_api.g_varchar2_table(15) := '764D6573736167654974656D203D206461546869732E616374696F6E2E61747472696275746531323B0A20202020202020207661722076427574746F6E4F72646572203D2061706578416C6572746966792E7061727365426F6F6C65616E286461546869';
wwv_flow_api.g_varchar2_table(16) := '732E616374696F6E2E6174747269627574653133293B0A20202020202020202F2F206D65737361676520746578740A202020202020202076617220764D657373616765546578743B0A202020202020202069662028764D657373616765536F7572636520';
wwv_flow_api.g_varchar2_table(17) := '3D3D2027746578742729207B0A202020202020202020202020764D65737361676554657874203D20764D6573736167653B0A20202020202020207D20656C73652069662028764D657373616765536F75726365203D3D20276974656D2729207B0A202020';
wwv_flow_api.g_varchar2_table(18) := '202020202020202020764D65737361676554657874203D20617065782E7574696C2E65736361706548544D4C28247628764D6573736167654974656D29293B0A20202020202020207D0A20202020202020202F2F2074726967676572696E67456C656D65';
wwv_flow_api.g_varchar2_table(19) := '6E740A2020202020202020766172207654726967676572456C656D203D20746869732E74726967676572696E67456C656D656E743B0A2020202020202020766172207654726967676572456C656D49643B0A202020202020202069662028242876547269';
wwv_flow_api.g_varchar2_table(20) := '67676572456C656D292E697328275B69645D272929207B0A2020202020202020202020207654726967676572456C656D4964203D20272327202B2024287654726967676572456C656D292E617474722827696427293B0A20202020202020207D20656C73';
wwv_flow_api.g_varchar2_table(21) := '65207B0A2020202020202020202020207654726967676572456C656D4964203D2027626F6479273B0A20202020202020207D0A20202020202020202F2F204C6F6767696E670A2020202020202020617065782E64656275672E6C6F67282761706578416C';
wwv_flow_api.g_varchar2_table(22) := '6572746966792E73686F77416C657274696679202D2076416C65727469667954797065272C2076416C65727469667954797065293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274';
wwv_flow_api.g_varchar2_table(23) := '696679202D20765469746C65272C20765469746C65293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D20764D657373616765536F75726365272C20764D6573736167';
wwv_flow_api.g_varchar2_table(24) := '65536F75726365293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D20764D657373616765272C20764D657373616765293B0A2020202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(25) := '75672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D20764D6573736167654974656D272C20764D6573736167654974656D293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C65727469';
wwv_flow_api.g_varchar2_table(26) := '66792E73686F77416C657274696679202D20764D65737361676554657874272C20764D65737361676554657874293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D20';
wwv_flow_api.g_varchar2_table(27) := '764F6B42746E4C6162656C272C20764F6B42746E4C6162656C293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D207643616E63656C42746E4C6162656C272C207643';
wwv_flow_api.g_varchar2_table(28) := '616E63656C42746E4C6162656C293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D2076416C6572746966795472616E736974696F6E272C2076416C65727469667954';
wwv_flow_api.g_varchar2_table(29) := '72616E736974696F6E293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D2076427574746F6E4F72646572272C2076427574746F6E4F72646572293B0A202020202020';
wwv_flow_api.g_varchar2_table(30) := '2020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D2076416C6572746966794D6F64616C272C2076416C6572746966794D6F64616C293B0A2020202020202020617065782E64656275672E6C';
wwv_flow_api.g_varchar2_table(31) := '6F67282761706578416C6572746966792E73686F77416C657274696679202D2076416C6572746966794D6F7661626C65272C2076416C6572746966794D6F7661626C65293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C';
wwv_flow_api.g_varchar2_table(32) := '6572746966792E73686F77416C657274696679202D2076416C657274696679436C6F7361626C65272C2076416C657274696679436C6F7361626C65293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73';
wwv_flow_api.g_varchar2_table(33) := '686F77416C657274696679202D2076416C6572746966794672616D656C657373272C2076416C6572746966794672616D656C657373293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C65';
wwv_flow_api.g_varchar2_table(34) := '7274696679202D207654726967676572456C656D272C207654726967676572456C656D293B0A2020202020202020617065782E64656275672E6C6F67282761706578416C6572746966792E73686F77416C657274696679202D207654726967676572456C';
wwv_flow_api.g_varchar2_table(35) := '656D4964272C207654726967676572456C656D4964293B0A20202020202020202F2F20416C65727469667920416C6572740A20202020202020206966202876416C65727469667954797065203D3D2027616C6572742729207B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(36) := '2020616C6572746966792E616C65727428290A202020202020202020202020202020202E73657474696E67287B0A2020202020202020202020202020202020202020276C6162656C273A20764F6B42746E4C6162656C2C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(37) := '2020202020202020277469746C65273A20765469746C652C0A2020202020202020202020202020202020202020276D657373616765273A20764D657373616765546578742C0A2020202020202020202020202020202020202020277472616E736974696F';
wwv_flow_api.g_varchar2_table(38) := '6E273A2076416C6572746966795472616E736974696F6E2C0A2020202020202020202020202020202020202020276D6F64616C273A2076416C6572746966794D6F64616C2C0A2020202020202020202020202020202020202020276D6F7661626C65273A';
wwv_flow_api.g_varchar2_table(39) := '2076416C6572746966794D6F7661626C652C0A202020202020202020202020202020202020202027636C6F7361626C65273A2076416C657274696679436C6F7361626C652C0A2020202020202020202020202020202020202020276672616D656C657373';
wwv_flow_api.g_varchar2_table(40) := '273A2076416C6572746966794672616D656C6573732C0A202020202020202020202020202020202020202027636C6F7361626C65427944696D6D6572273A2066616C73652C0A2020202020202020202020202020202020202020276F6E6F6B273A206675';
wwv_flow_api.g_varchar2_table(41) := '6E6374696F6E2829207B0A202020202020202020202020202020202020202020202020617065782E6576656E742E74726967676572287654726967676572456C656D49642C202761706578616C6572746966792D616C6572742D6F6B2D70726573736564';
wwv_flow_api.g_varchar2_table(42) := '27293B0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E2829207B0A20202020202020202020202020202020202020202020202020202020617065782E64612E726573756D65286461546869';
wwv_flow_api.g_varchar2_table(43) := '732E726573756D6543616C6C6261636B2C2066616C7365293B0A2020202020202020202020202020202020202020202020207D2C203530293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D292E73';
wwv_flow_api.g_varchar2_table(44) := '686F7728293B0A2020202020202020202020202F2F20416C65727469667920436F6E6669726D0A20202020202020207D20656C7365206966202876416C65727469667954797065203D3D2027636F6E6669726D2729207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(45) := '616C6572746966792E636F6E6669726D28290A202020202020202020202020202020202E73657474696E67287B0A2020202020202020202020202020202020202020276C6162656C73273A207B0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(46) := '20206F6B3A20764F6B42746E4C6162656C2C0A20202020202020202020202020202020202020202020202063616E63656C3A207643616E63656C42746E4C6162656C0A20202020202020202020202020202020202020207D2C0A20202020202020202020';
wwv_flow_api.g_varchar2_table(47) := '20202020202020202020277469746C65273A20765469746C652C0A2020202020202020202020202020202020202020276D657373616765273A20764D657373616765546578742C0A2020202020202020202020202020202020202020277472616E736974';
wwv_flow_api.g_varchar2_table(48) := '696F6E273A2076416C6572746966795472616E736974696F6E2C0A2020202020202020202020202020202020202020276D6F64616C273A2076416C6572746966794D6F64616C2C0A2020202020202020202020202020202020202020276D6F7661626C65';
wwv_flow_api.g_varchar2_table(49) := '273A2076416C6572746966794D6F7661626C652C0A202020202020202020202020202020202020202027636C6F7361626C65273A2076416C657274696679436C6F7361626C652C0A2020202020202020202020202020202020202020276672616D656C65';
wwv_flow_api.g_varchar2_table(50) := '7373273A2076416C6572746966794672616D656C6573732C0A20202020202020202020202020202020202020202772657665727365427574746F6E73273A2076427574746F6E4F726465722C0A202020202020202020202020202020202020202027636C';
wwv_flow_api.g_varchar2_table(51) := '6F7361626C65427944696D6D6572273A2066616C73652C0A2020202020202020202020202020202020202020276F6E6F6B273A2066756E6374696F6E2829207B0A202020202020202020202020202020202020202020202020617065782E6576656E742E';
wwv_flow_api.g_varchar2_table(52) := '74726967676572287654726967676572456C656D49642C202761706578616C6572746966792D636F6E6669726D2D6F6B2D7072657373656427293B0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374';
wwv_flow_api.g_varchar2_table(53) := '696F6E2829207B0A20202020202020202020202020202020202020202020202020202020617065782E64612E726573756D65286461546869732E726573756D6543616C6C6261636B2C2066616C7365293B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(54) := '2020202020207D2C203530293B0A20202020202020202020202020202020202020207D2C0A2020202020202020202020202020202020202020276F6E63616E63656C273A2066756E6374696F6E2829207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(55) := '202020202020617065782E6576656E742E74726967676572287654726967676572456C656D49642C202761706578616C6572746966792D636F6E6669726D2D63616E63656C2D7072657373656427293B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(56) := '2020202020747279207B0A20202020202020202020202020202020202020202020202020202020617065782E64612E63616E63656C4576656E742E63616C6C28646154686973293B0A2020202020202020202020202020202020202020202020207D2063';
wwv_flow_api.g_varchar2_table(57) := '61746368202865727229207B0A20202020202020202020202020202020202020202020202020202020617065782E64656275672E6C6F67282761706578416C657274696679202D20436F6E6669726D20617065782E64612E63616E63656C4576656E7420';
wwv_flow_api.g_varchar2_table(58) := '4572726F72272C20657272293B0A2020202020202020202020202020202020202020202020207D0A0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D292E73686F7728293B0A20202020202020207D0A';
wwv_flow_api.g_varchar2_table(59) := '202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92430278537845228)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'js/apexalertify.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722061706578416C6572746966793D7B7061727365426F6F6C65616E3A66756E6374696F6E2861297B76617220623B2274727565223D3D612E746F4C6F776572436173652829262628623D2130293B2266616C7365223D3D612E746F4C6F77657243';
wwv_flow_api.g_varchar2_table(2) := '6173652829262628623D2131293B227472756522213D612E746F4C6F77657243617365282926262266616C736522213D612E746F4C6F776572436173652829262628623D766F69642030293B72657475726E20627D2C73686F77416C6572746966793A66';
wwv_flow_api.g_varchar2_table(3) := '756E6374696F6E28297B76617220613D746869732C623D612E616374696F6E2E61747472696275746530312C653D612E616374696F6E2E61747472696275746530322C713D612E616374696F6E2E61747472696275746530332C663D612E616374696F6E';
wwv_flow_api.g_varchar2_table(4) := '2E61747472696275746530342C723D612E616374696F6E2E61747472696275746530352C673D612E616374696F6E2E61747472696275746530362C683D61706578416C6572746966792E7061727365426F6F6C65616E28612E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(5) := '69627574653037292C6B3D61706578416C6572746966792E7061727365426F6F6C65616E28612E616374696F6E2E6174747269627574653038292C6C3D61706578416C6572746966792E7061727365426F6F6C65616E28612E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(6) := '69627574653039292C0A6D3D61706578416C6572746966792E7061727365426F6F6C65616E28612E616374696F6E2E6174747269627574653130292C6E3D612E616374696F6E2E61747472696275746531312C743D612E616374696F6E2E617474726962';
wwv_flow_api.g_varchar2_table(7) := '75746531322C753D61706578416C6572746966792E7061727365426F6F6C65616E28612E616374696F6E2E6174747269627574653133292C633B2274657874223D3D6E3F633D713A226974656D223D3D6E262628633D617065782E7574696C2E65736361';
wwv_flow_api.g_varchar2_table(8) := '706548544D4C28247628742929293B76617220703D746869732E74726967676572696E67456C656D656E742C643B643D242870292E697328225B69645D22293F2223222B242870292E617474722822696422293A22626F6479223B617065782E64656275';
wwv_flow_api.g_varchar2_table(9) := '672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D2076416C65727469667954797065222C62293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D20765469';
wwv_flow_api.g_varchar2_table(10) := '746C65222C65293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D20764D657373616765536F75726365222C6E293B617065782E64656275672E6C6F67282261706578416C6572746966792E';
wwv_flow_api.g_varchar2_table(11) := '73686F77416C657274696679202D20764D657373616765222C0A71293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D20764D6573736167654974656D222C74293B617065782E6465627567';
wwv_flow_api.g_varchar2_table(12) := '2E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D20764D65737361676554657874222C63293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D20764F6B4274';
wwv_flow_api.g_varchar2_table(13) := '6E4C6162656C222C66293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D207643616E63656C42746E4C6162656C222C72293B617065782E64656275672E6C6F67282261706578416C657274';
wwv_flow_api.g_varchar2_table(14) := '6966792E73686F77416C657274696679202D2076416C6572746966795472616E736974696F6E222C67293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D2076427574746F6E4F7264657222';
wwv_flow_api.g_varchar2_table(15) := '2C75293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D2076416C6572746966794D6F64616C222C68293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77';
wwv_flow_api.g_varchar2_table(16) := '416C657274696679202D2076416C6572746966794D6F7661626C65222C0A6B293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D2076416C657274696679436C6F7361626C65222C6C293B61';
wwv_flow_api.g_varchar2_table(17) := '7065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D2076416C6572746966794672616D656C657373222C6D293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F7741';
wwv_flow_api.g_varchar2_table(18) := '6C657274696679202D207654726967676572456C656D222C70293B617065782E64656275672E6C6F67282261706578416C6572746966792E73686F77416C657274696679202D207654726967676572456C656D4964222C64293B22616C657274223D3D62';
wwv_flow_api.g_varchar2_table(19) := '3F616C6572746966792E616C65727428292E73657474696E67287B6C6162656C3A662C7469746C653A652C6D6573736167653A632C7472616E736974696F6E3A672C6D6F64616C3A682C6D6F7661626C653A6B2C636C6F7361626C653A6C2C6672616D65';
wwv_flow_api.g_varchar2_table(20) := '6C6573733A6D2C636C6F7361626C65427944696D6D65723A21312C6F6E6F6B3A66756E6374696F6E28297B617065782E6576656E742E7472696767657228642C2261706578616C6572746966792D616C6572742D6F6B2D7072657373656422293B736574';
wwv_flow_api.g_varchar2_table(21) := '54696D656F75742866756E6374696F6E28297B617065782E64612E726573756D6528612E726573756D6543616C6C6261636B2C0A2131297D2C3530297D7D292E73686F7728293A22636F6E6669726D223D3D622626616C6572746966792E636F6E666972';
wwv_flow_api.g_varchar2_table(22) := '6D28292E73657474696E67287B6C6162656C733A7B6F6B3A662C63616E63656C3A727D2C7469746C653A652C6D6573736167653A632C7472616E736974696F6E3A672C6D6F64616C3A682C6D6F7661626C653A6B2C636C6F7361626C653A6C2C6672616D';
wwv_flow_api.g_varchar2_table(23) := '656C6573733A6D2C72657665727365427574746F6E733A752C636C6F7361626C65427944696D6D65723A21312C6F6E6F6B3A66756E6374696F6E28297B617065782E6576656E742E7472696767657228642C2261706578616C6572746966792D636F6E66';
wwv_flow_api.g_varchar2_table(24) := '69726D2D6F6B2D7072657373656422293B73657454696D656F75742866756E6374696F6E28297B617065782E64612E726573756D6528612E726573756D6543616C6C6261636B2C2131297D2C3530297D2C6F6E63616E63656C3A66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(25) := '7B617065782E6576656E742E7472696767657228642C2261706578616C6572746966792D636F6E6669726D2D63616E63656C2D7072657373656422293B7472797B617065782E64612E63616E63656C4576656E742E63616C6C2861297D63617463682876';
wwv_flow_api.g_varchar2_table(26) := '297B617065782E64656275672E6C6F67282261706578416C657274696679202D20436F6E6669726D20617065782E64612E63616E63656C4576656E74204572726F72222C0A76297D7D7D292E73686F7728297D7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(92430615437845229)
,p_plugin_id=>wwv_flow_api.id(165356670171608382)
,p_file_name=>'js/apexalertify.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18298446377311095)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(18246236494311000)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(18285092633311068)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(18298388020311095)
,p_nav_bar_list_template_id=>wwv_flow_api.id(18284987744311068)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18298446377311095)
,p_name=>'Blockchain'
,p_page_mode=>'NORMAL'
,p_step_title=>'Blockchain'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.alertify .ajs-dialog {',
'    min-width: 400px !important;',
'    max-width: fit-content !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DHOCHLEITNER'
,p_last_upd_yyyymmddhh24miss=>'20171012210721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18300226300311133)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18269250724311059)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(18299763179311129)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(18288165264311074)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18301084301317901)
,p_plug_name=>'Blockchain'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18264328568311055)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT blockchain.bc_index,',
'       blockchain.bc_timestamp,',
'       blockchain.bc_data,',
'       blockchain.bc_previous_hash,',
'       blockchain.bc_hash,',
'       null as calc_hash',
'  FROM blockchain'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18301115700317902)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DHOCHLEITNER'
,p_internal_uid=>18301115700317902
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18301228775317903)
,p_db_column_name=>'BC_INDEX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Index'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18301396183317904)
,p_db_column_name=>'BC_TIMESTAMP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18301444151317905)
,p_db_column_name=>'BC_DATA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Data'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18301579385317906)
,p_db_column_name=>'BC_PREVIOUS_HASH'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Previous Hash'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18301654623317907)
,p_db_column_name=>'BC_HASH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hash'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18302867983317919)
,p_db_column_name=>'CALC_HASH'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Calculate Hash'
,p_column_link=>'javascript:$s(''P1_BC_INDEX'',#BC_INDEX#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-calculator"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18308134499324875)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'183082'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'BC_INDEX:BC_TIMESTAMP:BC_DATA:BC_PREVIOUS_HASH:BC_HASH:CALC_HASH'
,p_sort_column_1=>'BC_INDEX'
,p_sort_direction_1=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18340501031838813)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18300226300311133)
,p_button_name=>'RESET_BLOCKCHAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_button_image_alt=>'Reset Blockchain'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18341095848838818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18300226300311133)
,p_button_name=>'DOWNLOAD_BLOCKCHAIN_JSON'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Blockchain JSON'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.:APPLICATION_PROCESS=DOWNLOAD_BLOCKCHAIN'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18301772951317908)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18300226300311133)
,p_button_name=>'VALIDATE_BLOCKCHAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Validate Blockchain'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18303978111317930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18301084301317901)
,p_button_name=>'ADD_BLOCK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Block'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18301835933317909)
,p_name=>'P1_IS_BLOCKCHAIN_VALID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18301084301317901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18302958044317920)
,p_name=>'P1_BC_INDEX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18301084301317901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303021390317921)
,p_name=>'P1_BC_HASH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18301084301317901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18301933540317910)
,p_name=>'checkBlockchainValid'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18301772951317908)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302013273317911)
,p_event_id=>wwv_flow_api.id(18301933540317910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_boolean BOOLEAN;',
'BEGIN',
'  l_boolean               := blockchain_pkg.is_blockchain_valid;',
'  :p1_is_blockchain_valid := sys.diutil.bool_to_int(l_boolean);',
'END;'))
,p_attribute_03=>'P1_IS_BLOCKCHAIN_VALID'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18302140351317912)
,p_name=>'showCheckResult'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_IS_BLOCKCHAIN_VALID'
,p_condition_element=>'P1_IS_BLOCKCHAIN_VALID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302260566317913)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.APEXALERTIFY'
,p_attribute_01=>'alert'
,p_attribute_02=>'Success'
,p_attribute_03=>'Your Blockchain is valid!'
,p_attribute_04=>'OK'
,p_attribute_06=>'pulse'
,p_attribute_07=>'true'
,p_attribute_08=>'false'
,p_attribute_09=>'true'
,p_attribute_10=>'false'
,p_attribute_11=>'text'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302315790317914)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.APEXALERTIFY'
,p_attribute_01=>'alert'
,p_attribute_02=>'Error'
,p_attribute_03=>'Your Blockchain is not valid!'
,p_attribute_04=>'OK'
,p_attribute_06=>'pulse'
,p_attribute_07=>'true'
,p_attribute_08=>'false'
,p_attribute_09=>'true'
,p_attribute_10=>'false'
,p_attribute_11=>'text'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302658409317917)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18301772951317908)
,p_attribute_01=>'t-Button--hot t-Button--danger'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302711509317918)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18301772951317908)
,p_attribute_01=>'t-Button--hot t-Button--success'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302519599317916)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18301772951317908)
,p_attribute_01=>'t-Button--danger'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18302463753317915)
,p_event_id=>wwv_flow_api.id(18302140351317912)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18301772951317908)
,p_attribute_01=>'t-Button--success'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18303174096317922)
,p_name=>'calculateBlockHash'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_BC_INDEX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18303250698317923)
,p_event_id=>wwv_flow_api.id(18303174096317922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_blockchain_block blockchain%ROWTYPE;',
'  l_hash             VARCHAR2(500);',
'BEGIN',
'  l_blockchain_block := blockchain_pkg.get_block(p_bc_index => :p1_bc_index);',
'  l_hash             := blockchain_pkg.get_block_hash(p_blockchain_block => l_blockchain_block);',
'  --',
'  :p1_bc_hash := l_hash;',
'END;'))
,p_attribute_02=>'P1_BC_INDEX'
,p_attribute_03=>'P1_BC_HASH'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18303382192317924)
,p_name=>'showBlockHash'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_BC_HASH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18303406769317925)
,p_event_id=>wwv_flow_api.id(18303382192317924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.APEXALERTIFY'
,p_attribute_01=>'alert'
,p_attribute_02=>'Calculated Block Hash (SHA256)'
,p_attribute_04=>'OK'
,p_attribute_06=>'pulse'
,p_attribute_07=>'true'
,p_attribute_08=>'false'
,p_attribute_09=>'true'
,p_attribute_10=>'false'
,p_attribute_11=>'item'
,p_attribute_12=>'P1_BC_HASH'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18304283054317933)
,p_name=>'refreshReportAfterAdd'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18303978111317930)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18304364076317934)
,p_event_id=>wwv_flow_api.id(18304283054317933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18301084301317901)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18340667693838814)
,p_name=>'resetBlockchain'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18340501031838813)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18340792557838815)
,p_event_id=>wwv_flow_api.id(18340667693838814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.APEXALERTIFY'
,p_attribute_01=>'confirm'
,p_attribute_03=>'Would you really like to reset? This will delete all Blockchain entries'
,p_attribute_04=>'OK'
,p_attribute_05=>'CANCEL'
,p_attribute_06=>'pulse'
,p_attribute_07=>'true'
,p_attribute_08=>'false'
,p_attribute_09=>'true'
,p_attribute_11=>'text'
,p_attribute_13=>'false'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18340830212838816)
,p_event_id=>wwv_flow_api.id(18340667693838814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'RESET_BLOCKCHAIN'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18340936348838817)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RESET_BLOCKCHAIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_val NUMBER := 0;',
'BEGIN',
'  -- reset sequence',
'  EXECUTE IMMEDIATE ''select blockchain_seq.nextval from dual''',
'    INTO l_val;',
'  EXECUTE IMMEDIATE ''alter sequence blockchain_seq increment by -'' || l_val ||',
'                    '' minvalue 0'';',
'  EXECUTE IMMEDIATE ''select blockchain_seq.nextval from dual''',
'    INTO l_val;',
'  EXECUTE IMMEDIATE ''alter sequence blockchain_seq increment by 1 minvalue 0'';',
'  -- delete blockchain table',
'  DELETE FROM blockchain;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RESET_BLOCKCHAIN'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18341174855838819)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOAD_BLOCKCHAIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --',
'  l_json_blob BLOB;',
'  --',
'BEGIN',
'  --',
'  l_json_blob := blockchain_pkg.get_blockchain_json_blob(p_start_index => 1);',
'  --',
'  owa_util.mime_header(''application/json'',',
'                       FALSE);',
'  htp.p(''Content-length: '' || dbms_lob.getlength(l_json_blob));',
'  htp.p(''Content-Disposition: attachment; filename="blockchain_'' ||',
'        to_char(SYSDATE,',
'                ''YYYYMMDDHH24MISS'') || ''.json"'');',
'  owa_util.http_header_close;',
'  wpg_docload.download_file(l_json_blob);',
'  --',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(18298446377311095)
,p_name=>'Add Blockchain Block'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Blockchain Block'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DHOCHLEITNER'
,p_last_upd_yyyymmddhh24miss=>'20171010000514'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18303534847317926)
,p_plug_name=>'Form Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(18264869738311055)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18303612238317927)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18255257997311049)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18303795667317928)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18303612238317927)
,p_button_name=>'ADD_BLOCK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(18287797131311073)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Block'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303878054317929)
,p_name=>'P2_BC_DATA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18303534847317926)
,p_prompt=>'Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>8
,p_field_template=>wwv_flow_api.id(18287370267311072)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18304005569317931)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_BLOCK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_bc_index blockchain.bc_index%TYPE;',
'BEGIN',
'  l_bc_index := blockchain_pkg.add_block(p_bc_data => :p2_bc_data);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18303795667317928)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18304143289317932)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18303795667317928)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(18298446377311095)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Blockchain Demo - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(18248229041311025)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DHOCHLEITNER'
,p_last_upd_yyyymmddhh24miss=>'20171010002402'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18298910868311123)
,p_plug_name=>'Blockchain Demo'
,p_icon_css_classes=>'fa-link'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18264655787311055)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18299225657311127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18298910868311123)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18287632381311073)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18299057738311125)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18298910868311123)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18287074988311070)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18299172399311127)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18298910868311123)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18287074988311070)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18299468547311128)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18299364813311128)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18299605050311129)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18299551327311129)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(18325962823609327)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DROP TRIGGER blockchain_bi_trg;',
'DROP SEQUENCE blockchain_seq;',
'DROP TABLE blockchain;',
'DROP PACKAGE blockchain_pkg;'))
,p_required_free_kb=>1024
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'BLOCKCHAIN:BLOCKCHAIN_SEQ'
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18326516741673643)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'BLOCKCHAIN_TABLE'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Create table',
'create table BLOCKCHAIN',
'(',
'  bc_index         number not null,',
'  bc_timestamp     timestamp with time zone not null,',
'  bc_data          clob not null,',
'  bc_previous_hash varchar2(500) not null,',
'  bc_hash          varchar2(500) not null',
');',
'-- Create/Recreate primary, unique and foreign key constraints ',
'alter table BLOCKCHAIN',
'  add constraint BLOCKCHAIN_PK primary key (BC_INDEX);',
'-- Create/Recreate indexes ',
'create index BLOCKCHAIN_TIMESTAMP_I on BLOCKCHAIN (BC_TIMESTAMP);',
''))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18326716193675701)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'BLOCKCHAIN_SEQ'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Create sequence ',
'create sequence BLOCKCHAIN_SEQ',
'minvalue 1',
'maxvalue 9999999999999999999999999999',
'start with 1',
'increment by 1',
'nocache;'))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18326912762678321)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'BLOCKCHAIN_BI_TRG'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Create Before Insert Trigger',
'CREATE OR REPLACE TRIGGER blockchain_bi_trg',
'  BEFORE INSERT ON blockchain',
'  FOR EACH ROW',
'DECLARE',
'BEGIN',
'  IF :new.bc_index IS NULL THEN',
'    :new.bc_index := blockchain_seq.nextval;',
'  END IF;',
'END;'))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18327913171728188)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'BLOCKCHAIN_PKG_SPEC'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE blockchain_pkg IS',
'  --',
'  -- Package for Blockchain Operations',
'  --',
'',
'  --',
'  -- Get Blockchain Index of latest Blockchain entry',
'  -- #return NUMBER (bc_index)',
'  FUNCTION get_latest_block_index RETURN blockchain.bc_index%TYPE;',
'  --',
'  -- Get Blockchain Index of previous Blockchain entry',
'  -- #param p_current_index',
'  -- #return NUMBER (bc_index)',
'  FUNCTION get_previous_block_index(p_current_index IN blockchain.bc_index%TYPE)',
'    RETURN blockchain.bc_index%TYPE;',
'  --',
'  -- Get Rowtype Record of specified Blockchain entry (Block)',
'  -- #param p_bc_index',
'  -- #return blockchain%ROWTYPE',
'  FUNCTION get_block(p_bc_index IN blockchain.bc_index%TYPE)',
'    RETURN blockchain%ROWTYPE;',
'  --',
'  -- Get Rowtype Record of latest Blockchain entry (Block)',
'  -- #return blockchain%ROWTYPE',
'  FUNCTION get_latest_block RETURN blockchain%ROWTYPE;',
'  --',
'  -- Get Hash (Default SHA256) of Blockchain Block',
'  -- #param p_blockchain_block',
'  -- #param p_hash_algorithm',
'  -- #return VARCHAR2',
'  FUNCTION get_block_hash(p_blockchain_block IN blockchain%ROWTYPE,',
'                          p_hash_algorithm   IN PLS_INTEGER := dbms_crypto.hash_sh256)',
'    RETURN VARCHAR2;',
'  --',
'  -- Calculate Hash (Default SHA256) of new Blockchain Block',
'  -- #param p_bc_index',
'  -- #param p_bc_timestamp',
'  -- #param p_bc_data',
'  -- #param p_hash_algorithm',
'  -- #return VARCHAR2',
'  FUNCTION calculate_hash(p_bc_index       IN blockchain.bc_index%TYPE,',
'                          p_bc_timestamp   IN blockchain.bc_timestamp%TYPE,',
'                          p_bc_data        IN blockchain.bc_data%TYPE,',
'                          p_hash_algorithm IN PLS_INTEGER := dbms_crypto.hash_sh256)',
'    RETURN VARCHAR2;',
'  --',
'  -- Add new Blockchain Block entry (Autonomous Function)',
'  -- #param p_bc_timestamp',
'  -- #param p_bc_data',
'  -- #return NUMBER (bc_index)',
'  FUNCTION add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,',
'                     p_bc_data      IN blockchain.bc_data%TYPE)',
'    RETURN blockchain.bc_index%TYPE;',
'  --',
'  -- Add new Blockchain Block entry (Calling Autonomous Function)',
'  -- #param p_bc_timestamp',
'  -- #param p_bc_data',
'  -- #param p_bc_index (out)',
'  PROCEDURE add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,',
'                      p_bc_data      IN blockchain.bc_data%TYPE,',
'                      p_bc_index     OUT blockchain.bc_index%TYPE);',
'  --',
'  -- Check if Blockchain is valid',
'  -- #return BOOLEAN',
'  FUNCTION is_blockchain_valid RETURN BOOLEAN;',
'  --',
'  -- Get complete Blockchain as JSON - started with specified index',
'  -- #param p_start_index',
'  -- #return CLOB (JSON)',
'  FUNCTION get_blockchain_json(p_start_index IN blockchain.bc_index%TYPE := 1)',
'    RETURN CLOB;',
'  --',
'  -- Get complete Blockchain as JSON - started with specified index (BLOB)',
'  -- #param p_start_index',
'  -- #return BLOB (JSON)',
'  FUNCTION get_blockchain_json_blob(p_start_index IN blockchain.bc_index%TYPE := 1)',
'    RETURN BLOB;',
'  --',
'END blockchain_pkg;',
'/',
''))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18328203861733547)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'BLOCKCHAIN_PKG_BODY'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE BODY blockchain_pkg IS',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get Blockchain Index of latest Blockchain entry',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_latest_block_index RETURN blockchain.bc_index%TYPE IS',
'    --',
'    l_bc_index blockchain.bc_index%TYPE;',
'    --',
'  BEGIN',
'    --',
'    BEGIN',
'      SELECT MAX(blockchain.bc_index)',
'        INTO l_bc_index',
'        FROM blockchain;',
'    EXCEPTION',
'      WHEN no_data_found THEN',
'        RETURN 0;',
'    END;',
'    --',
'    RETURN l_bc_index;',
'    --',
'  END get_latest_block_index;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get Blockchain Index of previous Blockchain entry',
'  * Author:   Daniel Hochleitner',
'  * Created:  12.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_previous_block_index(p_current_index IN blockchain.bc_index%TYPE)',
'    RETURN blockchain.bc_index%TYPE IS',
'    --',
'    l_bc_index blockchain.bc_index%TYPE;',
'    --',
'    CURSOR l_cur_block_index IS',
'      SELECT blockchain.bc_index',
'        FROM blockchain',
'       WHERE blockchain.bc_index < p_current_index',
'       ORDER BY blockchain.bc_index DESC;',
'    --',
'  BEGIN',
'    --',
'    OPEN l_cur_block_index;',
'    FETCH l_cur_block_index',
'      INTO l_bc_index;',
'    --',
'    IF l_cur_block_index%NOTFOUND THEN',
'      l_bc_index := 0;',
'    END IF;',
'    --',
'    CLOSE l_cur_block_index;',
'    --',
'    RETURN l_bc_index;',
'    --',
'  END get_previous_block_index;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get Rowtype Record of specified Blockchain entry (Block)',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_block(p_bc_index IN blockchain.bc_index%TYPE)',
'    RETURN blockchain%ROWTYPE IS',
'    --',
'    l_blockchain_row blockchain%ROWTYPE;',
'    --',
'  BEGIN',
'    --',
'    BEGIN',
'      SELECT *',
'        INTO l_blockchain_row',
'        FROM blockchain',
'       WHERE blockchain.bc_index = p_bc_index;',
'    EXCEPTION',
'      WHEN no_data_found THEN',
'        l_blockchain_row.bc_index         := 0;',
'        l_blockchain_row.bc_timestamp     := to_timestamp(''01-01-1970 00:00:00'',',
'                                                          ''DD-MM-YYYY HH24:MI:SS'');',
'        l_blockchain_row.bc_data          := ''Genesis'';',
'        l_blockchain_row.bc_previous_hash := 0;',
'        l_blockchain_row.bc_hash          := 0;',
'    END;',
'    --',
'    RETURN l_blockchain_row;',
'    --',
'  END get_block;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get Rowtype Record of latest Blockchain entry (Block)',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_latest_block RETURN blockchain%ROWTYPE IS',
'    --',
'    l_blockchain_row blockchain%ROWTYPE;',
'    --',
'  BEGIN',
'    --',
'    l_blockchain_row := blockchain_pkg.get_block(p_bc_index => blockchain_pkg.get_latest_block_index);',
'    --',
'    RETURN l_blockchain_row;',
'    --',
'  END get_latest_block;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get Hash (Default SHA256) of Blockchain Block',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_block_hash(p_blockchain_block IN blockchain%ROWTYPE,',
'                          p_hash_algorithm   IN PLS_INTEGER := dbms_crypto.hash_sh256)',
'    RETURN VARCHAR2 IS',
'    --',
'    l_hash     VARCHAR2(500);',
'    l_hash_src CLOB;',
'    --',
'  BEGIN',
'    --',
'    l_hash_src := p_blockchain_block.bc_index ||',
'                  to_char(p_blockchain_block.bc_timestamp,',
'                          ''DD.MM.RRRR HH24:MI:SSXFF TZH:TZM'',',
'                          ''nls_numeric_characters = ''''. '''''') ||',
'                  p_blockchain_block.bc_data ||',
'                  p_blockchain_block.bc_previous_hash;',
'    --',
'    l_hash := dbms_crypto.hash(l_hash_src,',
'                               p_hash_algorithm);',
'    --',
'    RETURN l_hash;',
'    --',
'  END get_block_hash;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Calculate Hash (Default SHA256) of new Blockchain Block',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION calculate_hash(p_bc_index       IN blockchain.bc_index%TYPE,',
'                          p_bc_timestamp   IN blockchain.bc_timestamp%TYPE,',
'                          p_bc_data        IN blockchain.bc_data%TYPE,',
'                          p_hash_algorithm IN PLS_INTEGER := dbms_crypto.hash_sh256)',
'    RETURN VARCHAR2 IS',
'    --',
'    l_prev_blockchain_row blockchain%ROWTYPE;',
'    l_prev_hash           VARCHAR2(500);',
'    l_hash                VARCHAR2(500);',
'    l_hash_src            CLOB;',
'    --',
'  BEGIN',
'    --',
'    l_prev_blockchain_row := blockchain_pkg.get_block(p_bc_index => blockchain_pkg.get_previous_block_index(p_current_index => p_bc_index));',
'    l_prev_hash           := l_prev_blockchain_row.bc_hash;',
'    --',
'    l_hash_src := p_bc_index ||',
'                  to_char(p_bc_timestamp,',
'                          ''DD.MM.RRRR HH24:MI:SSXFF TZH:TZM'',',
'                          ''nls_numeric_characters = ''''. '''''') || p_bc_data ||',
'                  l_prev_hash;',
'    --',
'    l_hash := dbms_crypto.hash(l_hash_src,',
'                               p_hash_algorithm);',
'    --',
'    RETURN l_hash;',
'    --',
'  END calculate_hash;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Add new Blockchain Block entry (Autonomous Function)',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,',
'                     p_bc_data      IN blockchain.bc_data%TYPE)',
'    RETURN blockchain.bc_index%TYPE IS',
'    --',
'    PRAGMA AUTONOMOUS_TRANSACTION;',
'    --',
'    l_prev_blockchain_row blockchain%ROWTYPE;',
'    l_prev_hash           VARCHAR2(500);',
'    l_hash                VARCHAR2(500);',
'    l_bc_index            blockchain.bc_index%TYPE;',
'    --',
'  BEGIN',
'    --',
'    LOCK TABLE blockchain IN EXCLUSIVE MODE;',
'    --',
'    l_bc_index            := blockchain_seq.nextval;',
'    l_prev_blockchain_row := blockchain_pkg.get_latest_block;',
'    l_prev_hash           := l_prev_blockchain_row.bc_hash;',
'    l_hash                := blockchain_pkg.calculate_hash(p_bc_index     => l_bc_index,',
'                                                           p_bc_timestamp => p_bc_timestamp,',
'                                                           p_bc_data      => p_bc_data);',
'    --',
'    INSERT INTO blockchain',
'      (bc_index,',
'       bc_timestamp,',
'       bc_data,',
'       bc_previous_hash,',
'       bc_hash)',
'    VALUES',
'      (l_bc_index,',
'       p_bc_timestamp,',
'       p_bc_data,',
'       l_prev_hash,',
'       l_hash);',
'    --',
'    COMMIT;',
'    --',
'    RETURN l_bc_index;',
'    --',
'  END add_block;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Add new Blockchain Block entry (Calling Autonomous Function)',
'  * Author:   Daniel Hochleitner',
'  * Created:  11.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  PROCEDURE add_block(p_bc_timestamp IN blockchain.bc_timestamp%TYPE := systimestamp,',
'                      p_bc_data      IN blockchain.bc_data%TYPE,',
'                      p_bc_index     OUT blockchain.bc_index%TYPE) IS',
'    --',
'    l_bc_index blockchain.bc_index%TYPE;',
'    --',
'  BEGIN',
'    --',
'    l_bc_index := blockchain_pkg.add_block(p_bc_timestamp => nvl(p_bc_timestamp,',
'                                                                 systimestamp),',
'                                           p_bc_data      => p_bc_data);',
'    --',
'    p_bc_index := l_bc_index;',
'    --',
'  END add_block;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Check if Blockchain is valid',
'  * Author:   Daniel Hochleitner',
'  * Created:  09.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION is_blockchain_valid RETURN BOOLEAN IS',
'    --',
'    l_current_block blockchain%ROWTYPE;',
'    l_prev_block    blockchain%ROWTYPE;',
'    l_current_hash  VARCHAR2(500);',
'    --',
'    CURSOR l_cur_blockchain IS',
'      SELECT blockchain.bc_index',
'        FROM blockchain',
'       ORDER BY blockchain.bc_index;',
'    --',
'  BEGIN',
'    --',
'    FOR l_rec_blockchain IN l_cur_blockchain LOOP',
'      l_current_block := blockchain_pkg.get_block(p_bc_index => l_rec_blockchain.bc_index);',
'      l_prev_block    := blockchain_pkg.get_block(p_bc_index => blockchain_pkg.get_previous_block_index(p_current_index => l_rec_blockchain.bc_index));',
'      l_current_hash  := blockchain_pkg.get_block_hash(p_blockchain_block => l_current_block);',
'      --',
'      IF l_current_block.bc_hash != l_current_hash THEN',
'        RETURN FALSE;',
'      END IF;',
'      --',
'      IF l_current_block.bc_previous_hash != l_prev_block.bc_hash THEN',
'        RETURN FALSE;',
'      END IF;',
'      --    ',
'    END LOOP;',
'    --',
'    RETURN TRUE;',
'    --',
'  END is_blockchain_valid;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get complete Blockchain as JSON - started with specified index',
'  * Author:   Daniel Hochleitner',
'  * Created:  10.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_blockchain_json(p_start_index IN blockchain.bc_index%TYPE := 1)',
'    RETURN CLOB IS',
'    --',
'    l_bc_json CLOB;',
'    --',
'    CURSOR l_cur_blockchain IS',
'      SELECT blockchain.bc_index,',
'             to_char(blockchain.bc_timestamp,',
'                     ''DD.MM.RRRR HH24:MI:SSXFF TZH:TZM'',',
'                     ''nls_numeric_characters = ''''. '''''') AS bc_timestamp_string,',
'             apex_escape.json(substr(blockchain.bc_data,',
'                                     1,',
'                                     4000)) AS bc_data_string,',
'             blockchain.bc_previous_hash,',
'             blockchain.bc_hash',
'        FROM blockchain',
'       WHERE blockchain.bc_index >= nvl(p_start_index,',
'                                        1)',
'       ORDER BY blockchain.bc_index;',
'    --',
'  BEGIN',
'    --',
'    apex_json.initialize_clob_output;',
'    apex_json.open_array;',
'    --',
'    FOR l_rec_blockchain IN l_cur_blockchain LOOP',
'      apex_json.open_object;',
'      apex_json.write(''index'',',
'                      l_rec_blockchain.bc_index);',
'      apex_json.write(''timestamp'',',
'                      l_rec_blockchain.bc_timestamp_string);',
'      apex_json.write(''data'',',
'                      l_rec_blockchain.bc_data_string);',
'      apex_json.write(''previousHash'',',
'                      l_rec_blockchain.bc_previous_hash);',
'      apex_json.write(''hash'',',
'                      l_rec_blockchain.bc_hash);',
'      apex_json.close_object;',
'    END LOOP;',
'    --',
'    apex_json.close_array;',
'    --',
'    l_bc_json := apex_json.get_clob_output;',
'    apex_json.free_output;',
'    --',
'    RETURN l_bc_json;',
'    --',
'  END get_blockchain_json;',
'  --',
'  /*************************************************************************',
'  * Purpose:  Get complete Blockchain as JSON - started with specified index (BLOB)',
'  * Author:   Daniel Hochleitner',
'  * Created:  12.10.2017',
'  * Changed:',
'  *************************************************************************/',
'  FUNCTION get_blockchain_json_blob(p_start_index IN blockchain.bc_index%TYPE := 1)',
'    RETURN BLOB IS',
'    --',
'    l_json_clob    CLOB;',
'    l_json_blob    BLOB;',
'    l_dest_offset  INTEGER := 1;',
'    l_src_offset   INTEGER := 1;',
'    l_lang_context INTEGER := dbms_lob.default_lang_ctx;',
'    l_warning      INTEGER := dbms_lob.warn_inconvertible_char;',
'    --',
'  BEGIN',
'    --',
'    l_json_clob := blockchain_pkg.get_blockchain_json(p_start_index => p_start_index);',
'    --',
'    dbms_lob.createtemporary(l_json_blob,',
'                             FALSE);',
'    dbms_lob.converttoblob(dest_lob     => l_json_blob,',
'                           src_clob     => l_json_clob,',
'                           amount       => dbms_lob.lobmaxsize,',
'                           dest_offset  => l_dest_offset,',
'                           src_offset   => l_src_offset,',
'                           blob_csid    => dbms_lob.default_csid,',
'                           lang_context => l_lang_context,',
'                           warning      => l_warning);',
'    --',
'    RETURN l_json_blob;',
'    --',
'  END get_blockchain_json_blob;',
'  --',
'END blockchain_pkg;',
'/',
''))
);
end;
/
prompt --application/deployment/checks
begin
wwv_flow_api.create_install_check(
 p_id=>wwv_flow_api.id(18326103890669461)
,p_install_id=>wwv_flow_api.id(18325962823609327)
,p_name=>'CHECK_DBMS_CRYPTO'
,p_sequence=>10
,p_check_type=>'EXISTS'
,p_check_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT table_privileges.table_name',
'  FROM table_privileges',
' WHERE upper(table_privileges.table_name) = ''DBMS_CRYPTO''',
'   AND upper(table_privileges.grantee) IN',
'       (upper(sys_context(''USERENV'',',
'                          ''CURRENT_SCHEMA'')),',
'        ''PUBLIC'')'))
,p_failure_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DBMS_CRYPTO must be accessible.',
'GRANT EXECUTE ON sys.dbms_crypto TO blockchain_schema;'))
);
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

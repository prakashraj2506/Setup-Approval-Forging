*----------------------------------------------------------------------*
* ITEM HANDLER CLASS
*----------------------------------------------------------------------*
CLASS lhc_zqm_i_sfrg_it DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zqm_i_sfrg_it RESULT result.
ENDCLASS.

CLASS lhc_zqm_i_sfrg_it IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(gt_hd)
      ENTITY zqm_i_sfrg_hd BY \_Item
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(gt_it)
      FAILED DATA(gt_failed).

    result = VALUE #( FOR row IN gt_it (
      %tky = row-%tky

      " obs1_t: Active for rows 1-21
      %features-%field-obs1_t = COND #(
        WHEN row-Itemno = '00001' OR row-Itemno = '00002' OR
             row-Itemno = '00003' OR row-Itemno = '00004' OR
             row-Itemno = '00005' OR row-Itemno = '00006' OR
             row-Itemno = '00007' OR row-Itemno = '00008' OR
             row-Itemno = '00009' OR row-Itemno = '00010' OR
             row-Itemno = '00011' OR row-Itemno = '00012' OR
             row-Itemno = '00013' OR row-Itemno = '00014' OR
             row-Itemno = '00015' OR row-Itemno = '00016' OR
             row-Itemno = '00017' OR row-Itemno = '00018' OR
             row-Itemno = '00019' OR row-Itemno = '00020' OR
             row-Itemno = '00021' OR row-Itemno = '00022'
        THEN if_abap_behv=>fc-f-unrestricted
        ELSE if_abap_behv=>fc-f-read_only )

      " obs2_t: Active for rows 1-21
      %features-%field-obs2_t = COND #(
        WHEN row-Itemno = '00001' OR row-Itemno = '00002' OR
             row-Itemno = '00003' OR row-Itemno = '00004' OR
             row-Itemno = '00005' OR row-Itemno = '00006' OR
             row-Itemno = '00007' OR row-Itemno = '00008' OR
             row-Itemno = '00009' OR row-Itemno = '00010' OR
             row-Itemno = '00011' OR row-Itemno = '00012' OR
             row-Itemno = '00013' OR row-Itemno = '00014' OR
             row-Itemno = '00015' OR row-Itemno = '00016' OR
             row-Itemno = '00017' OR row-Itemno = '00018' OR
             row-Itemno = '00019' OR row-Itemno = '00020' OR
             row-Itemno = '00021' OR row-Itemno = '00022'
        THEN if_abap_behv=>fc-f-unrestricted
        ELSE if_abap_behv=>fc-f-read_only )

      " obs3_t: Active for rows 2-21
      %features-%field-obs3_t = COND #(
        WHEN row-Itemno = '00002' OR row-Itemno = '00003' OR
             row-Itemno = '00004' OR row-Itemno = '00005' OR
             row-Itemno = '00006' OR row-Itemno = '00007' OR
             row-Itemno = '00008' OR row-Itemno = '00009' OR
             row-Itemno = '00010' OR row-Itemno = '00011' OR
             row-Itemno = '00012' OR row-Itemno = '00013' OR
             row-Itemno = '00014' OR row-Itemno = '00015' OR
             row-Itemno = '00016' OR row-Itemno = '00017' OR
             row-Itemno = '00018' OR row-Itemno = '00019' OR
             row-Itemno = '00020' OR row-Itemno = '00021' OR
             row-Itemno = '00022'
        THEN if_abap_behv=>fc-f-unrestricted
        ELSE if_abap_behv=>fc-f-read_only )

      " obs4_t: Active for rows 2-21
      %features-%field-obs4_t = COND #(
        WHEN row-Itemno = '00002' OR row-Itemno = '00003' OR
             row-Itemno = '00004' OR row-Itemno = '00005' OR
             row-Itemno = '00006' OR row-Itemno = '00007' OR
             row-Itemno = '00008' OR row-Itemno = '00009' OR
             row-Itemno = '00010' OR row-Itemno = '00011' OR
             row-Itemno = '00012' OR row-Itemno = '00013' OR
             row-Itemno = '00014' OR row-Itemno = '00015' OR
             row-Itemno = '00016' OR row-Itemno = '00017' OR
             row-Itemno = '00018' OR row-Itemno = '00019' OR
             row-Itemno = '00020' OR row-Itemno = '00021' OR
             row-Itemno = '00022'
        THEN if_abap_behv=>fc-f-unrestricted
        ELSE if_abap_behv=>fc-f-read_only )

      " obs5_t: Active for rows 2-21
      %features-%field-obs5_t = COND #(
        WHEN row-Itemno = '00002' OR row-Itemno = '00003' OR
             row-Itemno = '00004' OR row-Itemno = '00005' OR
             row-Itemno = '00006' OR row-Itemno = '00007' OR
             row-Itemno = '00008' OR row-Itemno = '00009' OR
             row-Itemno = '00010' OR row-Itemno = '00011' OR
             row-Itemno = '00012' OR row-Itemno = '00013' OR
             row-Itemno = '00014' OR row-Itemno = '00015' OR
             row-Itemno = '00016' OR row-Itemno = '00017' OR
             row-Itemno = '00018' OR row-Itemno = '00019' OR
             row-Itemno = '00020' OR row-Itemno = '00021' OR
             row-Itemno = '00022'
        THEN if_abap_behv=>fc-f-unrestricted
        ELSE if_abap_behv=>fc-f-read_only )

      " obs1-obs5 (numeric): Always read only
      %features-%field-obs1 = if_abap_behv=>fc-f-read_only
      %features-%field-obs2 = if_abap_behv=>fc-f-read_only
      %features-%field-obs3 = if_abap_behv=>fc-f-read_only
      %features-%field-obs4 = if_abap_behv=>fc-f-read_only
      %features-%field-obs5 = if_abap_behv=>fc-f-read_only

    ) ).

  ENDMETHOD.

ENDCLASS.


*----------------------------------------------------------------------*
* SAVER CLASS
*----------------------------------------------------------------------*
CLASS lsc_zqm_i_sfrg_hd DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS save_modified REDEFINITION.
ENDCLASS.

CLASS lsc_zqm_i_sfrg_hd IMPLEMENTATION.

  METHOD save_modified.

    IF create-zqm_i_sfrg_hd IS NOT INITIAL.

      DATA lft_item TYPE TABLE OF zqm_t_sfrg_it.
      DATA lft_qp   TYPE TABLE OF zqm_t_sfrg_qp.

      LOOP AT create-zqm_i_sfrg_hd ASSIGNING FIELD-SYMBOL(<lfs_head>).
        DATA(lv_itemno) = 1.

        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Machine Speed'
          specifications = 'As per Process Parameter Chart CP/F/ANN/01'
          mmr = 'Speed Counter' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Length adjusting sleeve distance'
          specifications = 'Adjust length adjusting sleeve distance till to get product length of the job as specified on process drawing'
          mmr = 'Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Length adjusting sleeve distance. (For Last Station in Trimming Method)'
          specifications = 'Adjust Gap Between Product (Piece) and K.O. Pin From 0.5mm to 1.00mm'
          mmr = 'Check By Hand (Rotate Sleeve Through Hand)' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Wire stopper distance (In case of Round Head type jobs)'
          specifications = 'Adjust wire stopper distance till to get head diameter and total length of product as specified on process drawing'
          mmr = 'Micrometer / Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Wire stopper distance (In case of Hex Head Type jobs)'
          specifications = 'Adjust wire stopper distance till to get A/F and total length of product as specified on process drawing'
          mmr = 'Micrometer / Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Wire stopper distance (In case of Flange / Collar type jobs)'
          specifications = 'Adjust wire stopper distance till to get Flange / collar Dia and total length of product as specified on process drawing'
          mmr = 'Micrometer / Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Taper Wedge Distance'
          specifications = 'Adjust taper wedge distance till to head height of job as specified on process drawing'
          mmr = 'Micrometer' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Cleaning of Chute'
          specifications = 'Clean'  mmr = 'Visual Check' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Cleaning of Material Conveyor'
          specifications = 'Clean'  mmr = 'Visual Check' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Cleaning of Oil Tray'
          specifications = 'Clean'  mmr = 'Visual Check' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Length adjusting sleeve Locking'
          specifications = 'Locked'  mmr = 'Tight with Allen Key/Spanner' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Gap Between Punch & Die'
          specifications = 'No Hitting between Punch and Die'
          mmr = 'Ensure Paper Gap' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'K.O PAD Locking Screw/nut/Spring Washer Condition'
          specifications = 'Locked'
          mmr = 'Visual and Tight with Spanner' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Transfer Finger Arm Holding Slot Condition'
          specifications = 'The transfer finger arm holding slots must not be loose'
          mmr = 'Check Transfer Finger Arm Holding Slot By Hand' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Condition of loosen parts of machine during the part setting'
          specifications = 'Loose parts of the machine must be tightened before starting the machine'
          mmr = 'Allen Key/Spanner' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Case Depth'
          specifications = 'More Then P.K.O Stroke Length (As Per Doc.No : FDI/F/L/03)'
          mmr = 'Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Block alignment adjusting screw locking condition.'
          specifications = 'Locked'
          mmr = 'Visual and Tight with Spanner' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Wire Feeding Length'
          specifications = 'Wire feeding checking List (As per Doc No : FDI/F/L/11)'
          mmr = 'Vernier' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Condition of wire stopper'
          specifications = 'Ok/Not ok'
          mmr = 'Visual Check' ) TO lft_item.

           lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Transfer Finger'
          specifications = 'Open Extrusion cone stage (Ok/Not ok)'
          mmr = 'Master Pin (as per drg.)' ) TO lft_item.


        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Setting pieces should be kept in Red Bin'
          specifications = ''  mmr = '' ) TO lft_item.

        lv_itemno += 1.
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = lv_itemno
          parameters = 'Old stage pieces should be used for setting up the part'
          specifications = ''  mmr = '' ) TO lft_item.

        " Quality Parameters
        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = '00001'
          parameters = 'Concentricity of Core w.r.t TRD Shank'
          specifications = '0.20 MM Max'
          mmr = 'Plunger Dial & Block'
          station = '1st' ) TO lft_qp.

        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = '00002'
          parameters = 'Concentricity of Head w.r.t TRD Shank'
          specifications = '0.20 MM Max'
          mmr = 'Plunger Dial & Block'
          station = '2nd' ) TO lft_qp.

        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = '00003'
          parameters = 'Concentricity of Across Flat w.r.t TRD Shank'
          specifications = '0.20 MM Max'
          mmr = 'Plunger Dial & Block'
          station = '3rd' ) TO lft_qp.

        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = '00004'
          parameters = 'Concentricity of Shank w.r.t TRD (Metal End)'
          specifications = '0.20 MM Max'
          mmr = 'Plunger Dial & Block'
          station = '4th' ) TO lft_qp.

        APPEND VALUE #( cuuid = <lfs_head>-cuuid  itemno = '00005'
          parameters = 'Concentricity of Shank w.r.t TRD (Nut End)'
          specifications = '0.20 MM Max'
          mmr = 'Plunger Dial & Block'
          station = '5th' ) TO lft_qp.

      ENDLOOP.

      MODIFY zqm_t_sfrg_it FROM TABLE @lft_item.
      MODIFY zqm_t_sfrg_qp FROM TABLE @lft_qp.

    ENDIF.

    IF update-zqm_i_sfrg_it IS NOT INITIAL.
      LOOP AT update-zqm_i_sfrg_it ASSIGNING FIELD-SYMBOL(<lfs_item>).
        IF <lfs_item>-Itemno = '00020'.
          UPDATE zqm_t_sfrg_hd
            SET submittedtoprd_time = @sy-uzeit
            WHERE cuuid = @<lfs_item>-Cuuid.
        ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.

ENDCLASS.


*----------------------------------------------------------------------*
* HEADER HANDLER CLASS
*----------------------------------------------------------------------*
CLASS lhc_zqm_i_sfrg_hd DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zqm_i_sfrg_hd RESULT result.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zqm_i_sfrg_hd RESULT result.

    METHODS getitem FOR MODIFY
      IMPORTING keys FOR ACTION zqm_i_sfrg_hd~getitem.

    METHODS getpdf FOR MODIFY
      IMPORTING keys FOR ACTION zqm_i_sfrg_hd~getpdf RESULT result.

    METHODS createsetupno FOR DETERMINE ON SAVE
      IMPORTING keys FOR zqm_i_sfrg_hd~createsetupno.

    METHODS updateheaderdetails FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zqm_i_sfrg_hd~updateheaderdetails.

    METHODS verifygrade FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zqm_i_sfrg_hd~verifygrade.

ENDCLASS.


CLASS lhc_zqm_i_sfrg_hd IMPLEMENTATION.

  METHOD get_instance_authorizations.
    READ ENTITY IN LOCAL MODE zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_header).

    result = VALUE #( FOR ls_header IN lt_header (
      %tky    = ls_header-%tky
      %update = if_abap_behv=>auth-allowed
      %delete = if_abap_behv=>auth-allowed
      %action-getpdf  = if_abap_behv=>auth-allowed
      %action-getitem = if_abap_behv=>auth-allowed
    ) ).
  ENDMETHOD.


  METHOD get_instance_features.
    READ ENTITY IN LOCAL MODE zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_header).

    result = VALUE #( FOR ls_header IN lt_header (
      %tky = ls_header-%tky
      %features-%field-Batch = COND #(
        WHEN ls_header-Batch IS NOT INITIAL
        THEN if_abap_behv=>fc-f-read_only
        ELSE if_abap_behv=>fc-f-unrestricted )
      %features-%field-Manufacturingorder = COND #(
        WHEN ls_header-Manufacturingorder IS NOT INITIAL
        THEN if_abap_behv=>fc-f-read_only
        ELSE if_abap_behv=>fc-f-unrestricted )
    ) ).
  ENDMETHOD.


  METHOD getitem.
    MODIFY ENTITY IN LOCAL MODE zqm_i_sfrg_hd
      CREATE BY \_Item
      AUTO FILL CID
      FIELDS ( Cuuid Itemno Parameters Specifications )
      WITH VALUE #(
        FOR key IN keys
        ( %is_draft = if_abap_behv=>mk-on
          %key      = key-%key
          %cid_ref  = key-%cid_ref
          %target   = VALUE #(
            ( %is_draft  = if_abap_behv=>mk-on
              %cid       = 'CID_10'
              %key-Cuuid = key-%key-Cuuid
              Itemno         = '10'
              Parameters     = 'Parameters'
              Specifications = 'Specifications'
            )
          )
        )
      )
      REPORTED reported FAILED failed MAPPED mapped.
  ENDMETHOD.


  METHOD getpdf.
    DATA: lv_base64  TYPE string,
          lv_token   TYPE string,
          lv_message TYPE string.
    DATA lft_header TYPE TABLE OF zqm_i_sfrg_hd.
    DATA lft_item   TYPE TABLE OF zqm_i_sfrg_it.
    DATA lft_qp     TYPE TABLE OF zqm_i_sfrg_qp.

    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lit_header_data)
      FAILED DATA(lit_failed).

    IF lit_header_data IS INITIAL.
      RETURN.
    ENDIF.

    DATA(lfs_header) = VALUE #( lit_header_data[ 1 ] ).

    SELECT * FROM zqm_i_sfrg_it
      WHERE Cuuid = @lfs_header-Cuuid
      INTO TABLE @lft_item.

    SELECT * FROM zqm_i_sfrg_qp
      WHERE Cuuid = @lfs_header-Cuuid
      INTO TABLE @lft_qp.

    MOVE-CORRESPONDING lit_header_data TO lft_header.

    TRY.
        zcl_btp_adobe_form=>get_ouath_token(
          EXPORTING im_oauth_url    = 'ADS_OAUTH_URL'
                    im_clientid     = 'ADS_CLIENTID'
                    im_clientsecret = 'ADS_CLIENTSECRET'
          IMPORTING ex_token        = lv_token
                    ex_message      = lv_message ).
      CATCH cx_root INTO DATA(lx_oauth).
        APPEND VALUE #( %tky = lfs_header-%tky
          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
            text = |OAuth Error: { lx_oauth->get_text( ) }| )
        ) TO reported-zqm_i_sfrg_hd.
        APPEND VALUE #( %tky = lfs_header-%tky ) TO failed-zqm_i_sfrg_hd.
        RETURN.
    ENDTRY.

    IF lv_token IS INITIAL.
      APPEND VALUE #( %tky = lfs_header-%tky
        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
          text = |Token failed: { lv_message }| )
      ) TO reported-zqm_i_sfrg_hd.
      APPEND VALUE #( %tky = lfs_header-%tky ) TO failed-zqm_i_sfrg_hd.
      RETURN.
    ENDIF.

    zbp_qm_i_sfrg_hd=>get_pdf_xml(
      EXPORTING im_data_h = lft_header
                im_data_i = lft_item
                im_data_q = lft_qp
      IMPORTING ex_base_64 = lv_base64 ).

    DATA(lv_form_name) = |ZSETUP_APPROVAL/Setup_App_Forging_Template|.

    TRY.
        zcl_btp_adobe_form=>get_pdf_api(
          EXPORTING im_url           = 'ADS_URL'
                    im_url_path      = '/v1/adsRender/pdf?TraceLevel=2&templateSource=storageName'
                    im_clientid      = 'ADS_CLIENTID'
                    im_clientsecret  = 'ADS_CLIENTSECRET'
                    im_token         = lv_token
                    im_base64_encode = lv_base64
                    im_xdp_template  = lv_form_name
          IMPORTING ex_base64_decode = DATA(lv_base64_decode)
                    ex_message       = lv_message ).
      CATCH cx_root INTO DATA(lx_pdf).
        APPEND VALUE #( %tky = lfs_header-%tky
          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
            text = |PDF Error: { lx_pdf->get_text( ) }| )
        ) TO reported-zqm_i_sfrg_hd.
        APPEND VALUE #( %tky = lfs_header-%tky ) TO failed-zqm_i_sfrg_hd.
        RETURN.
    ENDTRY.

    IF lv_base64_decode IS INITIAL.
      APPEND VALUE #( %tky = lfs_header-%tky
        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
          text = |Empty PDF: { lv_message }| )
      ) TO reported-zqm_i_sfrg_hd.
      APPEND VALUE #( %tky = lfs_header-%tky ) TO failed-zqm_i_sfrg_hd.
      RETURN.
    ENDIF.

    MODIFY ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      UPDATE FIELDS ( Attachments Filename Mimetype )
      WITH VALUE #( FOR lwa_header IN lit_header_data (
        %tky        = lwa_header-%tky
        %key        = lwa_header-%key
        Attachments = lv_base64_decode
        Filename    = 'SetupApproval.pdf'
        Mimetype    = 'application/pdf'
      ) )
      FAILED failed  REPORTED reported.

    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lit_updated).

    result = VALUE #( FOR lwa_upd IN lit_updated (
      %tky = lwa_upd-%tky  %param = lwa_upd ) ).
  ENDMETHOD.


  METHOD createsetupno.
    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_header).

    IF lt_header IS NOT INITIAL.
      DATA(ls_header) = VALUE #( lt_header[ 1 ] OPTIONAL ).
      DATA lv_setup(20) TYPE c.

      SELECT COUNT( cuuid ) FROM zqm_t_sfrg_hd
        INTO @DATA(lv_count).

      lv_setup = lv_count + 1.
      SHIFT lv_setup LEFT DELETING LEADING space.

      MODIFY ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
        ENTITY zqm_i_sfrg_hd
        UPDATE FIELDS ( setupapprovalno zdate submittedtoqa_time )
        WITH VALUE #( (
          %is_draft                   = ls_header-%is_draft
          Cuuid                       = VALUE #( keys[ 1 ]-Cuuid OPTIONAL )
          setupapprovalno             = lv_setup
          zdate                       = sy-datum
          submittedtoqa_time          = sy-uzeit
          %control-setupapprovalno    = if_abap_behv=>mk-on
          %control-zdate              = if_abap_behv=>mk-on
          %control-submittedtoqa_time = if_abap_behv=>mk-on
        ) )
        FAILED DATA(lt_fail)
        REPORTED DATA(lt_reported)
        MAPPED DATA(lt_mapped).
    ENDIF.
  ENDMETHOD.


  METHOD updateheaderdetails.
    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_mat_data).

    IF lt_mat_data IS INITIAL.
      RETURN.
    ENDIF.

    DATA(ls_mat_data) = VALUE #( lt_mat_data[ 1 ] OPTIONAL ).

    " Skip if already populated
    IF ls_mat_data-Material IS NOT INITIAL.
      RETURN.
    ENDIF.

    SELECT SINGLE ref_productionorder
      FROM zc_prod_log_hd WITH PRIVILEGED ACCESS
      WHERE productionorder = @ls_mat_data-Manufacturingorder
      INTO @DATA(lv_par_prod).

    SELECT SINGLE YY1_PP_Product_Desc_ORD, productionplant, billofoperationsmaterial
      FROM I_ProductionOrder
      WHERE ProductionOrder = @lv_par_prod
      INTO @DATA(wa_pod_ord).

    SELECT SINGLE billofoperationsmaterial, productionplant
      FROM I_ProductionOrder
      WHERE ProductionOrder = @ls_mat_data-Manufacturingorder
      INTO @DATA(wa_prod).

    " Raw Material Spec — from FORGING child order BOM
    SELECT SINGLE productionorder
      FROM zc_prod_log_hd WITH PRIVILEGED ACCESS
      WHERE ref_productionorder = @lv_par_prod
        AND operationtext = 'FORGING'
      INTO @DATA(lv_rm_spec_prod).

    SELECT SINGLE material
      FROM i_productionordercomponent WITH PRIVILEGED ACCESS
      WHERE productionorder = @lv_rm_spec_prod
      INTO @DATA(lv_raw_mat).

    " Characteristics from parent order material
    SELECT a~ClfnObjectID, a~CharcInternalID, a~CharcValue, b~Characteristic
      FROM i_clfnobjectcharcvalforkeydate( p_keydate = @sy-datum ) AS a
      INNER JOIN I_ClfnCharacteristicForKeyDate( p_keydate = @sy-datum ) AS b
        ON b~CharcInternalID = a~CharcInternalID
      WHERE ClfnObjectID = @wa_pod_ord-BillOfOperationsMaterial
      INTO TABLE @DATA(lft_char_value).

    DATA(lv_drgno)           = VALUE #( lft_char_value[ Characteristic = 'DRAWING_NO' ]-CharcValue OPTIONAL ).
    DATA(lv_grade)           = VALUE #( lft_char_value[ Characteristic = 'ITEM_GRADE' ]-CharcValue OPTIONAL ).
    DATA(lv_rmspecification) = VALUE #( lft_char_value[ Characteristic = '0000000823' ]-CharcValue OPTIONAL ).
    DATA(lv_partno)          = VALUE #( lft_char_value[ Characteristic = 'ITEM_CODE' ]-CharcValue OPTIONAL ).

    DATA lv_text TYPE string.
    IF wa_pod_ord-BillOfOperationsMaterial IS NOT INITIAL.
      zpp_cl_mat_longtext=>get_data(
        EXPORTING im_value    = wa_pod_ord-BillOfOperationsMaterial
        IMPORTING ex_longtext = lv_text ).
    ENDIF.

    DATA: lv_production     TYPE n LENGTH 12,
          lv_nextproduction TYPE n LENGTH 12,
          lv_preproduction  TYPE n LENGTH 12,
          lv_nextprod       TYPE p DECIMALS 0,
          lv_preprod        TYPE p DECIMALS 0.

    DATA: lv_optext      TYPE string,
          lv_operno      TYPE string,
          lv_next_optext TYPE string,
          lv_pre_optext  TYPE string,
          lv_par_ord     TYPE string.

    IF ls_mat_data-Manufacturingorder IS NOT INITIAL.
      lv_production = ls_mat_data-Manufacturingorder.

      SELECT SINGLE operationtext
        FROM zr_prod_log_hd WITH PRIVILEGED ACCESS
        WHERE Productionorder = @lv_production
        INTO @lv_optext.

      IF lv_optext IS NOT INITIAL.
        SELECT SINGLE value_low FROM zoperation_no_vh WITH PRIVILEGED ACCESS
          WHERE language = 'E'
            AND text = @lv_optext
          INTO @lv_operno.
      ENDIF.

      SELECT SINGLE ref_productionorder
        FROM zr_prod_log_hd WITH PRIVILEGED ACCESS
        WHERE Productionorder = @lv_production
        INTO @lv_par_ord.

      lv_nextprod       = lv_production + 1.
      lv_preprod        = lv_production - 1.
      lv_nextproduction = lv_nextprod.
      lv_preproduction  = lv_preprod.

      IF lv_nextproduction IS NOT INITIAL.
        SELECT SINGLE operationtext
          FROM zr_prod_log_hd WITH PRIVILEGED ACCESS
          WHERE Productionorder = @lv_nextproduction
            AND ref_productionorder = @lv_par_ord
          INTO @lv_next_optext.
      ENDIF.

      IF lv_preproduction IS NOT INITIAL.
        SELECT SINGLE operationtext
          FROM zr_prod_log_hd WITH PRIVILEGED ACCESS
          WHERE Productionorder = @lv_preproduction
            AND ref_productionorder = @lv_par_ord
          INTO @lv_pre_optext.
      ENDIF.
    ENDIF.

    MODIFY ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      UPDATE FIELDS (
        zdate Drgno Grade Material plant
        RmSpecification PartNo partdesc rawmatspec
        operationdetails nextoperation previousoperation
        currentoperationno )
      WITH VALUE #( (
        %is_draft          = ls_mat_data-%is_draft
        Cuuid              = VALUE #( keys[ 1 ]-Cuuid OPTIONAL )
        zdate              = sy-datum
        Material           = wa_prod-BillOfOperationsMaterial
        Drgno              = lv_drgno
        Grade              = lv_grade
        RmSpecification    = lv_rmspecification
        PartNo             = lv_partno
        partdesc           = lv_text
        plant              = wa_prod-ProductionPlant
        rawmatspec         = lv_raw_mat
        nextoperation      = lv_next_optext
        previousoperation  = lv_pre_optext
        currentoperationno = lv_operno
        operationdetails   = lv_optext
        %control-zdate              = if_abap_behv=>mk-on
        %control-Drgno              = if_abap_behv=>mk-on
        %control-Grade              = if_abap_behv=>mk-on
        %control-Material           = if_abap_behv=>mk-on
        %control-plant              = if_abap_behv=>mk-on
        %control-RmSpecification    = if_abap_behv=>mk-on
        %control-PartNo             = if_abap_behv=>mk-on
        %control-partdesc           = if_abap_behv=>mk-on
        %control-rawmatspec         = if_abap_behv=>mk-on
        %control-operationdetails   = if_abap_behv=>mk-on
        %control-nextoperation      = if_abap_behv=>mk-on
        %control-previousoperation  = if_abap_behv=>mk-on
        %control-currentoperationno = if_abap_behv=>mk-on
      ) )
      FAILED DATA(lt_fail)
      REPORTED DATA(lt_reported)
      MAPPED DATA(lt_mapped).

  ENDMETHOD.


  METHOD verifygrade.
    "*************************************************************
    "* FIXED: Same as Thread Rolling reference (lhc_zqm_i_str_hd)
    "* Uses ls_mat_data-Material directly (NOT parent order)
    "*************************************************************
    READ ENTITIES OF zqm_i_sfrg_hd IN LOCAL MODE
      ENTITY zqm_i_sfrg_hd
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_mat_data).

    IF lt_mat_data IS NOT INITIAL.
      DATA(ls_mat_data) = VALUE #( lt_mat_data[ 1 ] OPTIONAL ).

      " Read ITEM_GRADE from Material field directly
      SELECT a~ClfnObjectID, a~CharcInternalID, a~CharcValue, b~Characteristic
        FROM i_clfnobjectcharcvalforkeydate( p_keydate = @sy-datum ) AS a
        INNER JOIN I_ClfnCharacteristicForKeyDate( p_keydate = @sy-datum ) AS b
          ON b~CharcInternalID = a~CharcInternalID
        WHERE ClfnObjectID = @ls_mat_data-Material
        INTO TABLE @DATA(lft_char_value).

      DATA(lv_grade) = VALUE #(
        lft_char_value[ Characteristic = 'ITEM_GRADE' ]-CharcValue OPTIONAL ).

      " Compare user entered Grade vs Material Master Grade
      IF ls_mat_data IS NOT INITIAL AND ls_mat_data-Grade <> lv_grade.
        APPEND VALUE #(
          %tky = ls_mat_data-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text     = 'Grade value does not match to Material Master' )
        ) TO reported-zqm_i_sfrg_hd.
      ENDIF.
    ENDIF.
  ENDMETHOD.

ENDCLASS.

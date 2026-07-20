CLASS zbp_qm_i_sfrg_hd DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF zqm_i_sfrg_hd.

  TYPES: ltt_data_h TYPE TABLE OF zqm_i_sfrg_hd.
  TYPES: ltt_data_i TYPE TABLE OF zqm_i_sfrg_it.
  TYPES: ltt_data_q TYPE TABLE OF zqm_i_sfrg_qp.

  PUBLIC SECTION.
    CLASS-DATA gv_ins_lot TYPE c LENGTH 12.

    CLASS-METHODS get_pdf_xml
      IMPORTING
        im_data_h  TYPE ltt_data_h
        im_data_i  TYPE ltt_data_i
        im_data_q  TYPE ltt_data_q
      EXPORTING
        ex_base_64 TYPE string.

ENDCLASS.



CLASS ZBP_QM_I_SFRG_HD IMPLEMENTATION.


  METHOD get_pdf_xml.

    DATA lwa_data TYPE zqm_i_sfrg_hd.
    DATA lv_xml   TYPE string.
    DATA lv_count TYPE i.

    DATA:lv_unit2 TYPE string VALUE '0',
         lv_unit4 TYPE string VALUE '0'.

    lwa_data = VALUE #( im_data_h[ 1 ] OPTIONAL ).

    " Plant → Unit checkbox mapping
    CASE lwa_data-Plant.
      WHEN 'MHU2'.
        lv_unit2 = '1'.
      WHEN 'MHU4'.
        lv_unit4 = '1'.
    ENDCASE.


    " ===== Build Header XML =====
    lv_xml =
      |<?xml version="1.0" encoding="UTF-8"?>| &&
      |<data>| &&
      |<PPSetup>| &&
      |<Header>| &&
      |<Date>{ lwa_data-zdate }</Date>| &&
      |<Shift>{ lwa_data-dateshift }</Shift>| &&
      |<Machine>{ lwa_data-machine }</Machine>| &&
      |<PartNo>{ lwa_data-Partno }</PartNo>| &&
      |<PartDescription>{ lwa_data-partdesc }</PartDescription>| &&
      |<SKSDrgNo>{ lwa_data-Drgno }</SKSDrgNo>| &&
      |<RawMaterialSpec>{ lwa_data-rawmatspec }</RawMaterialSpec>| &&
      |<ToolNo>{ lwa_data-toolno }</ToolNo>| &&
      |<LotNo>{ lwa_data-Lotno }</LotNo>| &&
      |<BatchNo>{ lwa_data-Batch }</BatchNo>| &&
      |<Operator>{ lwa_data-operator }</Operator>| &&
      |<CurrentOperationNumber>{ lwa_data-currentoperationno }</CurrentOperationNumber>| &&
      |<OperationDetails>{ lwa_data-operationdetails }</OperationDetails>| &&
      |<Inspector>{ lwa_data-inspector }</Inspector>| &&
      |<PreviousOperation>{ lwa_data-previousoperation }</PreviousOperation>| &&
      |<NextOperation>{ lwa_data-nextoperation }</NextOperation>| &&
      |<Grade>{ lwa_data-Grade }</Grade>| &&
      |<Plant>{ lwa_data-Plant }</Plant>| &&
      |<SetupApprovalNo>{ lwa_data-setupapprovalno }</SetupApprovalNo>| &&
      |<ManufacturingOrder>{ lwa_data-Manufacturingorder }</ManufacturingOrder>| &&
      |<Material>{ lwa_data-Material }</Material>| &&
      |<UnitII>{ lwa_data-UnitII }</UnitII>| &&
      |<UnitIV>{ lwa_data-UnitIV }</UnitIV>| &&
      |<SpecPerDrawing>{ lwa_data-SpecPerDrawing }</SpecPerDrawing>| &&
      |<UNIT_II>| && lv_unit2 && |</UNIT_II>| &&
      |<UNIT_IV>| && lv_unit4 && |</UNIT_IV>| &&
      |</Header>| &&
      |<Items>|.

    " ===== Build Items XML =====
    DATA(lft_data) = im_data_i.
    SORT lft_data BY Itemno ASCENDING.

    LOOP AT lft_data INTO DATA(lwa_item).
      lv_count = lv_count + 1.

      DATA(lv_item) =
        |<Item>| &&
        |<SrNo>{ lv_count }</SrNo>| &&
        |<Parameter>{ lwa_item-Parameters }</Parameter>| &&
        |<Specification>{ lwa_item-Specifications }</Specification>| &&
        |<MMR>{ lwa_item-Mmr }</MMR>| &&
        |<Observation1>{ lwa_item-obs1_t }</Observation1>| &&
        |<Observation2>{ lwa_item-obs2_t }</Observation2>| &&
        |<Observation3>{ lwa_item-obs3_t }</Observation3>| &&
        |<Observation4>{ lwa_item-obs4_t }</Observation4>| &&
        |<Observation5>{ lwa_item-obs5_t }</Observation5>| &&
        |<Observation6>{ lwa_item-Obs1 }</Observation6>| &&
        |<Observation7>{ lwa_item-Obs2 }</Observation7>| &&
        |<Observation8>{ lwa_item-Obs3 }</Observation8>| &&
        |<Observation9>{ lwa_item-Obs4 }</Observation9>| &&
        |<Observation10>{ lwa_item-Obs5 }</Observation10>| &&
        |</Item>|.

      lv_xml = lv_xml && lv_item.
      CLEAR lv_item.
    ENDLOOP.

    lv_xml = lv_xml && |</Items>|.

    " ===== Build Quality Parameters XML =====
    lv_xml = lv_xml && |<QualityParams>|.

    DATA(lft_qp) = im_data_q.
    SORT lft_qp BY Itemno ASCENDING.
    DATA(lv_qcount) = 0.

    LOOP AT lft_qp INTO DATA(lwa_qp).
      lv_qcount = lv_qcount + 1.

      DATA(lv_qp) =
        |<QualityParam>| &&
        |<SrNo>{ lv_qcount }</SrNo>| &&
        |<Parameter>{ lwa_qp-Parameters }</Parameter>| &&
        |<Specification>{ lwa_qp-Specifications }</Specification>| &&
        |<MMR>{ lwa_qp-Mmr }</MMR>| &&
        |<Station>{ lwa_qp-Station }</Station>| &&
        |<Observation>{ lwa_qp-Observation }</Observation>| &&
        |<Result>{ lwa_qp-Result1 }</Result>| &&
        |</QualityParam>|.

      lv_xml = lv_xml && lv_qp.
      CLEAR lv_qp.
    ENDLOOP.

    lv_xml = lv_xml && |</QualityParams>|.

    " ===== Build Footer XML =====
    DATA(lv_footer) =
      |<Footer>| &&
      |<QAToProd>{ lwa_data-submittedtoprd }</QAToProd>| &&
      |<QATime>{ lwa_data-submittedtoprd_time }</QATime>| &&
      |<ProdToQA>{ lwa_data-submittedtoqa }</ProdToQA>| &&
      |<ProdTime>{ lwa_data-submittedtoqa_time }</ProdTime>| &&
      |<Remarks>{ lwa_data-remarks }</Remarks>| &&
      |<InspectBy>{ lwa_data-inspectby }</InspectBy>| &&
      |</Footer>| &&
      |</PPSetup>| &&
      |</data>|.

    lv_xml = lv_xml && lv_footer.

    " Escape special characters
    REPLACE ALL OCCURRENCES OF '&' IN lv_xml WITH '&#38;'.
    REPLACE ALL OCCURRENCES OF '²' IN lv_xml WITH '&#178;'.
    REPLACE ALL OCCURRENCES OF '°' IN lv_xml WITH '&#176;'.
    REPLACE ALL OCCURRENCES OF '–' IN lv_xml WITH '-'.

    ex_base_64 = cl_web_http_utility=>encode_base64( unencoded = lv_xml ).

  ENDMETHOD.
ENDCLASS.

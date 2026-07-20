@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Setup Approval Forging HD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity ZQM_C_SFRG_HD
  provider contract transactional_query
  as projection on zqm_i_sfrg_hd
{
  key Cuuid,
      Inspectionlot,
      Lotcreate,
      Startofinsp,
      Endofinsp,
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'Plant', name: 'I_PlantStdVH' } }]
      Plant,
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'Product', name: 'I_ProductText' } }]
      Material,
      Customer,
      Baseunit,
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'ManufacturingOrder', name: 'ZCDS_VH_05' } }]
      Manufacturingorder,
      Inspectionlotobjecttext,
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'Batch', name: 'I_Batch' } }]
      Batch,
      Supplier,
      Manufacturer,
      Inspectionoperation,
      Inspection,
      Salesorder,
      Drgno,
      RmSpecification,
      Grade,
      Partno,
      Operationtext,
      Workcentertext,
      Operationconfirmation,
      Shift,
      Operatorname,
      Previousopt,
      Nextopt,
      Filename,
      @Semantics.largeObject:{
            mimeType: 'Mimetype',
            fileName: 'Filename',
            contentDispositionPreference: #INLINE
            }
      Attachments,
      Mimetype,
      Materialdescription,
      Customername,
      QtyChkd,
      InvNo,
      InvDate,
      CustDraw,
      SksDraw,
      Materiallongtxt,
      FilenameUl,
      AttachmentsUl,
      MimetypeUl,
      Formtype,
      refnum,
      partdesc,
      toolno,
      rawmatspec,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZD_OPERATOR_NAME', element: 'operatorNameText' } }]
      operator,
      currentoperationno,
      operationdetails,
      inspector,
      previousoperation,
      nextoperation,
      @Consumption.valueHelpDefinition: [{ entity : { name: 'ZCDS_QM_DD_01', element: 'Value' } }]
      dateshift,
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'WorkCenter', name: 'ZI_WorkCenter' } }]
      machine,
      remarks,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZD_APPROVED_BY', element: 'operatorNameText' } }]
      inspectby,
      submittedtoprd,
      submittedtoqa,
      submittedtoprd_time,
      submittedtoqa_time,
      setupapprovalno,
      zdate,
      UnitII,
      UnitIV,
      Lotno,
      SpecPerDrawing,
      ImgForgingFile,
      @Semantics.largeObject:{
            mimeType: 'ImgForgingMime',
            fileName: 'ImgForgingFile',
            contentDispositionPreference: #INLINE
            }
      ImgForging,
      ImgForgingMime,
      ImgQualityFile,
      @Semantics.largeObject:{
            mimeType: 'ImgQualityMime',
            fileName: 'ImgQualityFile',
            contentDispositionPreference: #INLINE
            }
      ImgQuality,
      ImgQualityMime,
      @Semantics.systemDateTime.createdAt: true
      CreatedOn,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      ChangedOn,
      @Semantics.user.lastChangedBy: true
      ChangedBy,
      LocalLastChangedOn,
      LocalLastChangedBy,
      _Item         : redirected to composition child ZQM_C_SFRG_IT,
      _QualityParam : redirected to composition child ZQM_C_SFRG_QP
}

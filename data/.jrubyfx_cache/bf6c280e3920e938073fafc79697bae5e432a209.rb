# c91c4d210d85c62ab1245b40d0e7e4e973a12dad encoding: utf-8
# @@ 1

########################### DO NOT MODIFY THIS FILE ###########################
#       This file was automatically generated by JRubyFX-fxmlloader on        #
# 2019-07-22 00:08:38 -0300 for /home/alatriste/programacion/sumario/data/diligencias.fxml
########################### DO NOT MODIFY THIS FILE ###########################

module JRubyFX
  module GeneratedAssets
    class AOTbf6c280e3920e938073fafc79697bae5e432a209
      include JRubyFX
          def __build_via_jit(__local_fxml_controller, __local_namespace, __local_jruby_ext)
      __local_fx_id_setter = lambda do |name, __i|
        __local_namespace[name] = __i
        __local_fxml_controller.instance_variable_set(("@#{name}").to_sym, __i)
      end

build(Java::JavafxSceneControl::TabPane) do
 setId("panel_diligencias")
 __local_fx_id_setter.call("panel_diligencias", self)
 __local_jruby_ext[:on_root_set].call(self) if __local_jruby_ext[:on_root_set]
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::TextArea) do
    setId("campo_texto_constancia")
    __local_fx_id_setter.call("campo_texto_constancia", self)
    setLayoutX(31.0)
    setLayoutY(114.0)
    setPrefHeight(361.0)
    setPrefWidth(577.0)
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::DatePicker) do
    setId("fecha_constancia")
    __local_fx_id_setter.call("fecha_constancia", self)
    setEditable(false)
    setLayoutX(399.0)
    setLayoutY(22.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(446.0)
    setLayoutY(6.0)
    setText("Fecha diligencia")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_constancia")
    __local_fx_id_setter.call("boton_generar_constancia", self)
    setLayoutX(288.0)
    setLayoutY(489.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_constancia"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("titulo_constancia")
    __local_fx_id_setter.call("titulo_constancia", self)
    setLayoutX(31.0)
    setLayoutY(78.0)
    setPrefHeight(26.0)
    setPrefWidth(578.0)
    setText("Constancia de la Instruccion")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(57.0)
    setLayoutY(55.0)
    setText("Titulo")
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("CONSTANCIA")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::TextArea) do
    setId("campo_texto_f8")
    __local_fx_id_setter.call("campo_texto_f8", self)
    setLayoutX(31.0)
    setLayoutY(108.0)
    setPrefHeight(361.0)
    setPrefWidth(577.0)
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::DatePicker) do
    setId("fecha_f8")
    __local_fx_id_setter.call("fecha_f8", self)
    setEditable(false)
    setLayoutX(410.0)
    setLayoutY(23.0)
    setStyle("-fx-background-color: #4d9b9b;")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(426.0)
    setLayoutY(6.0)
    setText("Fecha diligencia")
   end)
   getChildren.add(build(Java::JavafxSceneControl::ChoiceBox) do
    setId("box_declarante_f8")
    __local_fx_id_setter.call("box_declarante_f8", self)
    setLayoutX(31.0)
    setLayoutY(73.0)
    setPrefWidth(150.0)
    setStyle("-fx-background-color: #4d9b9b;")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(61.0)
    setLayoutY(57.0)
    setText("Declarante")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_f8")
    __local_fx_id_setter.call("boton_generar_f8", self)
    setLayoutX(284.0)
    setLayoutY(478.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_f8"))
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("F8")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::TextArea) do
    setId("campo_descripcion_vista")
    __local_fx_id_setter.call("campo_descripcion_vista", self)
    setLayoutX(39.0)
    setLayoutY(271.0)
    setPrefHeight(89.0)
    setPrefWidth(570.0)
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_vista")
    __local_fx_id_setter.call("boton_generar_vista", self)
    setLayoutX(288.0)
    setLayoutY(489.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_vista"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(281.0)
    setLayoutY(244.0)
    setText("Descripcion")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_seleccionar_imagen")
    __local_fx_id_setter.call("boton_seleccionar_imagen", self)
    setLayoutX(103.0)
    setLayoutY(67.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Seleccionar imagen")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "seleccionar_imagen"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("campo_seleccionar_imagen")
    __local_fx_id_setter.call("campo_seleccionar_imagen", self)
    setLayoutX(33.0)
    setLayoutY(106.0)
    setPrefHeight(26.0)
    setPrefWidth(286.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setId("etiqueta_seleccionar_imagen")
    __local_fx_id_setter.call("etiqueta_seleccionar_imagen", self)
    setLayoutX(324.0)
    setLayoutY(111.0)
    setPrefHeight(16.0)
    setPrefWidth(270.0)
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("VISTA")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::TextArea) do
    setId("campo_descripcion_sprte_dig")
    __local_fx_id_setter.call("campo_descripcion_sprte_dig", self)
    setLayoutX(35.0)
    setLayoutY(157.0)
    setPrefHeight(89.0)
    setPrefWidth(570.0)
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_sprte_dig")
    __local_fx_id_setter.call("boton_generar_sprte_dig", self)
    setLayoutX(286.0)
    setLayoutY(339.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_sprte_dig"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setLayoutX(284.0)
    setLayoutY(112.0)
    setText("Descripcion")
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("SOPORTE DIG")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_doc_ext")
    __local_fx_id_setter.call("boton_generar_doc_ext", self)
    setLayoutX(279.0)
    setLayoutY(486.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_doc_ext"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setFont(build(FxmlBuilderBuilder, {"size"=>"26.0"}, Java::JavafxSceneText::Font) do
    end)
    setLayoutX(83.0)
    setLayoutY(145.0)
    setPrefHeight(145.0)
    setPrefWidth(456.0)
    setText("Verificar que el documento PDF haya sido guardado con papel en formato LEGAL")
    setTextFill(RubyWrapperBeanAdapter.coerce("#6b0707", Java::JavafxScenePaint::Paint.java_class))
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_seleccionar_doc_ext")
    __local_fx_id_setter.call("boton_seleccionar_doc_ext", self)
    setLayoutX(255.0)
    setLayoutY(290.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Seleccionar PDF")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "seleccionar_doc_ext"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("campo_seleccionar_doc_ext")
    __local_fx_id_setter.call("campo_seleccionar_doc_ext", self)
    setLayoutX(168.0)
    setLayoutY(342.0)
    setPrefHeight(26.0)
    setPrefWidth(286.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setId("etiqueta_seleccionar_doc_ext")
    __local_fx_id_setter.call("etiqueta_seleccionar_doc_ext", self)
    setLayoutX(176.0)
    setLayoutY(378.0)
    setPrefHeight(16.0)
    setPrefWidth(270.0)
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("DOC EXT")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_generar_doc_int")
    __local_fx_id_setter.call("boton_generar_doc_int", self)
    setLayoutX(279.0)
    setLayoutY(486.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Generar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "generar_doc_int"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setFont(build(FxmlBuilderBuilder, {"size"=>"26.0"}, Java::JavafxSceneText::Font) do
    end)
    setLayoutX(83.0)
    setLayoutY(145.0)
    setPrefHeight(145.0)
    setPrefWidth(456.0)
    setText("Verificar que el documento PDF haya sido guardado con papel en formato LEGAL y con margenes policiales")
    setTextFill(RubyWrapperBeanAdapter.coerce("#6b0707", Java::JavafxScenePaint::Paint.java_class))
    setWrapText(true)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_seleccionar_doc_int")
    __local_fx_id_setter.call("boton_seleccionar_doc_int", self)
    setLayoutX(255.0)
    setLayoutY(290.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Seleccionar PDF")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "seleccionar_doc_int"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("campo_seleccionar_doc_int")
    __local_fx_id_setter.call("campo_seleccionar_doc_int", self)
    setLayoutX(168.0)
    setLayoutY(342.0)
    setPrefHeight(26.0)
    setPrefWidth(286.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setId("etiqueta_seleccionar_doc_int")
    __local_fx_id_setter.call("etiqueta_seleccionar_doc_int", self)
    setLayoutX(176.0)
    setLayoutY(378.0)
    setPrefHeight(16.0)
    setPrefWidth(270.0)
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("DOC INT")
 end)
 getTabs.add(build(Java::JavafxSceneControl::Tab) do
  setContent(build(Java::JavafxSceneLayout::AnchorPane) do
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_guardar_diligencias")
    __local_fx_id_setter.call("boton_guardar_diligencias", self)
    setLayoutX(117.0)
    setLayoutY(355.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Guardar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "guardar_diligencias"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_cancelar_diligencias")
    __local_fx_id_setter.call("boton_cancelar_diligencias", self)
    setLayoutX(384.0)
    setLayoutY(355.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Cancelar")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "cancelar_diligencias"))
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("campo_archivo_destino")
    __local_fx_id_setter.call("campo_archivo_destino", self)
    setLayoutX(81.0)
    setLayoutY(128.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::TextField) do
    setId("campo_nombre_archivo")
    __local_fx_id_setter.call("campo_nombre_archivo", self)
    setLayoutX(81.0)
    setLayoutY(230.0)
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setId("etiqueta_archivo_destino")
    __local_fx_id_setter.call("etiqueta_archivo_destino", self)
    setLayoutX(299.0)
    setLayoutY(133.0)
    setPrefHeight(16.0)
    setPrefWidth(299.0)
    setText("Carpeta destino")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Label) do
    setId("etiqueta_nombre_archivo")
    __local_fx_id_setter.call("etiqueta_nombre_archivo", self)
    setLayoutX(299.0)
    setLayoutY(235.0)
    setPrefHeight(16.0)
    setPrefWidth(326.0)
    setText("Nombre archivo")
   end)
   getChildren.add(build(Java::JavafxSceneControl::Button) do
    setId("boton_seleccionar_destino")
    __local_fx_id_setter.call("boton_seleccionar_destino", self)
    setLayoutX(94.0)
    setLayoutY(86.0)
    setMnemonicParsing(false)
    setStyle("-fx-background-color: #4d9b9b;")
    setText("Seleccionar destino")
    setOnAction(EventHandlerWrapper.new(__local_fxml_controller, "seleccionar_destino"))
   end)
   setMinHeight(0.0)
   setMinWidth(0.0)
   setPrefHeight(180.0)
   setPrefWidth(200.0)
  end)
  setStyle("-fx-background-color: #4d9b9b;")
  setText("MENU")
 end)
 setMaxHeight(-Infinity)
 setMaxWidth(-Infinity)
 setMinHeight(-Infinity)
 setMinWidth(-Infinity)
 setPrefHeight(574.0)
 setPrefWidth(638.0)
 setStyle("-fx-background-color: #2f4f4f; -fx-border-color: #32465c;")
 setTabClosingPolicy(Java::javafx::scene::control::TabPane::TabClosingPolicy::UNAVAILABLE)
end
    end

      def hash
        "c91c4d210d85c62ab1245b40d0e7e4e973a12dad"
      end
      def compiled?
        true
      end
    end
  end
end

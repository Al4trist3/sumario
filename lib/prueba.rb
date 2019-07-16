require_relative 'contexto'
require_relative 'causa'
require_relative 'personal'
require_relative 'sumario'
require 'date'




instructor = {nombre: 'Eugenio Lionel BAYOT',
              lp: 174,
              jerarquia: 'Ayudante',
              fecha_nacimiento: Date.new(1990,3,26),
              cargo: 'Jefe del Depto. UNIDAD FEDERAL DE INVESTIGACIONES ESPECIALES',
              estado_civil: 'Soltero',
              sexo: 'masculino'}


secretario = {nombre: 'Subaru BAYOT',
              lp: 174,
              jerarquia: 'Ayudante',
              fecha_nacimiento: Date.new(1990,3,26),
              cargo: 'Policia Federal Argentina',
              estado_civil: 'Soltero',
              sexo: 'masculino'}

declarante = {nombre: 'Trixila BAYOT',
              lp: 911,
              jerarquia: 'Ayudante',
              fecha_nacimiento: Date.new(1990,3,26),
              cargo: 'Policia Federal Argentina',
              estado_civil: 'Soltero',
              sexo: 'femenino'}


contexto = {secretario: Personal.new(secretario),
            declarante: Personal.new(declarante),
            fecha: DateTime.now.to_date,
            titulo: 'Constancia de la Instruccion',
            texto: 'que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido. que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido. que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.',
            instructor: Personal.new(instructor)}



contexto2 = {secretario: Personal.new(secretario),
             declarante: Personal.new(declarante),
            fecha: DateTime.now.to_date,
            titulo: 'Constancia de la Instruccion',
            texto: 'que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.que en este acto y a pedido del prevenido BLAS ALCALDE, se efectuó consulta telefónica con el abonado nro. 1136197773, siendo atendido por el Sr. JOSE VILLANUEVA, PERUANO CI NRO. 45.297.766, ddo., en Tacuarí 1773 piso 5to., "C" CABA, quien manifiesta ser amigo del prevenido. Ante ello se procedió a notificarlo que su amigo se halla alojado en el local de esta Dependencia afectado a actuaciones sumariales caratuladas ROBO EN POBLADO Y EN BANDA, en donde interviene el Juzgado Nacional en lo Criminal de Instruccion Nro. 49 a cargo de la Dra. María Dolores FONTBONA DE POMBO, Secretaria Nro. 169 a cargo del Dr. LADERACH Federico, como así también que se encuentra afectado a actuaciones sumariales caratuladas "articulo 5 inciso c de la Ley 23737, en donde interviene el Juzgado Nacional en lo Criminal y Correccional Federal Nro. 04 a cargo del Dr. Ariel LIJO, Secretaria Nro. 08 a cargo del Dr. Martin CALERA. Asimismo informa que su amigo vive en la calle Santiago del Estero 1742 piso 1ro., "E" CABA, mismo domicilio aportado oportunamente por el prevenido.',
            instructor: Personal.new(instructor)}






causa = {nro: 1111,
         caratula: '',
         juzgado: '',
         expediente: '',
         fiscalia: '',
         fecha_inicio: DateTime.now.to_date,
         damnificados: '',
         imputados: 'N.N'}
        
sumario = {causa: Causa.new(causa)}


s_pdf = Sumario.new({})
s_pdf.generar_constancia(Contexto.new(contexto2))
#s_pdf.generar_vista_fotografica('/home/alatriste/Pictures/f26.jpg', 'LA PRESENTE FOJA LLEVA VISTA FOTOGRAFICA DEL WALLPAPER')
#s_pdf.generar_documento_externo('/home/alatriste/Documents/pruebasumarios/mozilla.pdf')
s_pdf.generar_documento_interno('/home/alatriste/Documents/pruebasumarios/mozilla.pdf')
s_pdf.guardar_sumario('/home/alatriste/Documents/pruebasumarios/prueba interno.pdf')
        
        

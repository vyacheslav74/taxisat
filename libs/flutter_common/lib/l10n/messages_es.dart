import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos los derechos reservados.';
  }

  @override
  String get welcomeTitle => 'Bienvenido a la aplicación';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get settings => 'Ajustes';

  @override
  String get about => 'Acerca de';

  @override
  String get profileInfo => 'Información de perfil';

  @override
  String get language => 'Idioma';

  @override
  String get firstName => 'Nombre de pila';

  @override
  String get lastName => 'Apellido';

  @override
  String get mobileNumber => 'Número de teléfono móvil';

  @override
  String get edit => 'Editar';

  @override
  String get enterCode => 'Introduzca el código';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get bankTransfer => 'Transferencia bancaria';

  @override
  String get gift => 'Regalo';

  @override
  String get correction => 'Corrección';

  @override
  String get inappPayment => 'Pago en la aplicación';

  @override
  String get orderFee => 'Tarifa de pedido';

  @override
  String get parkingFee => 'Tarifa de estacionamiento';

  @override
  String get cancellationFee => 'Tarifa de cancelación';

  @override
  String get withdraw => 'Retirar';

  @override
  String get walletTransactions => 'Transacciones de billetera';

  @override
  String get addCard => 'Agregar tarjeta';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'Tarjeta MasterCard';

  @override
  String get addBalance => 'Agregar saldo';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minutos',
      one: '$minutesString Minuto',
      zero: 'Zero minutes',
    );
    return '$_temp0';
  }

  @override
  String durationInHours(num hours) {
    final intl.NumberFormat hoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String hoursString = hoursNumberFormat.format(hours);

    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hoursString Horas',
      one: '$hoursString Hora',
      zero: 'Zero hours',
    );
    return 'Duración: $_temp0';
  }

  @override
  String get timePastDue => 'Vencido';

  @override
  String get justNow => 'En este momento';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString min';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString kilómetros';
  }

  @override
  String distanceInFeets(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString ft';
  }

  @override
  String distanceInMiles(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString mi';
  }

  @override
  String get welcomeSubtitle => 'Servicio de taxi diseñado para su comodidad tenga Viajes con sus conductores favoritos y seleccione sus preferencias de viaje';

  @override
  String get onboardingRewardTitle => '¡Ser recompensado!';

  @override
  String get onboardingRewardSubtitle => 'Obtén bonificaciones adicionales por recomendar a un amigo, completar viajes y mucho más...';

  @override
  String get selectLanguage => 'Seleccione el idioma';

  @override
  String get searchForLanguage => 'buscar idioma';

  @override
  String get enterPhoneNumber => 'Ingresa número telefónico';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get whereIsYourDestination => '¿Dónde está tu destino?';

  @override
  String get whereAreYouGoing => '¿Adónde vas?';

  @override
  String get selectDestinations => 'Tu ruta';

  @override
  String get pickupPoint => 'Punto de recogida';

  @override
  String get enterPickupPoint => 'Introducir punto de recogida';

  @override
  String get dropoffPoint => 'Punto de entrega';

  @override
  String get enterDropoffPoint => 'Ingrese el punto de entrega';

  @override
  String get stopPoint => 'Punto de parada';

  @override
  String get enterStopPoint => 'Introducir punto de parada';

  @override
  String get confirm => 'Confirmar';

  @override
  String get confirmDropoff => 'Confirmar entrega';

  @override
  String get confirmPickup => 'Confirmar recogida';

  @override
  String get enterAtLeast3Characters => 'Introduzca al menos 3 caracteres';

  @override
  String get noResults => 'No hay resultados';

  @override
  String get bookNow => 'Reservar ahora';

  @override
  String get cash => 'Dinero';

  @override
  String get online => 'En línea';

  @override
  String get offline => 'Desconectado';

  @override
  String get onTrip => 'De viaje';

  @override
  String get confirmPay => 'Confirmar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get apply => 'Aplicar';

  @override
  String get enterCouponCode => 'Introduce el código de cupón';

  @override
  String get reserveRide => 'Reservar paseo';

  @override
  String get reserveRideMessage => 'Seleccione la fecha y hora exacta en la que desea que se reserve su viaje';

  @override
  String get reserveRideMessageSuccess => 'Su viaje ha sido reservado exitosamente. Puede ver sus viajes reservados en la sección \"Viajes programados\".';

  @override
  String get cancelReservation => 'Cancelar la reserva';

  @override
  String get confirmResrve => 'Confirmar';

  @override
  String get enterCouponDescription => 'Inserte su código de cupón para que se aplique a los precios.';

  @override
  String get enterCoupon => 'Introduce el cupón';

  @override
  String get couponApplied => 'Cupón aplicado';

  @override
  String get couponAppliedDescription => 'El cupón se ha aplicado a la tarifa de tu viaje.';

  @override
  String get done => '¡Hecho!';

  @override
  String get ridePreferences => 'Preferencias de viaje';

  @override
  String get noWaitTime => 'Sin tiempo de espera';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutos';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds segundos';
  }

  @override
  String get rideRequested => 'Viaje solicitado';

  @override
  String get searchingForAnOnlineDriver => 'Buscando un controlador en línea...';

  @override
  String get cancelRide => 'Cancelar viaje';

  @override
  String get rideSafety => 'Seguridad en el viaje';

  @override
  String get shareTripInformation => 'Compartir información del viaje';

  @override
  String get shareTripInformationDescription => 'Puedes compartir la información de tu viaje con un amigo.';

  @override
  String get sos => 'LLAMADA DE SOCORRO';

  @override
  String get sosDescription => 'Informar a las autoridades de una emergencia';

  @override
  String get reportAnIssue => 'Reportar un problema';

  @override
  String get reportAnIssueMidTripDescription => 'Comparte un problema de seguridad durante el viaje';

  @override
  String get rideOptions => 'Opciones de viaje';

  @override
  String get goBackToRide => 'volver a montar';

  @override
  String get waitTime => 'Tiempo de espera';

  @override
  String get couponCode => 'Código promocional';

  @override
  String get giftCardCode => 'Código de tarjeta de regalo';

  @override
  String get nicePoints => 'Buenos puntos';

  @override
  String get negativePoints => 'Puntos negativos';

  @override
  String get reviewCommentBoxHint => 'Añadir un comentario...';

  @override
  String get howWasYourTrip => '¿Como estuvo tu viaje?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Pésimo viaje con $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Mal viaje con $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Viaje promedio con $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Buen viaje con $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Impresionante viaje con $name';
  }

  @override
  String get submitFeedback => 'Enviar comentarios';

  @override
  String get typeAMessage => 'Escribe un mensaje';

  @override
  String get findAnotherRide => 'Encuentra otro viaje';

  @override
  String get next => 'Próximo';

  @override
  String get searchForDropoffLocation => 'Buscar lugar de entrega';

  @override
  String get searchForPickupLocation => 'Buscar lugar de recogida';

  @override
  String get placeConfirmDialogPlaceholder => '¿Dónde está su lugar de entrega?';

  @override
  String get noAnnouncements => 'Sin anuncios';

  @override
  String get announcements => 'Anuncios';

  @override
  String reviewsCount(int count) {
    return '($count reseñas)';
  }

  @override
  String get tripDetails => 'Detalles del viaje';

  @override
  String get rideDetails => 'Detalles del viaje';

  @override
  String get orderARide => 'ordenar un viaje';

  @override
  String get noRidesYet => '¡Aún no hay viajes!';

  @override
  String get issueSubjectPlaceholder => 'Escriba el tema del problema';

  @override
  String get issueContentPlaceholder => 'Escriba la descripción del problema.';

  @override
  String get reportThisIssue => 'Informar este problema';

  @override
  String get fieldIsRequired => 'Se requiere campo';

  @override
  String get ok => 'DE ACUERDO';

  @override
  String get favoriteLocations => 'Ubicaciones favoritas';

  @override
  String get favoriteLocationsSubtitle => 'Guarde sus ubicaciones favoritas para un acceso más fácil';

  @override
  String get createAFavoriteLocation => 'Crear una ubicación favorita';

  @override
  String get addressTitleLabel => 'Título de la dirección';

  @override
  String get clickToSetLocation => 'Haga clic para establecer la ubicación';

  @override
  String get whereIsYourNewFavoriteLocation => '¿Dónde está tu nueva ubicación favorita?';

  @override
  String get locateFavoriteLocationDescription => 'Utilice el cuadro de búsqueda a continuación o el mapa para fijar la ubicación exacta';

  @override
  String get searchLocation => 'Ubicación de búsqueda';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get rideHistory => 'Historial de viajes';

  @override
  String get scheduledRides => 'Paseos programados';

  @override
  String get keepTheOrder => 'mantener el orden';

  @override
  String get cancelTheRide => 'cancelar el viaje';

  @override
  String get walletBalance => 'Saldo de billetera';

  @override
  String get activities => 'Actividades';

  @override
  String get pleaseEnterGiftCardCode => 'Por favor ingresa el código de la tarjeta de regalo';

  @override
  String get redeem => 'Canjear';

  @override
  String get enterGiftCardCode => 'Ingrese el código de la tarjeta de regalo';

  @override
  String get redeemGiftCard => 'Canjear tarjeta de regalo';

  @override
  String get redeemGiftCardDescription => 'Ingrese el código de su tarjeta de regalo para canjearlo.';

  @override
  String get redeemSuccessTitle => '¡Tarjeta de regalo canjeada!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Has canjeado con éxito $amount tarjeta de regalo.';
  }

  @override
  String get addCredit => 'Añadir crédito';

  @override
  String get payNow => 'Pagar ahora';

  @override
  String get addCreditToWallet => 'Agregar crédito a la billetera';

  @override
  String get pleaseSelectAmount => 'Por favor seleccione cantidad';

  @override
  String get enterAmount => 'Ingrese la cantidad';

  @override
  String get selectAmount => 'Seleccione cantidad:';

  @override
  String get wallet => 'Billetera';

  @override
  String get totalRides => 'Paseos totales';

  @override
  String get appSettings => 'Ajustes de Aplicacion';

  @override
  String get mapSettings => 'Configuración del mapa';

  @override
  String get lanugageSettings => 'Configuración de idioma';

  @override
  String get paymentMethods => 'Métodos de pago';

  @override
  String get selectCards => 'Seleccionar tarjetas';

  @override
  String get selectCardsDescription => 'Puede seleccionar los números de tarjeta que desea que se muestren en la lista de métodos de pago en las facturas.';

  @override
  String get delete => 'Borrar';

  @override
  String get nameOnCard => 'Nombre en la tarjeta';

  @override
  String get profile => 'Perfil';

  @override
  String get scheduledRide => 'viaje programado';

  @override
  String get addPaymentMethod => 'Añadir método de pago';

  @override
  String get addPaymentMethodDescription => 'Añade un nuevo método de pago a tu cuenta';

  @override
  String get saveCard => 'guardar tarjeta';

  @override
  String get selectDialCode => 'Seleccionar código de marcación';

  @override
  String get searchCountryName => 'Buscar nombre del país';

  @override
  String get preferences => 'Preferencias:';

  @override
  String get onboardingDescription => 'A momentos de registrar tu cuenta y disfrutar de viajes cómodos';

  @override
  String get signInSignUp => 'Ingresar. Registrarse';

  @override
  String get enterOtp => 'Ingrese la OTP';

  @override
  String get enterPassword => 'Introducir la contraseña';

  @override
  String get enterPasswordDescription => 'Por favor ingrese su contraseña para continuar';

  @override
  String get setPassword => 'Configurar la clave';

  @override
  String get password => 'Contraseña';

  @override
  String get passwordRuleDescription => 'Incluya al menos dos de los siguientes:';

  @override
  String get passwordRuleLength => 'Entre 9 y 64 caracteres';

  @override
  String get passwordRuleUpperCase => 'Letras mayúsculas';

  @override
  String get passwordRuleLowerCase => 'Letras minusculas';

  @override
  String get passwordRuleNumber => 'Números';

  @override
  String get passwordRuleSpecialCharacter => 'Caracteres especiales';

  @override
  String get contactDetails => 'Detalles de contacto';

  @override
  String get vehicleDetails => 'Detalles del vehículo';

  @override
  String get payoutInformation => 'Información de pago';

  @override
  String get documents => 'Documentos';

  @override
  String get accessDenied => 'Acceso denegado';

  @override
  String get success => 'Éxito';

  @override
  String get skipForNow => 'Saltar por ahora';

  @override
  String get sendOtpDescription => 'Se ha enviado un código de verificación a su número de teléfono.';

  @override
  String get resendOtp => 'Reenviar codigo';

  @override
  String get useOtpInstead => 'Utilice OTP en su lugar';

  @override
  String get home => 'Hogar';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get driverLicenseNumber => 'Número de licencia de conducir';

  @override
  String get email => 'Correo electrónico';

  @override
  String get address => 'DIRECCIÓN';

  @override
  String get gender => 'Género';

  @override
  String get genderMale => 'Masculino';

  @override
  String get genderFemale => 'Femenino';

  @override
  String get genderUnknown => 'Neutral / Desconocido';

  @override
  String get vehiclePlateNumber => 'Número de placa del vehículo';

  @override
  String get vehicleColor => 'Color del vehículo';

  @override
  String get vehicleModelAndMake => 'Modelo de vehículo';

  @override
  String get vehicleProductionYear => 'Año de producción del vehículo';

  @override
  String get bankName => 'Nombre del banco';

  @override
  String get bankRoutingNumber => 'Número de ruta bancaria';

  @override
  String get bankAccountNumber => 'Número de cuenta bancaria';

  @override
  String get bankSwift => 'Código SWIFT';

  @override
  String get uploadImage => 'Cargar imagen';

  @override
  String get yourBalance => 'Tu balance';

  @override
  String get rideCancellation => 'Cancelación de viaje';

  @override
  String get cancelRideMessage => '¿Estás seguro de que deseas cancelar tu viaje?';

  @override
  String get cancelRideSuccess => 'El viaje se ha cancelado con éxito';

  @override
  String get confirmAndCancelRide => 'Confirmar';

  @override
  String get selectPaymentMethod => 'Selecciona el método de pago';

  @override
  String get rideFeePaid => 'Se ha pagado la tarifa del viaje.';

  @override
  String get rideFeeUnpaid => 'La tarifa del viaje aún no se ha pagado.';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Precio total';

  @override
  String get addCustomCredit => 'Agregar redit personalizado';

  @override
  String get serviceFee => 'Tarifa de servicio';

  @override
  String get serviceOptionFee => 'Tarifa de opción de servicio';

  @override
  String get couponDiscount => 'Cupón de descuento';

  @override
  String get walletCreit => 'Crédito de billetera';

  @override
  String get custom => 'Costumbre';

  @override
  String get payment => 'Pago';

  @override
  String get cashPayment => 'Pago en efectivo';

  @override
  String cashPaymentDescription(String amount) {
    return '¿Confirmas que recibiste $amount?';
  }

  @override
  String get cashPaymentReceived => 'Pago en efectivo recibido';

  @override
  String get confirmAndEndTrip => 'Confirmar';

  @override
  String get earnings => 'Ganancias';

  @override
  String get acceptOrder => 'Aceptar pedido';

  @override
  String get canceled => 'Cancelado';

  @override
  String get unknown => 'Desconocido';

  @override
  String get commission => 'Comisión';

  @override
  String get selectProfileImage => 'Seleccionar imagen de perfil';

  @override
  String get chooseAvatarDescription => 'O seleccione un avatar de la lista a continuación:';

  @override
  String get fullName => 'Nombre completo';

  @override
  String get favoriteDrivers => 'Conductores favoritos';

  @override
  String get distanceTraveled => 'Distancia viajada';

  @override
  String get rating => 'Clasificación';

  @override
  String get map => 'Mapa';

  @override
  String get income => 'Ingreso';

  @override
  String get timeSpent => 'Tiempo usado';

  @override
  String get daily => 'A diario';

  @override
  String get monthly => 'Mensual';

  @override
  String get noRecordsFoundEarnings => 'No se encontró ningún registro de viaje para estos filtros';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Aún no hay comentarios';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Aún no tienes suficientes comentarios para mostrar.';

  @override
  String get feedbacksSummary => 'Resumen de comentarios';

  @override
  String get feedbacksGoodTitle => '¡Excelente trabajo!';

  @override
  String get feedbacksGoodSubtitle => 'Tus calificaciones se ven bien hasta ahora.';

  @override
  String get feedbacksBadTitle => 'Promedio';

  @override
  String get feedbacksBadSubtitle => 'Puedes utilizar algunas mejoras.';

  @override
  String get feedbacksGoodPointsTitle => 'Algunos puntos buenos sobre ti:';

  @override
  String get feedbacksbadPointsTitle => 'Algunos puntos que puedes mejorar:';

  @override
  String get feedbacksReviewsTitle => 'Algunas revisiones anteriores';

  @override
  String get payoutMethods => 'Métodos de pago';

  @override
  String get notice => 'Aviso:';

  @override
  String get payoutNoticeTitle => 'El administrador le pagará automáticamente dos veces por semana.';

  @override
  String get addPayoutMethod => 'Agregar método de pago';

  @override
  String get navigate => 'Navegar';

  @override
  String get noPayoutMethods => 'Sin métodos de pago';

  @override
  String get name => 'Nombre';

  @override
  String get nameHint => 'Ingrese su nombre';

  @override
  String get bankNameHint => 'Ingrese el nombre del banco';

  @override
  String get branchName => 'Nombre de la sucursal';

  @override
  String get branchNameHint => 'Ingrese el nombre de la sucursal';

  @override
  String get accountHolderName => 'Nombre del titular de la cuenta';

  @override
  String get routingNumber => 'Número de ruta';

  @override
  String get routingNumberHint => 'Ingrese el número de ruta';

  @override
  String get accountNumber => 'Número de cuenta';

  @override
  String get accountNumberHint => 'Ingrese el número de cuenta';

  @override
  String get addressHint => 'Ingresa la direccion';

  @override
  String get dateOfBith => 'Fecha de nacimiento';

  @override
  String get yearHint => 'Año';

  @override
  String get monthHint => 'Mes';

  @override
  String get dayHint => 'Día';

  @override
  String get city => 'Ciudad';

  @override
  String get cityHint => 'Introduce la ciudad';

  @override
  String get state => 'Estado';

  @override
  String get stateHint => 'Ingresar estado';

  @override
  String get zipCode => 'Código postal';

  @override
  String get zipCodeHint => 'Ingresa tu código postal';

  @override
  String get day => 'Día';

  @override
  String get month => 'Mes';

  @override
  String get year => 'Año';

  @override
  String get noActivitiesYet => 'Aún no hay actividades.';

  @override
  String get headingToDestination => 'dirigiéndose al destino';

  @override
  String get driverArrivedNotice => 'El conductor te está esperando.';

  @override
  String get driverShouldAriveInNotice => 'Se estima que el conductor llegará a';

  @override
  String get driverShouldHaveArrivedNotice => 'El conductor debería llegar en cualquier momento.';

  @override
  String get deleteAccount => 'Borrar cuenta';

  @override
  String get deleteAccountNotice => '¿Estás seguro de que quieres eliminar tu cuenta? Después de 30 días, su cuenta se eliminará permanentemente. Durante este tiempo, puedes restaurar tu cuenta iniciando sesión nuevamente.';

  @override
  String get confirmAndDeleteAccount => 'Confirmar';

  @override
  String get accountDeleted => 'La cuenta ha sido eliminada.';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Estoy en camino a $destination desde $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'El nombre de mi conductor es $firstName $lastName, el número de móvil es $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'El pasajero con mi nombre es $firstName $lastName, el número de móvil es $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'El viaje comenzó el $startTime y espero que dure aproximadamente $duration minutos.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Espero que el viaje dure aproximadamente $duration minutos una vez que me subo al auto del conductor.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANTE: utilice esta función solo en caso de emergencia. Nos comunicaremos con las autoridades en su nombre.';

  @override
  String get confirmAndSendSOS => 'Confirmar';

  @override
  String get sosSentSuccessfully => 'SOS ha sido enviado exitosamente';

  @override
  String get topUpSuccess => 'La billetera se ha recargado exitosamente';

  @override
  String get cancelNotAllowed => 'No es posible cancelar un viaje ya iniciado.';

  @override
  String get error => 'Error';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String get serverError => 'Error del Servidor';

  @override
  String get addNewLocation => 'Agregar nueva ubicación';

  @override
  String get twoWayTrip => 'viaje de ida y vuelta';

  @override
  String get reportSubmitted => 'Informe enviado';

  @override
  String get reportSubmittedDescription => 'Su informe se ha enviado correctamente, lo revisaremos y tomaremos las medidas necesarias.';

  @override
  String get cardNumber => 'Número de tarjeta';

  @override
  String get cardNumberHint => 'Introduce el número de tarjeta';

  @override
  String get expiryDate => 'Fecha de caducidad';

  @override
  String get expiryDateHint => 'MM/AA';

  @override
  String get noFavoriteDrivers => 'No hay conductores favoritos';

  @override
  String get noFavoriteDriversDescription => 'Puede marcar a sus conductores preferidos como favoritos al calificarlos después del viaje.';

  @override
  String get pickupLocationNotFound => 'No pudimos determinar su ubicación actual utilizando el GPS como punto de recogida. Ingrese su punto de recogida manualmente.';

  @override
  String get dragToSelect => 'Arrastra para seleccionar';

  @override
  String get skip => 'Saltar';

  @override
  String get openSettings => 'Configuración abierta';

  @override
  String get locationPermission => 'Permiso de ubicación';

  @override
  String get locationPermissionDeniedForeverMessage => 'El permiso de ubicación es un requisito para recibir pedidos a tu alrededor y también para que el usuario rastree tu ubicación. No podrá recibir pedidos sin este permiso y sin que estemos atentos a su ubicación actual. Puede cambiar este permiso en la configuración de su teléfono.';

  @override
  String get allow => 'Permitir';

  @override
  String get driverOnlineTitle => 'Buscando un paseo';

  @override
  String get driverOfflineTitle => 'Conéctese para comenzar a recibir solicitudes';

  @override
  String get payInCash => 'Pago en efectivo';

  @override
  String get payInCashDescription => 'Continúe con el pago en efectivo al conductor. El conductor confirmará el pago una vez recibido.';

  @override
  String get addToFavoriteDrivers => 'Agregar a conductores favoritos';

  @override
  String get slideToConfirmArrival => 'Desliza para confirmar llegada';

  @override
  String get slideToConfirmPickup => 'Deslice para confirmar la recogida';

  @override
  String get slideToConfirmDropoff => 'Deslice para confirmar la entrega';

  @override
  String get noticePickingUpRiderIn => 'Recoger al ciclista en:';

  @override
  String get noticeRiderNotified => 'El pasajero ha sido notificado, recoja al pasajero y comience el viaje.';
}

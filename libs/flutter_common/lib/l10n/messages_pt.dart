import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Portuguese (`pt`).
class SPt extends S {
  SPt([String locale = 'pt']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos os direitos reservados.';
  }

  @override
  String get welcomeTitle => 'Bem-vindo ao aplicativo';

  @override
  String get today => 'Hoje';

  @override
  String get yesterday => 'Ontem';

  @override
  String get settings => 'Configurações';

  @override
  String get about => 'Sobre';

  @override
  String get profileInfo => 'Informações do perfil';

  @override
  String get language => 'Linguagem';

  @override
  String get firstName => 'Primeiro nome';

  @override
  String get lastName => 'Sobrenome';

  @override
  String get mobileNumber => 'Número de telemóvel';

  @override
  String get edit => 'Editar';

  @override
  String get enterCode => 'Coloque o código';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get bankTransfer => 'Transferência bancária';

  @override
  String get gift => 'Presente';

  @override
  String get correction => 'Correção';

  @override
  String get inappPayment => 'Pagamento no aplicativo';

  @override
  String get orderFee => 'Taxa de pedido';

  @override
  String get parkingFee => 'Taxa de estacionamento';

  @override
  String get cancellationFee => 'Taxa de cancelamento';

  @override
  String get withdraw => 'Retirar';

  @override
  String get walletTransactions => 'Transações de carteira';

  @override
  String get addCard => 'Adicionar cartão';

  @override
  String get visa => 'Visto';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Adicionar saldo';

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
      one: '$hoursString Horas',
      zero: 'Zero hours',
    );
    return 'Duração: $_temp0';
  }

  @override
  String get timePastDue => 'Vencido';

  @override
  String get justNow => 'Agora mesmo';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '${distanceString}m';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString km';
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
  String get welcomeSubtitle => 'Serviço de táxi projetado para seu conforto, faça viagens com seus motoristas favoritos e selecione suas preferências de viagem';

  @override
  String get onboardingRewardTitle => 'Seja recompensado!';

  @override
  String get onboardingRewardSubtitle => 'Ganhe bônus extras por indicar um amigo, completar viagens e muito mais...';

  @override
  String get selectLanguage => 'Selecione o idioma';

  @override
  String get searchForLanguage => 'Pesquisar idioma';

  @override
  String get enterPhoneNumber => 'Digite o número de telefone';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get whereIsYourDestination => 'Onde está o seu destino?';

  @override
  String get whereAreYouGoing => 'Onde você está indo?';

  @override
  String get selectDestinations => 'Sua rota';

  @override
  String get pickupPoint => 'Ponto de coleta';

  @override
  String get enterPickupPoint => 'Insira o ponto de coleta';

  @override
  String get dropoffPoint => 'Ponto de entrega';

  @override
  String get enterDropoffPoint => 'Insira o ponto de entrega';

  @override
  String get stopPoint => 'Ponto de parada';

  @override
  String get enterStopPoint => 'Insira o ponto de parada';

  @override
  String get confirm => 'confirme';

  @override
  String get confirmDropoff => 'Confirmar entrega';

  @override
  String get confirmPickup => 'Confirmar retirada';

  @override
  String get enterAtLeast3Characters => 'Insira pelo menos 3 caracteres';

  @override
  String get noResults => 'Nenhum resultado';

  @override
  String get bookNow => 'Agende agora';

  @override
  String get cash => 'Dinheiro';

  @override
  String get online => 'On-line';

  @override
  String get offline => 'desligada';

  @override
  String get onTrip => 'Em viagem';

  @override
  String get confirmPay => 'confirme ';

  @override
  String get cancel => 'Cancelar';

  @override
  String get apply => 'Aplicar';

  @override
  String get enterCouponCode => 'Digite o código do cupom';

  @override
  String get reserveRide => 'Passeio reserva';

  @override
  String get reserveRideMessage => 'Selecione a data e hora exatas em que deseja que sua viagem seja reservada';

  @override
  String get reserveRideMessageSuccess => 'Sua viagem foi reservada com sucesso. Você pode ver suas viagens reservadas na seção \'Viagens agendadas\'.';

  @override
  String get cancelReservation => 'Cancelar reserva';

  @override
  String get confirmResrve => 'confirme ';

  @override
  String get enterCouponDescription => 'Insira o código do seu cupom para ser aplicado nos preços';

  @override
  String get enterCoupon => 'Insira o cupom';

  @override
  String get couponApplied => 'Cupom aplicado';

  @override
  String get couponAppliedDescription => 'O cupom foi aplicado à tarifa da sua viagem';

  @override
  String get done => 'Feito!';

  @override
  String get ridePreferences => 'Preferências de passeio';

  @override
  String get noWaitTime => 'Sem tempo de espera';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutos';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds segundos';
  }

  @override
  String get rideRequested => 'Viagem solicitada';

  @override
  String get searchingForAnOnlineDriver => 'Procurando um driver on-line...';

  @override
  String get cancelRide => 'Cancelar viagem';

  @override
  String get rideSafety => 'Segurança de passeio';

  @override
  String get shareTripInformation => 'Compartilhe informações da viagem';

  @override
  String get shareTripInformationDescription => 'Você pode compartilhar as informações da sua viagem com um amigo';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Avise as autoridades sobre uma emergência';

  @override
  String get reportAnIssue => 'Informar um problema';

  @override
  String get reportAnIssueMidTripDescription => 'Compartilhe um problema de segurança durante a viagem';

  @override
  String get rideOptions => 'Opções de passeio';

  @override
  String get goBackToRide => 'Volte para andar';

  @override
  String get waitTime => 'Tempo de espera';

  @override
  String get couponCode => 'Código do cupom';

  @override
  String get giftCardCode => 'Código do vale-presente';

  @override
  String get nicePoints => 'Bons pontos';

  @override
  String get negativePoints => 'Pontos Negativos';

  @override
  String get reviewCommentBoxHint => 'Adicione um comentário...';

  @override
  String get howWasYourTrip => 'Como foi sua viagem?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Viagem terrível com $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Viagem ruim com $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Viagem média com $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Boa viagem com $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Viagem incrível com $name';
  }

  @override
  String get submitFeedback => 'Enviar comentários';

  @override
  String get typeAMessage => 'Digite uma mensagem';

  @override
  String get findAnotherRide => 'Encontre outra carona';

  @override
  String get next => 'Próximo';

  @override
  String get searchForDropoffLocation => 'Procure o local de entrega';

  @override
  String get searchForPickupLocation => 'Pesquise o local de retirada';

  @override
  String get placeConfirmDialogPlaceholder => 'Onde é o seu local de entrega?';

  @override
  String get noAnnouncements => 'Nenhum anúncio';

  @override
  String get announcements => 'Anúncios';

  @override
  String reviewsCount(int count) {
    return '($count comentários)';
  }

  @override
  String get tripDetails => 'Detalhes da viagem';

  @override
  String get rideDetails => 'Detalhes do passeio';

  @override
  String get orderARide => 'Peça uma carona';

  @override
  String get noRidesYet => 'Ainda não há passeios!';

  @override
  String get issueSubjectPlaceholder => 'Digite o assunto do problema';

  @override
  String get issueContentPlaceholder => 'Digite a descrição do problema';

  @override
  String get reportThisIssue => 'Informar este problema';

  @override
  String get fieldIsRequired => 'Campo é obrigatório';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Locais favoritos';

  @override
  String get favoriteLocationsSubtitle => 'Salve seus locais favoritos para facilitar o acesso';

  @override
  String get createAFavoriteLocation => 'Crie um local favorito';

  @override
  String get addressTitleLabel => 'Título do endereço';

  @override
  String get clickToSetLocation => 'Clique para definir o local';

  @override
  String get whereIsYourNewFavoriteLocation => 'Onde fica o seu novo local favorito?';

  @override
  String get locateFavoriteLocationDescription => 'Use a caixa de pesquisa abaixo ou o mapa para fixar a localização exata';

  @override
  String get searchLocation => 'Local de pesquisa';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get rideHistory => 'Histórico de passeios';

  @override
  String get scheduledRides => 'Passeios programados';

  @override
  String get keepTheOrder => 'Mantenha a ordem';

  @override
  String get cancelTheRide => 'Cancelar a viagem';

  @override
  String get walletBalance => 'Saldo da carteira';

  @override
  String get activities => 'Atividades';

  @override
  String get pleaseEnterGiftCardCode => 'Insira o código do vale-presente';

  @override
  String get redeem => 'Resgatar';

  @override
  String get enterGiftCardCode => 'Insira o código do vale-presente';

  @override
  String get redeemGiftCard => 'Resgatar cartão presente';

  @override
  String get redeemGiftCardDescription => 'Digite o código do seu cartão-presente para resgatá-lo.';

  @override
  String get redeemSuccessTitle => 'Vale-presente resgatado!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Você resgatou com sucesso $amount vale-presente.';
  }

  @override
  String get addCredit => 'Adicionar crédito';

  @override
  String get payNow => 'Pague agora';

  @override
  String get addCreditToWallet => 'Adicionar crédito à carteira';

  @override
  String get pleaseSelectAmount => 'Selecione o valor';

  @override
  String get enterAmount => 'Insira o valor';

  @override
  String get selectAmount => 'Selecione o valor:';

  @override
  String get wallet => 'Carteira';

  @override
  String get totalRides => 'Total de viagens';

  @override
  String get appSettings => 'Configurações do aplicativo';

  @override
  String get mapSettings => 'Configurações do mapa';

  @override
  String get lanugageSettings => 'Configurações de idioma';

  @override
  String get paymentMethods => 'Métodos de Pagamento';

  @override
  String get selectCards => 'Selecione cartões';

  @override
  String get selectCardsDescription => 'Você pode selecionar os números de cartão que deseja que sejam exibidos na lista de métodos de pagamento nas faturas.';

  @override
  String get delete => 'Excluir';

  @override
  String get nameOnCard => 'Nome no cartão';

  @override
  String get profile => 'Perfil';

  @override
  String get scheduledRide => 'Passeio programado';

  @override
  String get addPaymentMethod => 'Adicionar forma de pagamento';

  @override
  String get addPaymentMethodDescription => 'Adicione uma nova forma de pagamento à sua conta';

  @override
  String get saveCard => 'Salvar cartão';

  @override
  String get selectDialCode => 'Selecione o código de discagem';

  @override
  String get searchCountryName => 'Pesquisar nome do país';

  @override
  String get preferences => 'Preferências:';

  @override
  String get onboardingDescription => 'A poucos minutos de registrar sua conta e desfrutar de passeios confortáveis';

  @override
  String get signInSignUp => 'Entrar/ Inscrever-se';

  @override
  String get enterOtp => 'Digite OTP';

  @override
  String get enterPassword => 'Digite a senha';

  @override
  String get enterPasswordDescription => 'Por favor, digite sua senha para continuar';

  @override
  String get setPassword => 'Configurar senha';

  @override
  String get password => 'Senha';

  @override
  String get passwordRuleDescription => 'Inclua pelo menos dois dos seguintes:';

  @override
  String get passwordRuleLength => 'Entre 9 e 64 caracteres';

  @override
  String get passwordRuleUpperCase => 'Letras maiúsculas';

  @override
  String get passwordRuleLowerCase => 'Letras minúsculas';

  @override
  String get passwordRuleNumber => 'Números';

  @override
  String get passwordRuleSpecialCharacter => 'Caracteres especiais';

  @override
  String get contactDetails => 'Detalhes do contato';

  @override
  String get vehicleDetails => 'Detalhes do veículo';

  @override
  String get payoutInformation => 'Informações de pagamento';

  @override
  String get documents => 'Documentos';

  @override
  String get accessDenied => 'Acesso negado';

  @override
  String get success => 'Sucesso';

  @override
  String get skipForNow => 'Pular por enquanto';

  @override
  String get sendOtpDescription => 'Um código de verificação foi enviado para o seu número de telefone';

  @override
  String get resendOtp => 'Reenviar código';

  @override
  String get useOtpInstead => 'Use OTP em vez disso';

  @override
  String get home => 'Lar';

  @override
  String get logout => 'Sair';

  @override
  String get driverLicenseNumber => 'Número da carteira de motorista';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Endereço';

  @override
  String get gender => 'Gênero';

  @override
  String get genderMale => 'Macho';

  @override
  String get genderFemale => 'Fêmea';

  @override
  String get genderUnknown => 'Neutro / Desconhecido';

  @override
  String get vehiclePlateNumber => 'Número da placa do veículo';

  @override
  String get vehicleColor => 'Cor do veículo';

  @override
  String get vehicleModelAndMake => 'Modelo do veículo ';

  @override
  String get vehicleProductionYear => 'Ano de produção do veículo';

  @override
  String get bankName => 'Nome do banco';

  @override
  String get bankRoutingNumber => 'Número de roteamento bancário';

  @override
  String get bankAccountNumber => 'Número da conta de banco';

  @override
  String get bankSwift => 'Código Swift';

  @override
  String get uploadImage => 'Enviar Imagem';

  @override
  String get yourBalance => 'Seu balanço';

  @override
  String get rideCancellation => 'Cancelamento de viagem';

  @override
  String get cancelRideMessage => 'Tem certeza de que deseja cancelar sua viagem?';

  @override
  String get cancelRideSuccess => 'A viagem foi cancelada com sucesso';

  @override
  String get confirmAndCancelRide => 'confirme';

  @override
  String get selectPaymentMethod => 'Selecione o método de pagamento';

  @override
  String get rideFeePaid => 'A taxa da viagem foi paga';

  @override
  String get rideFeeUnpaid => 'A taxa da viagem ainda não foi paga';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Preço total';

  @override
  String get addCustomCredit => 'Adicionar edição personalizada';

  @override
  String get serviceFee => 'Taxa de serviço';

  @override
  String get serviceOptionFee => 'Taxa de opção de serviço';

  @override
  String get couponDiscount => 'Desconto de cupom';

  @override
  String get walletCreit => 'Crédito da carteira';

  @override
  String get custom => 'Personalizado';

  @override
  String get payment => 'Pagamento';

  @override
  String get cashPayment => 'Pagamento em dinheiro';

  @override
  String cashPaymentDescription(String amount) {
    return 'Você confirma que recebeu $amount?';
  }

  @override
  String get cashPaymentReceived => 'Pagamento em dinheiro recebido';

  @override
  String get confirmAndEndTrip => 'confirme ';

  @override
  String get earnings => 'Ganhos';

  @override
  String get acceptOrder => 'Aceitar pedido';

  @override
  String get canceled => 'Cancelado';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get commission => 'Comissão';

  @override
  String get selectProfileImage => 'Selecione a imagem do perfil';

  @override
  String get chooseAvatarDescription => 'Ou selecione um avatar na lista abaixo:';

  @override
  String get fullName => 'Nome completo';

  @override
  String get favoriteDrivers => 'Motoristas favoritos';

  @override
  String get distanceTraveled => 'Distância viajada';

  @override
  String get rating => 'Avaliação';

  @override
  String get map => 'Mapa';

  @override
  String get income => 'Renda';

  @override
  String get timeSpent => 'Tempo gasto';

  @override
  String get daily => 'Diário';

  @override
  String get monthly => 'Por mês';

  @override
  String get noRecordsFoundEarnings => 'Nenhum registro de viagem encontrado para estes filtros';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Nenhum feedback ainda';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Você ainda não tem feedbacks suficientes para mostrar.';

  @override
  String get feedbacksSummary => 'Resumo de comentários';

  @override
  String get feedbacksGoodTitle => 'Excelente trabalho!';

  @override
  String get feedbacksGoodSubtitle => 'Suas avaliações parecem boas até agora';

  @override
  String get feedbacksBadTitle => 'Média';

  @override
  String get feedbacksBadSubtitle => 'Você pode usar algumas melhorias';

  @override
  String get feedbacksGoodPointsTitle => 'Alguns pontos positivos sobre você:';

  @override
  String get feedbacksbadPointsTitle => 'Alguns pontos que você pode melhorar:';

  @override
  String get feedbacksReviewsTitle => 'Algumas análises anteriores';

  @override
  String get payoutMethods => 'Métodos de pagamento';

  @override
  String get notice => 'Perceber:';

  @override
  String get payoutNoticeTitle => 'Você será pago automaticamente pelo administrador duas vezes por semana.';

  @override
  String get addPayoutMethod => 'Adicionar método de pagamento';

  @override
  String get navigate => 'Navegar';

  @override
  String get noPayoutMethods => 'Sem métodos de pagamento';

  @override
  String get name => 'Nome';

  @override
  String get nameHint => 'Insira o nome';

  @override
  String get bankNameHint => 'Digite o nome do banco';

  @override
  String get branchName => 'Nome da filial';

  @override
  String get branchNameHint => 'Insira o nome da filial';

  @override
  String get accountHolderName => 'Nome do titular da conta';

  @override
  String get routingNumber => 'Número de roteamento';

  @override
  String get routingNumberHint => 'Insira o número de roteamento';

  @override
  String get accountNumber => 'Número de conta';

  @override
  String get accountNumberHint => 'Insira o número da conta';

  @override
  String get addressHint => 'Insira o endereço';

  @override
  String get dateOfBith => 'Data de nascimento';

  @override
  String get yearHint => 'Ano';

  @override
  String get monthHint => 'Mês';

  @override
  String get dayHint => 'Dia';

  @override
  String get city => 'Cidade';

  @override
  String get cityHint => 'Digite a cidade';

  @override
  String get state => 'Estado';

  @override
  String get stateHint => 'Insira o estado';

  @override
  String get zipCode => 'CEP';

  @override
  String get zipCodeHint => 'Digite o código postal';

  @override
  String get day => 'Dia';

  @override
  String get month => 'Mês';

  @override
  String get year => 'Ano';

  @override
  String get noActivitiesYet => 'Nenhuma atividade ainda.';

  @override
  String get headingToDestination => 'indo para o destino';

  @override
  String get driverArrivedNotice => 'O motorista está esperando por você';

  @override
  String get driverShouldAriveInNotice => 'Estima-se que o motorista chegue em';

  @override
  String get driverShouldHaveArrivedNotice => 'O motorista deve chegar a qualquer momento';

  @override
  String get deleteAccount => 'Deletar conta';

  @override
  String get deleteAccountNotice => 'Tem certeza de que deseja excluir sua conta? Após 30 dias, sua conta será excluída permanentemente. Durante esse período, você pode restaurar sua conta fazendo login novamente.';

  @override
  String get confirmAndDeleteAccount => 'confirme ';

  @override
  String get accountDeleted => 'A conta foi excluída';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Estou a caminho de $destination de $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' O nome do meu motorista é $firstName $lastName, o número do celular é $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' O nome do passageiro comigo é $firstName $lastName, o número do celular é $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' A viagem começou às $startTime e espero que demore aproximadamente $duration minutos';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Espero que a viagem demore aproximadamente $duration minutos assim que entrar no carro do motorista.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANTE: Utilize este recurso apenas em caso de emergência. Entraremos em contato com as autoridades em seu nome.';

  @override
  String get confirmAndSendSOS => 'confirme ';

  @override
  String get sosSentSuccessfully => 'SOS foi enviado com sucesso';

  @override
  String get topUpSuccess => 'A carteira foi recarregada com sucesso';

  @override
  String get cancelNotAllowed => 'Não é possível cancelar uma viagem já iniciada.';

  @override
  String get error => 'Erro';

  @override
  String get connectionError => 'Erro de conexão';

  @override
  String get serverError => 'Erro de servidor';

  @override
  String get addNewLocation => 'Adicionar novo local';

  @override
  String get twoWayTrip => 'Viagem de ida e volta';

  @override
  String get reportSubmitted => 'Relatório enviado';

  @override
  String get reportSubmittedDescription => 'Seu relatório foi enviado com sucesso, iremos analisá-lo e tomar as medidas necessárias.';

  @override
  String get cardNumber => 'Número do cartão';

  @override
  String get cardNumberHint => 'Digite o número do cartão';

  @override
  String get expiryDate => 'Data de validade';

  @override
  String get expiryDateHint => 'MM/AA';

  @override
  String get noFavoriteDrivers => 'Nenhum driver favorito';

  @override
  String get noFavoriteDriversDescription => 'Você pode marcar seus motoristas preferidos como favoritos ao avaliá-los após a viagem.';

  @override
  String get pickupLocationNotFound => 'Não foi possível determinar sua localização atual usando o GPS como ponto de partida. Insira seu ponto de coleta manualmente.';

  @override
  String get dragToSelect => 'Arraste para selecionar';

  @override
  String get skip => 'Pular';

  @override
  String get openSettings => 'Abrir configurações';

  @override
  String get locationPermission => 'Permissão de localização';

  @override
  String get locationPermissionDeniedForeverMessage => 'A permissão de localização é um requisito para receber pedidos ao seu redor e também para que o passageiro rastreie sua localização. Você não pode receber pedidos sem esta permissão e estejamos atentos à sua localização atual. Você pode alterar essa permissão nas configurações do seu telefone.';

  @override
  String get allow => 'Permitir';

  @override
  String get driverOnlineTitle => 'Procurando uma carona';

  @override
  String get driverOfflineTitle => 'Fique on-line para começar a receber solicitações';

  @override
  String get payInCash => 'Pagamento em dinheiro';

  @override
  String get payInCashDescription => 'Por favor, proceda com o pagamento em dinheiro ao motorista. O motorista confirmará o pagamento assim que recebido.';

  @override
  String get addToFavoriteDrivers => 'Adicionar aos drivers favoritos';

  @override
  String get slideToConfirmArrival => 'Deslize para confirmar a chegada';

  @override
  String get slideToConfirmPickup => 'Deslize para confirmar a retirada';

  @override
  String get slideToConfirmDropoff => 'Deslize para confirmar a entrega';

  @override
  String get noticePickingUpRiderIn => 'Pegando o piloto em:';

  @override
  String get noticeRiderNotified => 'O piloto foi notificado, pegue o piloto e comece o passeio';
}

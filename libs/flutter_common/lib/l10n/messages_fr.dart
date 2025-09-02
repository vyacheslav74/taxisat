import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for French (`fr`).
class SFr extends S {
  SFr([String locale = 'fr']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Tous droits réservés.';
  }

  @override
  String get welcomeTitle => 'Bienvenue sur l\'application';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get settings => 'Paramètres';

  @override
  String get about => 'À propos';

  @override
  String get profileInfo => 'Informations sur le profil';

  @override
  String get language => 'Langue';

  @override
  String get firstName => 'Prénom';

  @override
  String get lastName => 'Nom de famille';

  @override
  String get mobileNumber => 'Numéro de portable';

  @override
  String get edit => 'Modifier';

  @override
  String get enterCode => 'Entrez le code';

  @override
  String get editProfile => 'Editer le profil';

  @override
  String get bankTransfer => 'Virement';

  @override
  String get gift => 'Cadeau';

  @override
  String get correction => 'Correction';

  @override
  String get inappPayment => 'Paiement via l\'application';

  @override
  String get orderFee => 'Frais de commande';

  @override
  String get parkingFee => 'Frais de stationnement';

  @override
  String get cancellationFee => 'Frais d\'annulation';

  @override
  String get withdraw => 'Retirer';

  @override
  String get walletTransactions => 'Transactions de portefeuille';

  @override
  String get addCard => 'Ajouter une carte';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Ajouter un solde';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minutes',
      one: '$minutesString Minute',
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
      other: '$hoursString Heures',
      one: '$hoursString Heure',
      zero: 'Zero hours',
    );
    return 'Durée : $_temp0';
  }

  @override
  String get timePastDue => 'En souffrance';

  @override
  String get justNow => 'Tout à l\' heure';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '${distanceString}min';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '${distanceString}km';
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
  String get welcomeSubtitle => 'Un service de taxi conçu pour votre confort organise des voyages avec vos chauffeurs préférés et sélectionnez vos préférences de trajet.';

  @override
  String get onboardingRewardTitle => 'Soyez récompensé !';

  @override
  String get onboardingRewardSubtitle => 'Obtenez des bonus supplémentaires en parrainant un ami, en effectuant des voyages et bien d\'autres encore...';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String get searchForLanguage => 'Rechercher une langue';

  @override
  String get enterPhoneNumber => 'Entrez le numéro de téléphone';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get whereIsYourDestination => 'Où est votre destination ?';

  @override
  String get whereAreYouGoing => 'Où vas-tu?';

  @override
  String get selectDestinations => 'Votre itinéraire';

  @override
  String get pickupPoint => 'Point de retrait';

  @override
  String get enterPickupPoint => 'Entrez le point de retrait';

  @override
  String get dropoffPoint => 'Point de dépôt';

  @override
  String get enterDropoffPoint => 'Entrez le point de dépôt';

  @override
  String get stopPoint => 'Point d\'arrêt';

  @override
  String get enterStopPoint => 'Entrez le point d\'arrêt';

  @override
  String get confirm => 'Confirmer';

  @override
  String get confirmDropoff => 'Confirmer le dépôt';

  @override
  String get confirmPickup => 'Confirmer la prise en charge';

  @override
  String get enterAtLeast3Characters => 'Entrez au moins 3 caractères';

  @override
  String get noResults => 'Aucun résultat';

  @override
  String get bookNow => 'Reserve maintenant';

  @override
  String get cash => 'Espèces';

  @override
  String get online => 'En ligne';

  @override
  String get offline => 'Hors ligne';

  @override
  String get onTrip => 'En voyage';

  @override
  String get confirmPay => 'Confirmer';

  @override
  String get cancel => 'Annuler';

  @override
  String get apply => 'Appliquer';

  @override
  String get enterCouponCode => 'Entrer le code de réduction';

  @override
  String get reserveRide => 'Réserver un trajet';

  @override
  String get reserveRideMessage => 'Sélectionnez la date et l\'heure exactes auxquelles vous souhaitez que votre trajet soit réservé';

  @override
  String get reserveRideMessageSuccess => 'Votre trajet a été réservé avec succès. Vous pouvez consulter vos trajets réservés dans la section « Trajets programmés ».';

  @override
  String get cancelReservation => 'Annuler une réservation';

  @override
  String get confirmResrve => 'Confirmer';

  @override
  String get enterCouponDescription => 'Insérez votre code promo à appliquer sur les prix';

  @override
  String get enterCoupon => 'Entrez le coupon';

  @override
  String get couponApplied => 'Coupon appliqué';

  @override
  String get couponAppliedDescription => 'Le coupon a été appliqué au tarif de votre trajet';

  @override
  String get done => 'Fait!';

  @override
  String get ridePreferences => 'Préférences de trajet';

  @override
  String get noWaitTime => 'Pas de temps d\'attente';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutes';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds secondes';
  }

  @override
  String get rideRequested => 'Trajet demandé';

  @override
  String get searchingForAnOnlineDriver => 'Recherche d\'un chauffeur en ligne...';

  @override
  String get cancelRide => 'Annuler le trajet';

  @override
  String get rideSafety => 'Sécurité de conduite';

  @override
  String get shareTripInformation => 'Partager des informations sur le voyage';

  @override
  String get shareTripInformationDescription => 'Vous pouvez partager les informations de votre voyage avec un ami';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Informer les autorités d\'une urgence';

  @override
  String get reportAnIssue => 'Signaler un problème';

  @override
  String get reportAnIssueMidTripDescription => 'Partager un problème de sécurité en voyage';

  @override
  String get rideOptions => 'Options de trajet';

  @override
  String get goBackToRide => 'Retourne rouler';

  @override
  String get waitTime => 'Temps d\'attente';

  @override
  String get couponCode => 'Code promo';

  @override
  String get giftCardCode => 'Code de la carte cadeau';

  @override
  String get nicePoints => 'Points intéressants';

  @override
  String get negativePoints => 'Points négatifs';

  @override
  String get reviewCommentBoxHint => 'Ajouter un commentaire...';

  @override
  String get howWasYourTrip => 'comment était votre voyage?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Terrible voyage avec $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Bad trip avec $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Trajet moyen avec $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Bon voyage avec $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Super voyage avec $name';
  }

  @override
  String get submitFeedback => 'Soumettre des commentaires';

  @override
  String get typeAMessage => 'Tapez un message';

  @override
  String get findAnotherRide => 'Trouver un autre trajet';

  @override
  String get next => 'Suivant';

  @override
  String get searchForDropoffLocation => 'Rechercher un lieu de dépôt';

  @override
  String get searchForPickupLocation => 'Rechercher un lieu de prise en charge';

  @override
  String get placeConfirmDialogPlaceholder => 'Où est votre lieu de dépôt ?';

  @override
  String get noAnnouncements => 'Aucune annonce';

  @override
  String get announcements => 'Annonces';

  @override
  String reviewsCount(int count) {
    return '($count avis)';
  }

  @override
  String get tripDetails => 'Détails du voyage';

  @override
  String get rideDetails => 'Détails du trajet';

  @override
  String get orderARide => 'Commander un trajet';

  @override
  String get noRidesYet => 'Pas encore de manèges !';

  @override
  String get issueSubjectPlaceholder => 'Tapez le sujet du problème';

  @override
  String get issueContentPlaceholder => 'Tapez la description du problème';

  @override
  String get reportThisIssue => 'Signaler ce problème';

  @override
  String get fieldIsRequired => 'Champ requis';

  @override
  String get ok => 'D\'ACCORD';

  @override
  String get favoriteLocations => 'Lieux favoris';

  @override
  String get favoriteLocationsSubtitle => 'Enregistrez vos emplacements favoris pour un accès plus facile';

  @override
  String get createAFavoriteLocation => 'Créer un emplacement favori';

  @override
  String get addressTitleLabel => 'Titre de l\'adresse';

  @override
  String get clickToSetLocation => 'Cliquez pour définir l\'emplacement';

  @override
  String get whereIsYourNewFavoriteLocation => 'Où est votre nouvel endroit préféré ?';

  @override
  String get locateFavoriteLocationDescription => 'Utilisez le champ de recherche ci-dessous ou la carte pour épingler l\'emplacement exact';

  @override
  String get searchLocation => 'Localisation de recherche';

  @override
  String get saveChanges => 'Sauvegarder les modifications';

  @override
  String get rideHistory => 'Historique du trajet';

  @override
  String get scheduledRides => 'Promenades programmées';

  @override
  String get keepTheOrder => 'Gardez la commande';

  @override
  String get cancelTheRide => 'Annuler le trajet';

  @override
  String get walletBalance => 'Solde du portefeuille';

  @override
  String get activities => 'Activités';

  @override
  String get pleaseEnterGiftCardCode => 'Veuillez saisir le code de la carte cadeau';

  @override
  String get redeem => 'Racheter';

  @override
  String get enterGiftCardCode => 'Entrez le code de la carte cadeau';

  @override
  String get redeemGiftCard => 'Échanger une carte-cadeau';

  @override
  String get redeemGiftCardDescription => 'Entrez le code de votre carte-cadeau pour l\'utiliser.';

  @override
  String get redeemSuccessTitle => 'Carte cadeau échangée !';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Vous avez utilisé avec succès $amount carte cadeau.';
  }

  @override
  String get addCredit => 'Ajouter un crédit';

  @override
  String get payNow => 'Payez maintenant';

  @override
  String get addCreditToWallet => 'Ajouter du crédit au portefeuille';

  @override
  String get pleaseSelectAmount => 'Veuillez sélectionner le montant';

  @override
  String get enterAmount => 'Entrer le montant';

  @override
  String get selectAmount => 'Sélectionnez le montant :';

  @override
  String get wallet => 'Portefeuille';

  @override
  String get totalRides => 'Nombre total de trajets';

  @override
  String get appSettings => 'Paramètres de l\'application';

  @override
  String get mapSettings => 'Paramètres de la carte';

  @override
  String get lanugageSettings => 'Paramètres de langue';

  @override
  String get paymentMethods => 'Méthodes de payement';

  @override
  String get selectCards => 'Sélectionnez les cartes';

  @override
  String get selectCardsDescription => 'Vous pouvez sélectionner les numéros de carte que vous souhaitez voir apparaître dans la liste des modes de paiement sur les factures.';

  @override
  String get delete => 'Supprimer';

  @override
  String get nameOnCard => 'Nom sur la carte';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Trajet programmé';

  @override
  String get addPaymentMethod => 'Ajouter un mode de paiement';

  @override
  String get addPaymentMethodDescription => 'Ajoutez un nouveau mode de paiement à votre compte';

  @override
  String get saveCard => 'Enregistrer la carte';

  @override
  String get selectDialCode => 'Sélectionnez le code de composition';

  @override
  String get searchCountryName => 'Rechercher le nom du pays';

  @override
  String get preferences => 'Préférences :';

  @override
  String get onboardingDescription => 'À quelques instants de l\'enregistrement de votre compte et de profiter de trajets confortables';

  @override
  String get signInSignUp => 'Vous connecter vous inscrire';

  @override
  String get enterOtp => 'Entrez OTP';

  @override
  String get enterPassword => 'Entrer le mot de passe';

  @override
  String get enterPasswordDescription => 'Veuillez entrer votre mot de passe pour continuer';

  @override
  String get setPassword => 'Définir le mot de passe';

  @override
  String get password => 'Mot de passe';

  @override
  String get passwordRuleDescription => 'Incluez au moins deux des éléments suivants :';

  @override
  String get passwordRuleLength => 'Entre 9 et 64 caractères';

  @override
  String get passwordRuleUpperCase => 'Lettres capitales';

  @override
  String get passwordRuleLowerCase => 'Minuscules';

  @override
  String get passwordRuleNumber => 'Nombres';

  @override
  String get passwordRuleSpecialCharacter => 'Caractères spéciaux';

  @override
  String get contactDetails => 'Détails du contact';

  @override
  String get vehicleDetails => 'Les détails du véhicule';

  @override
  String get payoutInformation => 'Informations de paiement';

  @override
  String get documents => 'Documents';

  @override
  String get accessDenied => 'Accès refusé';

  @override
  String get success => 'Succès';

  @override
  String get skipForNow => 'Ignorer pour l\'instant';

  @override
  String get sendOtpDescription => 'Un code de vérification a été envoyé à votre numéro de téléphone';

  @override
  String get resendOtp => 'Renvoyer le code';

  @override
  String get useOtpInstead => 'Utilisez plutôt OTP';

  @override
  String get home => 'Maison';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get driverLicenseNumber => 'Numéro de permis de conduire';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Adresse';

  @override
  String get gender => 'Genre';

  @override
  String get genderMale => 'Mâle';

  @override
  String get genderFemale => 'Femelle';

  @override
  String get genderUnknown => 'Neutre / Inconnu';

  @override
  String get vehiclePlateNumber => 'Numéro de plaque du véhicule';

  @override
  String get vehicleColor => 'Couleur du véhicule';

  @override
  String get vehicleModelAndMake => 'Modèle de véhicule';

  @override
  String get vehicleProductionYear => 'Année de production du véhicule';

  @override
  String get bankName => 'Nom de banque';

  @override
  String get bankRoutingNumber => 'Numéro d\'acheminement bancaire';

  @override
  String get bankAccountNumber => 'Numéro de compte bancaire';

  @override
  String get bankSwift => 'Code rapide';

  @override
  String get uploadImage => 'Télécharger une image';

  @override
  String get yourBalance => 'Votre solde';

  @override
  String get rideCancellation => 'Annulation du trajet';

  @override
  String get cancelRideMessage => 'Etes-vous sûr de vouloir annuler votre course ?';

  @override
  String get cancelRideSuccess => 'Le trajet a été annulé avec succès';

  @override
  String get confirmAndCancelRide => 'Confirmer';

  @override
  String get selectPaymentMethod => 'Sélectionnez le mode de paiement';

  @override
  String get rideFeePaid => 'Les frais du trajet ont été payés';

  @override
  String get rideFeeUnpaid => 'Les frais de trajet n\'ont pas encore été payés';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Prix ​​total';

  @override
  String get addCustomCredit => 'Ajouter une modification personnalisée';

  @override
  String get serviceFee => 'Frais de service';

  @override
  String get serviceOptionFee => 'Frais d\'option de service';

  @override
  String get couponDiscount => 'Coupon de réduction';

  @override
  String get walletCreit => 'Crédit de portefeuille';

  @override
  String get custom => 'Coutume';

  @override
  String get payment => 'Paiement';

  @override
  String get cashPayment => 'Paiement en espèces';

  @override
  String cashPaymentDescription(String amount) {
    return 'Confirmez-vous que vous avez reçu $amount ?';
  }

  @override
  String get cashPaymentReceived => 'Paiement en espèces reçu';

  @override
  String get confirmAndEndTrip => 'Confirmer';

  @override
  String get earnings => 'Gains';

  @override
  String get acceptOrder => 'Accepter la commande';

  @override
  String get canceled => 'Annulé';

  @override
  String get unknown => 'Inconnu';

  @override
  String get commission => 'Commission';

  @override
  String get selectProfileImage => 'Sélectionnez l\'image du profil';

  @override
  String get chooseAvatarDescription => 'Ou sélectionnez un avatar dans la liste ci-dessous :';

  @override
  String get fullName => 'Nom et prénom';

  @override
  String get favoriteDrivers => 'Pilotes préférés';

  @override
  String get distanceTraveled => 'Distance parcourue';

  @override
  String get rating => 'Notation';

  @override
  String get map => 'Carte';

  @override
  String get income => 'Revenu';

  @override
  String get timeSpent => 'Temps passé';

  @override
  String get daily => 'Tous les jours';

  @override
  String get monthly => 'Mensuel';

  @override
  String get noRecordsFoundEarnings => 'Aucun enregistrement de voyage trouvé pour ces filtres';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Pas encore de retours';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Vous n\'avez pas encore assez de commentaires à afficher.';

  @override
  String get feedbacksSummary => 'Résumé des commentaires';

  @override
  String get feedbacksGoodTitle => 'Excellent travail !';

  @override
  String get feedbacksGoodSubtitle => 'Vos notes semblent bonnes jusqu\'à présent';

  @override
  String get feedbacksBadTitle => 'Moyenne';

  @override
  String get feedbacksBadSubtitle => 'Vous pouvez utiliser certaines améliorations';

  @override
  String get feedbacksGoodPointsTitle => 'Quelques bons points à votre sujet :';

  @override
  String get feedbacksbadPointsTitle => 'Quelques points que vous pouvez améliorer :';

  @override
  String get feedbacksReviewsTitle => 'Quelques critiques antérieures';

  @override
  String get payoutMethods => 'Méthodes de paiement';

  @override
  String get notice => 'Avis:';

  @override
  String get payoutNoticeTitle => 'Vous serez automatiquement payé par l\'administrateur deux fois par semaine.';

  @override
  String get addPayoutMethod => 'Ajouter une méthode de paiement';

  @override
  String get navigate => 'Naviguer';

  @override
  String get noPayoutMethods => 'Aucun mode de paiement';

  @override
  String get name => 'Nom';

  @override
  String get nameHint => 'Entrez le nom';

  @override
  String get bankNameHint => 'Entrez le nom de la banque';

  @override
  String get branchName => 'Nom de la filiale';

  @override
  String get branchNameHint => 'Entrez le nom de la succursale';

  @override
  String get accountHolderName => 'Nom du titulaire du compte';

  @override
  String get routingNumber => 'Numéro d\'acheminement';

  @override
  String get routingNumberHint => 'Entrez le numéro de routage';

  @override
  String get accountNumber => 'Numéro de compte';

  @override
  String get accountNumberHint => 'Entrez le numéro de compte';

  @override
  String get addressHint => 'Entrer l\'adresse';

  @override
  String get dateOfBith => 'Date de naissance';

  @override
  String get yearHint => 'Année';

  @override
  String get monthHint => 'Mois';

  @override
  String get dayHint => 'Jour';

  @override
  String get city => 'Ville';

  @override
  String get cityHint => 'Entrez la ville';

  @override
  String get state => 'État';

  @override
  String get stateHint => 'Entrer l\'état';

  @override
  String get zipCode => 'Code postal';

  @override
  String get zipCodeHint => 'Entrer le code postal';

  @override
  String get day => 'Jour';

  @override
  String get month => 'Mois';

  @override
  String get year => 'Année';

  @override
  String get noActivitiesYet => 'Aucune activité pour l\'instant.';

  @override
  String get headingToDestination => 'en route vers la destination';

  @override
  String get driverArrivedNotice => 'Le chauffeur vous attend';

  @override
  String get driverShouldAriveInNotice => 'Le chauffeur devrait arriver à';

  @override
  String get driverShouldHaveArrivedNotice => 'Le chauffeur devrait arriver d\'un moment à l\'autre.';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteAccountNotice => 'Êtes-vous sûr de vouloir supprimer votre compte ? Après 30 jours, votre compte sera définitivement supprimé. Pendant ce temps, vous pouvez restaurer votre compte en vous reconnectant.';

  @override
  String get confirmAndDeleteAccount => 'Confirmer';

  @override
  String get accountDeleted => 'Le compte a été supprimé';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Je suis en route vers $destination à partir de $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Mon nom de chauffeur est $firstName $lastName, mon numéro de portable est $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Le nom du passager avec moi est $firstName $lastName, le numéro de portable est $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Le voyage a commencé à $startTime et je pense qu\'il durera environ $duration minutes.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Je m\'attends à ce que le trajet dure environ $duration minutes une fois que je suis monté dans la voiture du conducteur.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANT : veuillez utiliser cette fonctionnalité uniquement en cas d\'urgence. Nous contacterons les autorités en votre nom.';

  @override
  String get confirmAndSendSOS => 'Confirmer';

  @override
  String get sosSentSuccessfully => 'Le SOS a été envoyé avec succès';

  @override
  String get topUpSuccess => 'Le portefeuille a été rechargé avec succès';

  @override
  String get cancelNotAllowed => 'L\'annulation d\'un trajet déjà commencé n\'est pas possible.';

  @override
  String get error => 'Erreur';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String get serverError => 'Erreur du serveur';

  @override
  String get addNewLocation => 'Ajouter un nouvel emplacement';

  @override
  String get twoWayTrip => 'Voyage aller-retour';

  @override
  String get reportSubmitted => 'Rapport soumis';

  @override
  String get reportSubmittedDescription => 'Votre rapport a été soumis avec succès, nous l\'examinerons et prendrons les mesures nécessaires.';

  @override
  String get cardNumber => 'Numéro de carte';

  @override
  String get cardNumberHint => 'Entrez le numéro de la carte';

  @override
  String get expiryDate => 'Date d\'expiration';

  @override
  String get expiryDateHint => 'MM/AA';

  @override
  String get noFavoriteDrivers => 'Aucun pilote favori';

  @override
  String get noFavoriteDriversDescription => 'Vous pouvez marquer vos conducteurs préférés comme favoris lorsque vous les évaluez après le voyage.';

  @override
  String get pickupLocationNotFound => 'Nous n\'avons pas pu déterminer votre position actuelle en utilisant le GPS comme point de prise en charge. Veuillez saisir manuellement votre point de retrait.';

  @override
  String get dragToSelect => 'Faites glisser pour sélectionner';

  @override
  String get skip => 'Sauter';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get locationPermission => 'Autorisation de localisation';

  @override
  String get locationPermissionDeniedForeverMessage => 'L\'autorisation de localisation est une condition nécessaire pour recevoir des commandes autour de vous et également pour que le passager puisse suivre votre position. Vous ne pouvez pas recevoir de commandes sans cette autorisation et nous méfions de votre localisation actuelle. Vous pouvez modifier cette autorisation dans les paramètres de votre téléphone.';

  @override
  String get allow => 'Permettre';

  @override
  String get driverOnlineTitle => 'Recherche d\'un trajet';

  @override
  String get driverOfflineTitle => 'Connectez-vous pour commencer à recevoir des demandes';

  @override
  String get payInCash => 'Paiement en espèces';

  @override
  String get payInCashDescription => 'Veuillez procéder au paiement en espèces au chauffeur. Le chauffeur confirmera le paiement une fois reçu.';

  @override
  String get addToFavoriteDrivers => 'Ajouter aux pilotes favoris';

  @override
  String get slideToConfirmArrival => 'Faites glisser pour confirmer l\'arrivée';

  @override
  String get slideToConfirmPickup => 'Faites glisser pour confirmer le ramassage';

  @override
  String get slideToConfirmDropoff => 'Faites glisser pour confirmer le dépôt';

  @override
  String get noticePickingUpRiderIn => 'Récupération du cavalier à :';

  @override
  String get noticeRiderNotified => 'Le passager a été informé, récupérez le passager et commencez la balade';
}

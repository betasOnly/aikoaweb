import 'package:flutter/material.dart';
import 'package:aikoaweb/components/components.dart';

RichText privacy1 = RichText(
  text: TextSpan(
      text: "We consider it our primary responsibility to maintain the confidentiality of the personal information you provide to us and to protect" +
          " it from unauthorized access. Therefore, we take the utmost care and apply state-of-the-art security standards to ensure maximum protection" +
          " of your personal data. As a company under private law, we are subject to the provisions of the European General Data Protection Regulation (DSGVO)" +
          " and the regulations of the German Federal Data Protection Act (BDSG). We have taken technical and organizational measures to ensure that the" +
          " regulations on data protection are observed both by us and by our external service providers.",
      style: bodyTextStyle),
);

RichText definitions = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "The law requires that personal data is processed lawfully, in good faith and in a manner that can be understood by the data subject " +
          "(“lawfulness, processing in good faith, transparency”). In order to guarantee this, we inform you of the individual legal definitions which are " +
          "also used in this data protection statement: \n"),
  TextSpan(
      text: "\nPersonal data\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "'Personal data' is all information which relates to an identified or identifiable natural person " +
          "(hereinafter referred to as the “data subject”); a natural person is deemed to be identifiable if he can be identified directly or indirectly," +
          " in particular by the allocation of an identifier such as a name, an identification number, location data, an online identifier or one or more " +
          "distinctive features which are an expression of the physical, physiological, genetic, psychic, economic, cultural or social identify of this " +
          "natural person.\n"),
  TextSpan(
      text: "\nProcessing\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "'Processing' is any operation or set of operations which is performed on personal data or on sets of personal data, whether or not " +
          "by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure " +
          "by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction.\n"),
  TextSpan(
      text: "\nRestriction of processing\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "Restriction of processing” is the marking of stored personal data with the aim of limiting its processing in the future.\n"),
  TextSpan(
      text: "\nProfiling\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "Profiling” is any form of automated processing of personal data consisting of the use of personal data to evaluate certain " +
          "personal aspects relating to a natural person, in particular to analyse or predict aspects concerning that natural person’s performance at " +
          "work, economic situation, health, personal preferences, interests, reliability, behaviour, location or movements.\n"),
  TextSpan(
      text: "\nPseudonymisation\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "'Pseudonymisation' is the processing of personal data in such a manner that the personal data can no longer be attributed to a specific data " +
          "subject without the use of additional information, provided that such additional information is kept separately and is subject to technical and organisational " +
          "measures to ensure that the personal data cannot attributed to an identified or identifiable natural person.\n"),
  TextSpan(
      text: "\nFiling system\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "“Filing system” is any structured set of personal data which is accessible according to specific criteria, whether centralised, " +
          "decentralised or dispersed on a functional or geographical basis.\n"),
  TextSpan(
      text: "\nController\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "“Controller” is a natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the " +
          "purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the " +
          "controller or the specific criteria for its nomination may be provided for by Union or Member State law.\n"),
  TextSpan(
      text: "\nProcessor\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "“Processor” is a natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.\n"),
  TextSpan(
      text: "\nRecipient\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "“Recipient” is a natural or legal person, public authority, agency or another body, to which the personal data is disclosed, whether a " +
          "third party or not. However, public authorities which may receive personal data in the framework of a particular inquiry in accordance with Union or Member " +
          "State law shall not be regarded as recipients; the processing of this data by those public authorities shall be in compliance with the applicable data " +
          "protection rules according to the purposes of the processing.\n"),
  TextSpan(
      text: "\nThird Party\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "“Third party” is a natural or legal person, public authority, agency or body other than the data subject, controller, processor and persons " +
          "who, under the direct authority of the controller or processor, are authorised to process personal data.\n"),
  TextSpan(
      text: "\nConsent\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "“Consent” of the data subject is any freely given, specific, informed and unambiguous indication of the data subject’s wishes by which he or " +
          "she, by a statement or by a clear affirmative action, signifies agreement to the processing of personal data relating to him or her.\n")
]));

RichText lawfulness = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\nLawfulness of processing\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "The processing of personal data is only lawful if there is a legal basis for the processing. The legal basis for the processing may in particular be pursuant " +
          "to Article 6 Para. 1 Letters a – f GDPR:\n" +
          "\n(1) the data subject has given consent to the processing of his or her personal data for one or more specific purposes\n" +
          "\n(2) processing is necessary for the performance of a contract to which the data subject is party or in order to take steps at the request of " +
          " the data subject prior to entering into a contract;\n" +
          "\n(3) processing is necessary for compliance with a legal obligation to which the controller is subject;\n" +
          "\n(4)processing is necessary in order to protect the vital interests of the data subject or of another natural person;\n" +
          "\n(5) processing is necessary for the performance of a task carried out in the public interest or in the exercise of official authority vested in the controller;\n" +
          "\n(6) processing is necessary for the purposes of the legitimate interests pursued by the controller or by a third party, except where such interests are overridden " +
          " by the interests or fundamental rights and freedoms of the data subject which require protection of personal data, in particular where the data subject is a child.\n"),
]));

RichText dataCollection = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\nInformation about the collection of personal data\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "(1) In the following we inform you about the collection of personal data when you use our website. Personal data is e.g. name, address, e-mail addresses, user behaviour.\n\n" +
          "(2) If you contact us by e-mail, the data you provide us (your e-mail address, if applicable your name and telephone number) will be stored by us so that we can reply to your questions. We will delete the data collected in this connection when it no longer needs to be stored or the processing will be restricted, if there are statutory retention obligations.\n"),
]));

RichText personalDataCollection = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\nCollection of personal data when you visit our website\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "If you use the website purely for information purposes, i.e. if you do not register or provide us with any other information to use the website, " +
          "we do not collect the personal data which your browser sends to our server. If you would like to view our website, we collect the following data required by us " +
          "for technical reasons in order display our website to you and to ensure stability and security (legal basis is provided by Art. 6 Para. 1 Clause. 1 Letter f GDPR):\n" +
          "   • IP Adress\n" +
          "   • Date and time of the request\n" +
          "   • Time zone difference to Greenwich Mean Time (GMT)\n" +
          "   • Content of the request (specific page)\n" +
          "   • Access status/HTTP status code\n" +
          "   • Data volume transmitted\n" +
          "   • Website from which the request comes\n" +
          "   • Browser\n" +
          "   • Operating system and its interface\n" +
          "    • Language and version of the browser software\n"),
]));

RichText children = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\nChildren\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "Our service is aimed at adults. People under the age of 18 should not disclose any personal data to us without the consent of their parents or guardians.\n"),
]));

RichText googleAnalytics = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\nUse of Google Analytics\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "\n(1) This website uses Google Analytics, a web analysis service provided by Google Inc. (“Google”). Google Analytics uses “cookies”, text files which are stored on your computers and allow an analysis of the use of the website. The information produced by the cookie on your use of this website will be transmitted to and stored on a Google server in the USA. In the event of IP anonymisation being activated on this website, your IP address will however be shortened beforehand within member states of the European Union or in other states signed up to the Agreement on the European Economic Area. Only in exceptional cases will the full IP address be transmitted to a Google server in the USA, where it will be shortened. Google will use this information on behalf of the operator of this website to analyse your use of the website, to compile reports on the website activities and perform further services related to the use of the website and internet for the website operator.\n" +
          "\n(2) The IP address transmitted by your browser while using Google Analytics will not be combined with other data held by Google.\n" +
          "\n(3) You may prevent cookies from being stored with an appropriate setting in your browser software; we point out, however, that in this case you will not have full use of all of the functions on this website. You may also prevent data generated by the cookie and relating to your use of the website (including your IP address) being collected and processed by Google by downloading and installing the browser plugin available at the link: http://tools.google.com/dlpage/gaoptout?hl=de.\n" +
          "\n(4) This website uses Google Analytics with the extension “_anonymizeIp()”. As a result IP addresses are only processed in shortened form in order to prevent a link to an individual. If the data collected by you corresponds to a personal reference, it will be excluded immediately and the personal data will be deleted immediately.\n" +
          "\n(5) We use Google Analytics in order to analyse and regularly improve the use of our website. Using the statistics gathered, we can improve our website offering and make it more interesting for you as a user. For exceptional cases where personal data is transferred to the USA, Google complies with the EU-US Privacy Shield, www.privacyshield.gov/EU-US-Framework. The legal basis for use of Google Analytics is provided by Art. 6 Para. 1 Clause 1 Letter f GDPR.\n" +
          "\n(6) Information about the third-party provider: Google Dublin, Google Ireland Ltd., Gordon House, Barrow Street, Dublin 4, Ireland, Fax: +353 (1) 436 1001. Terms of service for users:\n" +
          "http://www.google.com/analytics/terms/de.html, Google’s “Safeguarding your data” http://www.google.com/intl/de/analytics/learn/privacy.html, and the Google privacy policy:http://www.google.de/intl/de/policies/privacy.\n" +
          "\n(7) This website also uses Google Analytics for a cross-device analysis of visitor flows with User ID data. You can deactivate the cross-device analysis of your usage in your customer account under “My data”, “Personal data”."),
]));

RichText rights = RichText(
    text: TextSpan(style: bodyTextStyle, children: <TextSpan>[
  TextSpan(
      text: "\n1. Revocation of consent\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "If the processing of personal data is based on consent given, you have the right to revoke the consent at any time. The lawfulness of the processing that has taken place based on the consent up until the revocation will not be affected by the revocation.\n" +
          "You can contact us at any time in order to exercise your right of revocation.\n"),
  TextSpan(
      text: "\n2. Right to confirmation\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "You have the right to receive confirmation from the controller about whether we process personal data concerning yourself. You can ask for confirmation at any time using the contact details specified above.\n"),
  TextSpan(
      text: "\n3. Right to information\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "If personal data is processed, you can ask at any time for information about this personal data and the following:\n" +
          "   • the processing purposes;\n" +
          "   • the categories of personal data which are processed;\n" +
          "   • the recipients or categories of recipients to whom the personal data has been disclosed or is yet to be disclosed, in particular \n"
              "     recipients in third countries or in international organisations;\n" +
          "   • if possible, the planned length of time the personal data is to be stored, or if this is not possible, the criteria for determining this length of time;\n" +
          "   • the existence of a right to correction or deletion of the personal data concerning yourself or the limitation of processing by the controller or a right\n" +
          "     to object to this processing;\n" +
          "   • the existence of a right to complain to a supervisory authority;\n" +
          "   • if the personal data is not collected from the data subject, all available information about the origin of the data;\n" +
          "   • the existence of automated decision-making including profiling according to Article 22 Paragraphs 1 and 4 GDPR and – at least in these cases– meaningful\n" +
          "     information on the logic involved and the consequences and intended effect of such processing for the data subject.\n" +
          "\nIf personal data is transferred to a third country or an international organisation, you have the right to be informed of the suitable safeguards relating " +
          "to the transfer pursuant to Article 46 GDPR. We will provide a copy of the personal data which is the subject matter of the processing. For all further " +
          "copies which you request, we can charge an appropriate fee based on the administration costs. If you make the request electronically, the information is to " +
          "be provided in a common electronic format, unless you specify otherwise. The right to receive a copy pursuant to Paragraph 3 must not affect the rights and " +
          "freedoms of other persons.\n"),
  TextSpan(
      text: "\n4. Right to correction\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "You have the right to ask us to correct immediately inaccurate personal data concerning yourself. Taking into account the processing purposes, you have the right to ask for the completion of incomplete personal data – including by means of a supplementary statement.\n"),
  TextSpan(
      text: "\n5. Right to deletion ('right to be forgotten')\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "You have the right to ask the controller to delete immediately personal data concerning yourself, and we have to delete personal data immediately if one of the following reasons applies:\n" +
          "   • The personal data is no longer required for the purposes for which it was collected or otherwise processed.\n" +
          "   • The data subject revokes his consent upon which the processing is based pursuant to Article 6 Paragraph 1 Letter a GDPR or Article 9 Paragraph 2 Letter a\n" +
          "     GDPR, and there is no other legal basis for the processing.\n" +
          "   • The data subject objects to the processing pursuant to Article 21 Paragraph 1 GDPR and there are no overriding legitimate reasons for the processing, or the\n" +
          "     data subject objects to the processing pursuant to Article 21 Paragraph 2 GDPR.\n" +
          "   • The personal data was processed unlawfully.\n" +
          "   • The deletion of the personal data is required to meet a legal obligation under Union law or Member State which the controller is subject to.\n" +
          "The personal data was collected in relation to information society services pursuant to Article 8 Paragraph 1 GDPR.\n" +
          "If the controller has published personal data and is accordingly required to delete it pursuant to Paragraph 1, it will take appropriate measures, including of a technical nature, taking into account the available technology and implementation costs, to inform the persons responsible for the data processing that the data subject has asked them to delete all links to this personal data or copies or replications of this personal data.\n"
              "\nThe right to deletion (“right to be forgotten”) does not exist if the processing is necessary:\n" +
          "   • for exercising the right of freedom of expression and information;\n" +
          "   • for compliance with a legal obligation which requires processing by Union or Member State law to which the controller is subject or for the performance\n" +
          "     of a task carried out in the public interest or in the exercise of official authority vested in the controller;\n" +
          "   • for reasons of public interest in the area of public health in accordance with Article 9 Paragraph 2 Letters h and i and Article 9 Paragraph 3 GDPR;\n" +
          "   • for archiving purposes in the public interest, scientific or historical research purposes or statistical purposes in accordance with\n" +
          "     Article 89 Paragraph 1 GDPR in so far as the right referred to in Paragraph 1 is likely to render impossible or seriously impair the achievement\n" +
          "     of the objectives of that processing; or\n" +
          "   • for the establishment, exercise or defence of legal claims.\n"),
  TextSpan(
      text: "\n6. Right to restriction of processing\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "You have the right to ask us to restrict the processing of your personal data if one of the following circumstances exists:\n" +
          "   • the accuracy of the personal data is contested by the data subject, for a period enabling the controller to verify the accuracy of the personal data;\n" +
          "   • the processing is unlawful and the data subject opposes the erasure of the personal data and requests the restriction of its use instead;\n" +
          "   • the controller no longer needs the personal data for the purposes of the processing, but it is required by the data subject for the establishment, \n" +
          "     exercise or defence of legal claims;\n" +
          "   • the data subject has objected to processing pursuant to Article 21 Paragraph 1 GDPR pending the verification whether the legitimate grounds of the \n" +
          "     controller override those of the data subject.\n" +
          "\nWhere processing has been restricted by the above, such personal data shall, with the exception of storage, only be processed with the data subject’s consent or for the establishment, exercise or defence of legal claims or for the protection of the rights of another natural or legal person or for reasons of important public interest of the Union or of a Member State.\n" +
          "\nIn order to exercise the right to restriction of processing, the data subject can contact us at any time using the contact details specified above.\n"),
  TextSpan(
      text: "\n7. Right to data portability\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "You have the right to receive the personal data concerning yourself that you have provided us in a structured, common and machine-readable format, and you have the right to transfer this data to another controller without any hindrance from the controller to which the personal data have been provided, if\n" +
          "   • the processing is based on consent pursuant to Article 6 Paragraph 1 Letter a or Article 9 Paragraph 2 Letter a or a contract pursuant\n" +
          "     to Article 6 Paragraph 1 Letter b GDPR and\n" +
          "   • the processing is performed with the help of automated processes.\n" +
          "\nIn exercising your right to data portability pursuant to Paragraph 1, you have the right to have the personal data transferred directly from one controller to another, where technically feasible. The exercising of the right to data portability will not affect the right to deletion (“right to be forgotten”). That right shall not apply to processing necessary for the performance of a task carried out in the public interest or in the exercise of official authority vested in the controller.\n"),
  TextSpan(
      text: "\n8. Right to object\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "You have the right to object at any time for reasons relating to your particular situation to the processing of personal data concerning yourself which is performed on the basis of Article 6 Paragraph 1 Letters e or f GDPR; this also applies to profiling based on these provisions. The controller will no longer process the personal data, unless it can provide proof of compelling legitimate grounds for the processing which override the interests, rights and freedoms of the data subject, or the processing serves the enforcement, exercising or defence of legal rights.\n\n" +
          "If personal data is processed for direct advertising purposes, you have the right to object at any time to the processing of personal data concerning yourself for the purpose of such advertising; this also applies to profiling, if it is related to such direct advertising. If you object to processing for direct marketing purposes, the personal data will no longer be processed for such purposes.\n\n" +
          "In the context of the use of information society services, and notwithstanding Directive 2002/58/EC, you can exercise your right to object by automated means using technical specifications.\n\n" +
          "You have the right, for reasons relating to your particular situation, to object to the processing of personal data concerning yourself  for scientific or historical research purposes or statistical purposes pursuant to Article 89 Paragraph 1, unless the processing is required for the performance of a task in the public interest.\n"),
  TextSpan(
      text: "\n9. Right to individual decision-making, including profiling\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text: "You have the right not to be subject to a decision based solely on automated processing, including profiling, which produces legal effects concerning yourself or similarly significantly affects you. This will not apply if the decision:\n\n" +
          "   • is necessary for entering into, or performance of, a contract between the data subject and a data controller,\n" +
          "   • is authorised by Union or Member State law to which the controller is subject and which also lays down suitable\n" +
          "     measures to safeguard the data subject’s rights and freedoms and legitimate interests, or\n" +
          "   • is based on the data subject’s explicit consent.\n\n" +
          "The controller will take suitable measures to safeguard the data subject’s rights and freedoms and legitimate interests, at least the right to obtain human intervention on the part of the controller, to express his or her point of view and to contest the decision.\n"),
  TextSpan(
      text: "\n10. Right to complain to a supervisory authority\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "You also have the right, without prejudice to any other administrative or non-judicial remedy, to complain to a supervisory authority, in particular in the member state of your place of residence, your place of work or the place of the alleged breach, if the data subject is of the view that the processing of the personal data concerning himself infringe provisions of this regulation.\n"),
  TextSpan(
      text: "\n11. Right to complain to a supervisory authority\n",
      style: headlineSecondaryTextStyle.copyWith(fontSize: 18)),
  TextSpan(
      text:
          "Without prejudice to any other administrative or judicial remedy, including the right to lodge a complaint with a supervisory authority pursuant to Article 77 GDPR, you have the right to an effective judicial remedy if you are of the view that your rights pursuant to this regulation are infringed due to any processing of your personal data which is not in accordance with this regulation.\n"),
]));

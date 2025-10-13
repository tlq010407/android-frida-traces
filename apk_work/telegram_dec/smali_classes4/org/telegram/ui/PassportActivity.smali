.class public Lorg/telegram/ui/PassportActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PassportActivity$ErrorRunnable;,
        Lorg/telegram/ui/PassportActivity$EncryptionResult;,
        Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;,
        Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;,
        Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;,
        Lorg/telegram/ui/PassportActivity$LinkSpan;,
        Lorg/telegram/ui/PassportActivity$SecureDocumentCell;,
        Lorg/telegram/ui/PassportActivity$ProgressView;
    }
.end annotation


# instance fields
.field private acceptTextView:Landroid/widget/TextView;

.field private addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private addDocumentSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private allowNonLatinName:Z

.field private availableDocumentTypes:Ljava/util/ArrayList;

.field private bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private callbackCalled:Z

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private codesMap:Ljava/util/HashMap;

.field private countriesArray:Ljava/util/ArrayList;

.field private countriesMap:Ljava/util/HashMap;

.field private currentActivityType:I

.field private currentBotId:J

.field private currentCallbackUrl:Ljava/lang/String;

.field private currentCitizeship:Ljava/lang/String;

.field private currentDocumentValues:Ljava/util/HashMap;

.field private currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

.field private currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

.field private currentEmail:Ljava/lang/String;

.field private currentExpireDate:[I

.field private currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

.field private currentGender:Ljava/lang/String;

.field private currentNonce:Ljava/lang/String;

.field private currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

.field private currentPayload:Ljava/lang/String;

.field private currentPhoneVerification:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

.field private currentPhotoViewerLayout:Landroid/widget/LinearLayout;

.field private currentPicturePath:Ljava/lang/String;

.field private currentPublicKey:Ljava/lang/String;

.field private currentResidence:Ljava/lang/String;

.field private currentScope:Ljava/lang/String;

.field private currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

.field private currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

.field private currentValues:Ljava/util/HashMap;

.field private currentViewNum:I

.field private delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

.field private deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private dividers:Ljava/util/ArrayList;

.field private documentOnly:Z

.field private documents:Ljava/util/ArrayList;

.field private documentsCells:Ljava/util/HashMap;

.field private documentsErrors:Ljava/util/HashMap;

.field private documentsLayout:Landroid/widget/LinearLayout;

.field private documentsToTypesLink:Ljava/util/HashMap;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private emailCodeLength:I

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyLayout:Landroid/widget/LinearLayout;

.field private emptyTextView1:Landroid/widget/TextView;

.field private emptyTextView2:Landroid/widget/TextView;

.field private emptyTextView3:Landroid/widget/TextView;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private errorsMap:Ljava/util/HashMap;

.field private errorsValues:Ljava/util/HashMap;

.field private extraBackgroundView:Landroid/view/View;

.field private extraBackgroundView2:Landroid/view/View;

.field private fieldsErrors:Ljava/util/HashMap;

.field private frontDocument:Lorg/telegram/messenger/SecureDocument;

.field private frontLayout:Landroid/widget/LinearLayout;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnFailure:Z

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private initialValues:Ljava/lang/String;

.field private inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private inputFieldContainers:[Landroid/view/ViewGroup;

.field private inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private languageMap:Ljava/util/HashMap;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private mainErrorsMap:Ljava/util/HashMap;

.field private nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private needActivityResult:Z

.field private noAllDocumentsErrorText:Ljava/lang/CharSequence;

.field private noAllTranslationErrorText:Ljava/lang/CharSequence;

.field private noPasswordImageView:Landroid/widget/ImageView;

.field private noPasswordSetTextView:Landroid/widget/TextView;

.field private noPasswordTextView:Landroid/widget/TextView;

.field private nonLatinNames:[Z

.field private passwordAvatarContainer:Landroid/widget/FrameLayout;

.field private passwordForgotButton:Landroid/widget/TextView;

.field private passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private pendingDelegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

.field private pendingErrorRunnable:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

.field private pendingFinishRunnable:Ljava/lang/Runnable;

.field private pendingPhone:Ljava/lang/String;

.field private permissionsDialog:Landroid/app/Dialog;

.field private permissionsItems:Ljava/util/ArrayList;

.field private phoneFormatMap:Ljava/util/HashMap;

.field private plusTextView:Landroid/widget/TextView;

.field private presentAfterAnimation:Lorg/telegram/ui/PassportActivity;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private reverseDocument:Lorg/telegram/messenger/SecureDocument;

.field private reverseLayout:Landroid/widget/LinearLayout;

.field private saltedPassword:[B

.field private savedPasswordHash:[B

.field private savedSaltedPassword:[B

.field private scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private scrollHeight:I

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private secureSecret:[B

.field private secureSecretId:J

.field private selfieDocument:Lorg/telegram/messenger/SecureDocument;

.field private selfieLayout:Landroid/widget/LinearLayout;

.field private topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private translationDocuments:Ljava/util/ArrayList;

.field private translationLayout:Landroid/widget/LinearLayout;

.field private typesValues:Ljava/util/HashMap;

.field private typesViews:Ljava/util/HashMap;

.field private uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private uploadingDocuments:Ljava/util/HashMap;

.field private uploadingFileType:I

.field private useCurrentValue:Z

.field private usingSavedPassword:I

.field private views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public static synthetic $r8$lambda$0C6Y-4HGiPCpinS7_kYWs-R4Zn8(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$43(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1Od4_182vkeIvNZlHDNcEDab_J8(Lorg/telegram/ui/PassportActivity;Landroid/view/View;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$45(Landroid/view/View;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2WIr0XjZTLDvwGCpFUmivsSq9ms(Lorg/telegram/ui/PassportActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$50(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3bmgB0x_UwtzH1B8qPLvpwZYpDk(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$8(Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3g_G9zkPRWl9B5-FEdlziXR1SWk(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4C1u-X9eGZPucbj4xT4sirbTxRY(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->lambda$checkNativeFields$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$4eHsq5yS8dOaIHkRpHmVaO9lCY4(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$openAddDocumentAlert$23(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6X_EEM_oXmM7pDtgMrw_DftfZws(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7_7kJN2Rep5DE97HkRyi1pFkc1U(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity;->lambda$addField$63(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7_F0p7BrEsYfl1fNKotKJSzPZrE(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$53(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8kO83n9I0ywxF8epJlo94r4dcIc(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AydNrOC2UEWc630rN87xbTdNNJ0(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/PassportActivity;->lambda$deleteValueInternal$60(Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpjDeQGdM2h8MyH4RRbLAHnh3xQ(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$49(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CDoIeVndK-pTdJGDKKOyMQWwDG0(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DAljIjsH8pbqsXx3chyrr-DsbDg(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$loadPasswordInfo$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GGeb_VPx5pW2Rxl-yJxCZyDYUDA(Lorg/telegram/ui/PassportActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;III)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$47(ILorg/telegram/ui/Components/EditTextBoldCursor;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIBFOW7F5UfpucbGc68lyZfTX6A(Lorg/telegram/ui/PassportActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$29(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H0tXIS3ooqe770iAyeJwxuw3ZuI(Lorg/telegram/ui/PassportActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$addDocumentView$55(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAQn_bHYLjlDcfdCGw2gXqSQvXQ(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$processSelectedFiles$72(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KQuERTi5JueXbJoEw2MPL0DIR8A(Lorg/telegram/ui/PassportActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$31(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KkgdSce8IFjp8mghe2q-ui1io-w(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$checkDiscard$69(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mwsudp3lVaXgfxDhzixlGDwfCNo(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-7Kcjg1wfohYsiYG7nzUJzBuf0(Lorg/telegram/ui/PassportActivity;[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createDocumentDeleteAlert$38([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PpKPAoluF3i0Xm5kTqd75fIGMjk(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R__yOO-lirRkCXzkxedIIdHphFc(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->lambda$addField$61(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SP3eNvbAaDhGxhfbHjBgmXjsrao(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createRequestInterface$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqzOgD_1ZyggTXXNAg1yOEtcwO4(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$U0BF77m-ZFgCuvL5R6p9cCizw00(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createEmailInterface$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V-Rp7raSYGJplM7DrTajAEJDN6U(Lorg/telegram/ui/PassportActivity;ILorg/telegram/messenger/SecureDocument;Lorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->lambda$addDocumentView$57(ILorg/telegram/messenger/SecureDocument;Lorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VD2WG08kT33wU6BMU4ZIFEVyptk(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->lambda$startPhoneVerification$65(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VdaDpQWHrQj1ME54U6ujiOQiV2I(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W2KUr65Qf1R9TAXu0HS53x201tw(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$28(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WydboVvdKWvlBYWGRu6MGQscNZU(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$processSelectedFiles$70(Lorg/telegram/messenger/SecureDocument;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0sKVTdBSYnCa5gHGty39hZf0bY(Lorg/telegram/ui/PassportActivity;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$onPasswordDone$13(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X7qpFUR7ZVZzv9fkPFMNvFsrvIY(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/PassportActivity;->lambda$addDocumentView$56(Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhzsstMUjTjM9Wd80k1_oQYersE(Lorg/telegram/ui/PassportActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$51(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XrWedncAxxgLlSTn3vTbBeglWpU(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$54(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nVLuyXnfl_rJTA4jLPt6ulnxD0(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$52(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_w_-RZbip5cP1g6uSYu5WD1gfOU(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$barGLn0lNoAK052NjmLOs4bnCHw(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$onRequestPermissionsResultFragment$68(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d70YpfXrW5yWJ8RRhkYHrgqj4To(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsAFTyphtVu5_lxjfLPXLJPlc90(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/PassportActivity;->lambda$deleteValueInternal$59(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTYsg-vmLkqZeyKgLAOZnPQCg-I(Lorg/telegram/ui/PassportActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$46(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gXsVndGqTKMJoGnpCUq0kiXTB9o([ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createDocumentDeleteAlert$39([ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$grDk1ndx1hhhE_9WHgXy8flFFAg(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hx6sWXjZXWpO8DP_Z9N2BilLxN0(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$34(Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9QnYneRf7UVUZ8vOV6WcZ9xDC0(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iEQDiqee8HveFUMmgMor1xdGf3Q(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iY5oC0CTvJkA5Yb-IFf8gJGl6W4(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->lambda$onResume$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$k5Alf7TbuWfq72-_Wi54A_owy4Q(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createRequestInterface$14(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k8S_tWfPp62k6Sgy2e0Th3siyOE(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvzSSVWDeC5j9SupdfW-hu3ZTCU(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createManageInterface$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0F3zGCkMug8fbl9qSbBBH9eFek(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createEmailInterface$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l5CFj9i4ivrYVU596dr0-wMEqd4(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$processSelectedFiles$71(Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjxz8Jot5oDOEdKKaQt9jD0tpao(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$addField$62(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpX79cHkBJP9xMaHkZw063bD_wQ(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$41(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBxjLy6pqg5dpTwlP83N1BHLELo(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createRequestInterface$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ra78BiX_t80ORbNxWlslsnjcE1U(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->lambda$startPhoneVerification$66(Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBgdfIAXnOfuM9PLSNDezUF4Aus(Lorg/telegram/ui/PassportActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$35(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sp6u31Zub4GH6cj24YRVSJikMlo(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tE88goplKXXxt4n-Q1s0JY8kMps(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->lambda$createPhoneInterface$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$tVL_7kk0WZjQL_5EPGHea5mN11Y(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createEmailVerificationInterface$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t_jO32_SY8SSMKbtWFNgbU2aWXY(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6SearmdrDF7MUaYs37pjWFe46M(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$48(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vOemIGqXR4_ukAtrAsNV2-MG3e0(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$loadPasswordInfo$3(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgTs2pY2dAlvkhZk8Oz_DODNjhc(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGX1gXqVpAikMsno12bg2frw8VY(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPOgWaIwjkaArgw6Mj_9ShvfBF0(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity;->lambda$addField$64(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpKpmyZLiw8whbT5hHZ1skXfz58(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->lambda$onTransitionAnimationEnd$67()V

    return-void
.end method

.method public static synthetic $r8$lambda$xsKc0pqZ6Em5SqssZ3lou6Myo9A(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->lambda$createPasswordInterface$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxRCbNdv3E7oCThfrNvg4sVF5Fo(Lorg/telegram/ui/PassportActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->lambda$createAddressInterface$36(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zG5rxzrUsEVmSKxjDocOviA97Gg(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->lambda$createIdentityInterface$44(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpSXSBH9Jl1Ue6Z13JiM9UoBiyA(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PassportActivity;->lambda$new$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 18

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PassportActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-wide/from16 v0, p2

    iput-wide v0, v10, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    move-object/from16 v0, p6

    iput-object v0, v10, Lorg/telegram/ui/PassportActivity;->currentPayload:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v10, Lorg/telegram/ui/PassportActivity;->currentNonce:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v10, Lorg/telegram/ui/PassportActivity;->currentScope:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, v10, Lorg/telegram/ui/PassportActivity;->currentPublicKey:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v10, Lorg/telegram/ui/PassportActivity;->currentCallbackUrl:Ljava/lang/String;

    if-nez p1, :cond_10

    iget-object v0, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    :try_start_0
    iget-object v0, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->errors:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/PassportActivity$2;

    invoke-direct {v1, v10}, Lorg/telegram/ui/PassportActivity$2;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_10

    iget-object v3, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->errors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$SecureValueError;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFrontSide;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "data"

    const/4 v6, 0x0

    const-string v7, "error_all"

    const-string v8, "selfie"

    const-string v9, "reverse"

    const-string v12, "front"

    const-string v13, "files"

    const-string v14, "translation"

    if-eqz v4, :cond_0

    :try_start_1
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFrontSide;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFrontSide;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFrontSide;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFrontSide;->file_hash:[B

    move-object/from16 v16, v15

    move-object v15, v12

    :goto_1
    move-object/from16 v17, v6

    move-object v6, v3

    move-object/from16 v3, v17

    goto/16 :goto_4

    :cond_0
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorReverseSide;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorReverseSide;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorReverseSide;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorReverseSide;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorReverseSide;->file_hash:[B

    move-object/from16 v16, v15

    move-object v15, v9

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorSelfie;->file_hash:[B

    move-object/from16 v16, v15

    move-object v15, v8

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFile;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFile;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFile;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFile;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFile;->file_hash:[B

    move-object/from16 v16, v15

    move-object v15, v14

    goto :goto_1

    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorTranslationFiles;->text:Ljava/lang/String;

    move-object v15, v14

    goto :goto_2

    :cond_4
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFile;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFile;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFile;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFile;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFile;->file_hash:[B

    move-object/from16 v16, v15

    move-object v15, v13

    goto :goto_1

    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFiles;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFiles;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFiles;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorFiles;->text:Ljava/lang/String;

    move-object v15, v13

    :goto_2
    move-object/from16 p1, v15

    move-object v15, v6

    goto :goto_5

    :cond_6
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueError;

    if-eqz v4, :cond_7

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueError;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueError;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueError;->text:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueError;->hash:[B

    move-object/from16 v16, v15

    move-object v15, v7

    goto/16 :goto_1

    :cond_7
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;

    if-eqz v4, :cond_e

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;

    const/4 v4, 0x0

    :goto_3
    iget-object v6, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    iget-object v6, v11, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;->data_hash:[B

    invoke-static {v6, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v10, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;->text:Ljava/lang/String;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;->field:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueErrorData;->data_hash:[B

    move-object/from16 v16, v15

    move-object v15, v5

    goto/16 :goto_1

    :goto_4
    move-object/from16 p1, v15

    move-object v15, v3

    move-object/from16 v3, v16

    :goto_5
    iget-object v1, v10, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move/from16 p3, v0

    iget-object v0, v10, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lorg/telegram/ui/PassportActivity;->mainErrorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    move/from16 p3, v0

    :goto_6
    const/4 v0, 0x2

    if-eqz v6, :cond_9

    invoke-static {v6, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    const-string v4, ""

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_9

    :sswitch_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_9

    :sswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_9

    :sswitch_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :sswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_9

    :sswitch_5
    move-object/from16 v5, p1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_9

    :sswitch_6
    move-object/from16 v5, p1

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v0, -0x1

    :goto_9
    packed-switch v0, :pswitch_data_0

    goto :goto_c

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :pswitch_2
    if-eqz v6, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_b
    const-string v7, "translation_all"

    goto :goto_b

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :pswitch_4
    if-eqz v6, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    const-string v7, "files_all"

    :goto_b
    :pswitch_5
    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :pswitch_6
    if-eqz v15, :cond_f

    invoke-virtual {v1, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :cond_d
    move/from16 p3, v0

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p3

    goto/16 :goto_3

    :cond_e
    move/from16 p3, v0

    :cond_f
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p3

    goto/16 :goto_0

    :catch_0
    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6db60d4f -> :sswitch_6
        -0x3600c698 -> :sswitch_5
        0x2eefaa -> :sswitch_4
        0x5ceba77 -> :sswitch_3
        0x5d2de29 -> :sswitch_2
        0x13a936ea -> :sswitch_1
        0x418e52e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->dividers:Ljava/util/ArrayList;

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->nonLatinNames:[Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PassportActivity;->allowNonLatinName:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->countriesMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->codesMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->phoneFormatMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->documentsToTypesLink:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->mainErrorsMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    new-instance v2, Lorg/telegram/ui/PassportActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$1;-><init>(Lorg/telegram/ui/PassportActivity;)V

    iput-object v2, p0, Lorg/telegram/ui/PassportActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz p4, :cond_0

    iget-boolean p2, p4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    iput-boolean p2, p0, Lorg/telegram/ui/PassportActivity;->allowNonLatinName:Z

    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/PassportActivity;->currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iput-object p6, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iput-object p7, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p8, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    iput-object p9, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    if-ne p1, v0, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    if-ne p1, p2, :cond_2

    new-array p2, v0, [Lorg/telegram/ui/Components/SlideView;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    :cond_4
    const/4 p2, 0x5

    if-ne p1, p2, :cond_8

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    if-eqz p1, :cond_5

    iput v1, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/UserConfig;->savedPasswordHash:[B

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->savedPasswordHash:[B

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/UserConfig;->savedSaltedPassword:[B

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->savedSaltedPassword:[B

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->loadPasswordInfo()V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget p1, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    if-ne p1, v1, :cond_7

    invoke-direct {p0, v1}, Lorg/telegram/ui/PassportActivity;->onPasswordDone(Z)V

    :cond_7
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isPassportConfigLoaded()Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_getPassportConfig;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_getPassportConfig;-><init>()V

    sget p2, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getPassportConfig;->hash:I

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentPhotoViewerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PassportActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    return-void
.end method

.method static synthetic access$12000(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/PassportActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;Z)V

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$12502(Lorg/telegram/ui/PassportActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnFailure:Z

    return p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/PassportActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    return-wide v0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentScope:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentPayload:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    return-object p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentNonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;)Lorg/telegram/tgnet/tl/TL_account$authorizationForm;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    return-object p1
.end method

.method static synthetic access$13100(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentCallbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$13202(Lorg/telegram/ui/PassportActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p1
.end method

.method static synthetic access$13300(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->needActivityResult:Z

    return p0
.end method

.method static synthetic access$13402(Lorg/telegram/ui/PassportActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->needActivityResult:Z

    return p1
.end method

.method static synthetic access$13500(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$13702(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/PassportActivity;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->presentAfterAnimation:Lorg/telegram/ui/PassportActivity;

    return-object p1
.end method

.method static synthetic access$13800(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14102(Lorg/telegram/ui/PassportActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    return p1
.end method

.method static synthetic access$14200(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updatePasswordInterface()V

    return-void
.end method

.method static synthetic access$14300(Lorg/telegram/ui/PassportActivity;)[Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$14400(Lorg/telegram/ui/PassportActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->onPasscodeError(Z)V

    return-void
.end method

.method static synthetic access$14500(Lorg/telegram/ui/PassportActivity;)[B
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->savedSaltedPassword:[B

    return-object p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/PassportActivity;[B[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->decryptSecret([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/PassportActivity;)[B
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->getRandomSecret()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->getFieldCost(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->checkFieldsForError()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->allowNonLatinName:Z

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/PassportActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->allowNonLatinName:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PassportActivity;)[Z
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->nonLatinNames:[Z

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->onFieldError(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->isHasNotAnyChanges()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PassportActivity;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PassportActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PassportActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PassportActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->callCallback(Z)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PassportActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->onPasswordDone(Z)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/SlideView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity;->currentViewNum:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PassportActivity;ZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/PassportActivity;->startPhoneVerification(ZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PassportActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->useCurrentValue:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity;->scrollHeight:I

    return p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/PassportActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->scrollHeight:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/PassportActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PassportActivity;->emailCodeLength:I

    return p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/PassportActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->emailCodeLength:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/SecureDocument;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PassportActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PassportActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/PassportActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;Landroid/text/Editable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PassportActivity;->checkFieldForError(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;Landroid/text/Editable;Z)V

    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PassportActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->checkNativeFields(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PassportActivity;[B)Lorg/telegram/ui/PassportActivity$EncryptionResult;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->encryptData([B)Lorg/telegram/ui/PassportActivity$EncryptionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PassportActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PassportActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PassportActivity;->secureSecretId:J

    return-wide v0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/PassportActivity;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/PassportActivity;->secureSecretId:J

    return-wide p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-object p1
.end method

.method static synthetic access$7402(Lorg/telegram/ui/PassportActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PassportActivity;)[B
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    return-object p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/PassportActivity;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    return-object p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PassportActivity;)[B
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    return-object p0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/PassportActivity;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    return-object p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->removeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/PassportActivity;->setTypeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)Lorg/telegram/ui/PassportActivity$EncryptionResult;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createSecureDocument(Ljava/lang/String;)Lorg/telegram/ui/PassportActivity$EncryptionResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/PassportActivity;->deleteValueInternal(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Z)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PassportActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/PassportActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PassportActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->processSelectedFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PassportActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->processSelectedAttach(I)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PassportActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private addDocumentView(Lorg/telegram/messenger/SecureDocument;I)V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    return-void

    :cond_1
    if-ne p2, v1, :cond_2

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    return-void

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    new-instance v4, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne p2, v3, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->PassportSelfie:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfie"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_4

    :cond_6
    if-ne p2, v2, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translation"

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-nez v1, :cond_9

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->PassportFrontSide:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->PassportMainPage:I

    goto :goto_1

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "front"

    goto :goto_0

    :cond_a
    if-ne p2, v0, :cond_b

    sget v0, Lorg/telegram/messenger/R$string;->PassportReverseSide:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reverse"

    goto :goto_0

    :cond_b
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files"

    goto :goto_0

    :goto_4
    if-eqz v10, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v4}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;->access$6700(Lorg/telegram/ui/PassportActivity$SecureDocumentCell;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->date:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v4, v0, v1, p1}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;->setTextAndValueAndImage(Ljava/lang/String;Ljava/lang/CharSequence;Lorg/telegram/messenger/SecureDocument;)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/PassportActivity;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda47;

    move-object v5, v0

    move-object v6, p0

    move v7, p2

    move-object v8, p1

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/PassportActivity;ILorg/telegram/messenger/SecureDocument;Lorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V
    .locals 8

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PassportActivity;->getSecureDocumentKey([B[B)Lorg/telegram/messenger/SecureDocumentKey;

    move-result-object v3

    new-instance v0, Lorg/telegram/messenger/SecureDocument;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SecureDocument;-><init>(Lorg/telegram/messenger/SecureDocumentKey;Lorg/telegram/tgnet/TLRPC$TL_secureFile;Ljava/lang/String;[B[B)V

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/PassportActivity;->addDocumentView(Lorg/telegram/messenger/SecureDocument;I)V

    return-void
.end method

.method private addDocumentViews(Ljava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    invoke-direct {p0, v3, v1}, Lorg/telegram/ui/PassportActivity;->addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addField(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    move/from16 v6, p4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-instance v9, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    move-object/from16 v5, p1

    invoke-direct {v9, v8, v5}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    const-string v11, "PassportTwoDocuments"

    if-eqz v10, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v8, v2}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->PassportTwoDocuments:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v8, v10}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v8, v12}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v12

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v4

    aput-object v12, v2, v3

    invoke-static {v11, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->PassportIdentityDocument:I

    goto :goto_4

    :cond_4
    :goto_2
    sget v2, Lorg/telegram/messenger/R$string;->PassportPersonalDetails:I

    goto :goto_4

    :cond_5
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v10, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_8

    sget v5, Lorg/telegram/messenger/R$string;->PassportTwoDocuments:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v8, v10}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v8, v12}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v12

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v4

    aput-object v12, v2, v3

    invoke-static {v11, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->PassportResidentialAddress:I

    goto :goto_4

    :cond_9
    :goto_3
    sget v2, Lorg/telegram/messenger/R$string;->PassportAddress:I

    goto :goto_4

    :cond_a
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/messenger/R$string;->PassportPhone:I

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    instance-of v2, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v2, :cond_c

    sget v2, Lorg/telegram/messenger/R$string;->PassportEmail:I

    goto :goto_4

    :goto_5
    xor-int/lit8 v5, p5, 0x1

    const-string v10, ""

    invoke-virtual {v9, v2, v10, v5}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    :cond_c
    iget v2, v8, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v5, 0x8

    const/4 v10, -0x2

    const/4 v11, -0x1

    if-ne v2, v5, :cond_d

    iget-object v2, v8, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v9, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_d
    iget-object v2, v8, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda56;

    invoke-direct {v2, v8, v0, v1, v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v8, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v8, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v8, v1, v4}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    if-eqz v11, :cond_e

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->email:Ljava/lang/String;

    :goto_7
    move-object v10, v5

    goto :goto_8

    :cond_e
    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainPhone;

    if-eqz v11, :cond_f

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainPhone;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_securePlainPhone;->phone:Ljava/lang/String;

    goto :goto_7

    :cond_f
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    if-eqz v10, :cond_10

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data:[B

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {v8, v12, v10}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v10

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {v8, v11, v10, v2}, Lorg/telegram/ui/PassportActivity;->decryptData([B[B[B)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v2, v5

    goto :goto_8

    :cond_10
    move-object v2, v5

    move-object v10, v2

    :goto_8
    if-eqz v0, :cond_15

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object v12, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v13, v11, :cond_13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v3, v8, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v8, Lorg/telegram/ui/PassportActivity;->documentsToTypesLink:Ljava/util/HashMap;

    invoke-virtual {v3, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v14, :cond_12

    const/4 v3, 0x0

    invoke-direct {v8, v15, v3}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    if-eqz v3, :cond_11

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data:[B

    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {v8, v12, v3}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {v8, v5, v3, v4}, Lorg/telegram/ui/PassportActivity;->decryptData([B[B[B)Ljava/lang/String;

    move-result-object v12

    :cond_11
    move-object v5, v15

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x1

    :goto_a
    add-int/2addr v13, v3

    const/4 v4, 0x0

    goto :goto_9

    :cond_13
    if-nez v5, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    move-object v4, v0

    :goto_b
    move-object v5, v12

    goto :goto_c

    :cond_14
    move-object v4, v5

    goto :goto_b

    :cond_15
    move-object v4, v5

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v10

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/PassportActivity;->setTypeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;ZI)V

    return-object v9
.end method

.method private addTranslationDocumentViews(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/PassportActivity;->addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private callCallback(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity;->callbackCalled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentCallbackUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentCallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tg_passport=success"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnFailure:Z

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_5

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentCallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tg_passport=cancel"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity;->needActivityResult:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnFailure:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_5
    :goto_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->callbackCalled:Z

    :cond_6
    return-void
.end method

.method private checkDiscard()Z
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->isHasNotAnyChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscardChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x1

    return v0
.end method

.method private checkFieldForError(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;Landroid/text/Editable;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setErrorText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setErrorText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    const-string p1, "error_document_all"

    goto :goto_2

    :cond_3
    const-string p1, "error_all"

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->checkTopErrorCell(Z)V

    :cond_4
    return-void
.end method

.method private checkFieldsForError()Z
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string v3, "error_all"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string v3, "error_document_all"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    goto/16 :goto_f

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SecureDocument;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string v3, "files_all"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string v3, "translation_all"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v3, :cond_5

    goto/16 :goto_f

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "front"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-direct {p0, v3}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Landroid/view/View;

    goto/16 :goto_f

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-nez v3, :cond_7

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v3, :cond_8

    goto/16 :goto_f

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reverse"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-direct {p0, v3}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_b

    iget-wide v5, p0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v5, :cond_a

    goto/16 :goto_f

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selfie"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-direct {p0, v5}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_10

    iget-wide v5, p0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    goto/16 :goto_f

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_10

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SecureDocument;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "translation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PassportActivity;->getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    goto/16 :goto_f

    :cond_f
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    goto/16 :goto_f

    :cond_10
    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x2

    if-ge v0, v3, :cond_32

    const/4 v4, 0x0

    if-nez v0, :cond_11

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    goto :goto_8

    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    goto :goto_8

    :cond_12
    move-object v5, v4

    :goto_8
    if-nez v5, :cond_13

    goto/16 :goto_11

    :cond_13
    const/4 v6, 0x0

    :goto_9
    array-length v7, v5

    if-ge v6, v7, :cond_31

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hasErrorText()Z

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-nez v8, :cond_20

    iget-object v8, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v11, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v11, :cond_18

    if-nez v0, :cond_14

    packed-switch v6, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    const-string v8, "expiry_date"

    goto :goto_b

    :pswitch_1
    const-string v8, "document_no"

    goto :goto_b

    :pswitch_2
    const-string v8, "residence_country_code"

    goto :goto_b

    :pswitch_3
    const-string v8, "gender"

    goto :goto_b

    :pswitch_4
    const-string v8, "birth_date"

    goto :goto_b

    :pswitch_5
    const-string v8, "last_name"

    goto :goto_b

    :pswitch_6
    const-string v8, "middle_name"

    goto :goto_b

    :pswitch_7
    const-string v8, "first_name"

    goto :goto_b

    :cond_14
    if-eqz v6, :cond_17

    if-eq v6, v2, :cond_16

    if-eq v6, v3, :cond_15

    goto :goto_a

    :cond_15
    const-string v8, "last_name_native"

    goto :goto_b

    :cond_16
    const-string v8, "middle_name_native"

    goto :goto_b

    :cond_17
    const-string v8, "first_name_native"

    goto :goto_b

    :cond_18
    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v8, :cond_1f

    if-eqz v6, :cond_1e

    if-eq v6, v2, :cond_1d

    if-eq v6, v3, :cond_1c

    if-eq v6, v10, :cond_1b

    if-eq v6, v9, :cond_1a

    const/4 v8, 0x5

    if-eq v6, v8, :cond_19

    goto :goto_a

    :cond_19
    :pswitch_8
    const-string v8, "country_code"

    goto :goto_b

    :cond_1a
    const-string v8, "state"

    goto :goto_b

    :cond_1b
    const-string v8, "city"

    goto :goto_b

    :cond_1c
    const-string v8, "post_code"

    goto :goto_b

    :cond_1d
    const-string v8, "street_line2"

    goto :goto_b

    :cond_1e
    const-string v8, "street_line1"

    goto :goto_b

    :cond_1f
    :goto_a
    move-object v8, v4

    :goto_b
    if-eqz v8, :cond_20

    iget-object v11, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    aget-object v11, v5, v6

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v7, 0x1

    :cond_20
    iget-boolean v8, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    const/4 v11, 0x7

    if-eqz v8, :cond_21

    iget-object v8, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v8, :cond_21

    if-ge v6, v11, :cond_21

    goto/16 :goto_10

    :cond_21
    if-nez v7, :cond_2f

    aget-object v8, v5, v6

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    iget v12, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-ne v12, v2, :cond_2a

    const/16 v9, 0x8

    if-ne v6, v9, :cond_22

    goto/16 :goto_10

    :cond_22
    if-nez v0, :cond_23

    if-eqz v6, :cond_24

    if-eq v6, v3, :cond_24

    if-eq v6, v2, :cond_24

    :cond_23
    if-ne v0, v2, :cond_29

    if-eqz v6, :cond_24

    if-eq v6, v2, :cond_24

    if-ne v6, v3, :cond_29

    :cond_24
    const/16 v9, 0xff

    if-le v8, v9, :cond_25

    const/4 v7, 0x1

    :cond_25
    if-nez v0, :cond_26

    if-eq v6, v2, :cond_27

    :cond_26
    if-ne v0, v2, :cond_28

    if-ne v6, v2, :cond_28

    :cond_27
    const/4 v9, 0x1

    goto :goto_e

    :cond_28
    :goto_c
    const/4 v9, 0x0

    goto :goto_e

    :cond_29
    if-ne v6, v11, :cond_28

    const/16 v9, 0x18

    if-le v8, v9, :cond_28

    goto :goto_d

    :cond_2a
    if-ne v12, v3, :cond_28

    if-ne v6, v2, :cond_2b

    goto :goto_10

    :cond_2b
    if-ne v6, v10, :cond_2c

    if-ge v8, v3, :cond_28

    goto :goto_d

    :cond_2c
    if-ne v6, v9, :cond_2d

    iget-object v9, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    const-string v10, "US"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    if-ge v8, v3, :cond_28

    goto :goto_d

    :cond_2d
    if-ne v6, v3, :cond_28

    if-lt v8, v3, :cond_2e

    const/16 v9, 0xa

    if-le v8, v9, :cond_28

    :cond_2e
    :goto_d
    const/4 v7, 0x1

    goto :goto_c

    :goto_e
    if-nez v7, :cond_2f

    if-nez v9, :cond_2f

    if-nez v8, :cond_2f

    const/4 v7, 0x1

    :cond_2f
    if-eqz v7, :cond_30

    aget-object v0, v5, v6

    :goto_f
    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->onFieldError(Landroid/view/View;)V

    return v2

    :cond_30
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_31
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_32
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkNativeFields(Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getCountryLangs()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "EN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v7, v6

    if-ge v4, v7, :cond_2

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v4, v1

    goto :goto_0

    :cond_2
    aget-object v4, v6, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->nonLatinNames:[Z

    array-length v7, v6

    if-ge v4, v7, :cond_4

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v0

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v1

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v5

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    add-int/2addr v4, v1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v6, Lorg/telegram/messenger/R$string;->PassportNativeInfo:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v0

    const-string v8, "PassportNativeInfo"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PassportLanguage_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v3, :cond_7

    sget v6, Lorg/telegram/messenger/R$string;->PassportNativeHeaderLang:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v0

    const-string v8, "PassportNativeHeaderLang"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    sget v6, Lorg/telegram/messenger/R$string;->PassportNativeHeader:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :goto_5
    const/4 v4, 0x0

    :goto_6
    const/4 v6, 0x3

    if-ge v4, v6, :cond_e

    if-eqz v4, :cond_c

    if-eq v4, v1, :cond_a

    if-eq v4, v5, :cond_8

    goto :goto_9

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_9

    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportSurname:I

    :goto_7
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_9
    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportSurnameCountry:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v9, "PassportSurnameCountry"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_b

    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportMidname:I

    goto :goto_7

    :cond_b
    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportMidnameCountry:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v9, "PassportMidnameCountry"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v3, :cond_d

    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportName:I

    goto :goto_7

    :cond_d
    aget-object v6, v6, v4

    sget v7, Lorg/telegram/messenger/R$string;->PassportNameCountry:I

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v0

    const-string v9, "PassportNameCountry"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :goto_9
    add-int/2addr v4, v1

    goto :goto_6

    :cond_e
    if-eqz p1, :cond_15

    new-instance p1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda44;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_d

    :cond_f
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, p1

    if-ge v0, v3, :cond_10

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v0, v1

    goto :goto_b

    :cond_10
    iget-wide v0, p0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez p1, :cond_12

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz p1, :cond_13

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz p1, :cond_14

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_c
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_c

    :cond_15
    :goto_d
    return-void
.end method

.method public static checkSecret([BLjava/lang/Long;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit16 v2, v2, 0xff

    const/16 v1, 0xef

    if-eq v2, v1, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v3, v1, p0

    if-eqz v3, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private checkTopErrorCell(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "error_all"

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    const-string v0, "error_document_all"

    if-nez p1, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    if-nez v3, :cond_5

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_7

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private createAddressInterface(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    const/4 v5, 0x2

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "countries.txt"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    aget-object v8, v6, v4

    aget-object v6, v6, v5

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v3, v6, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v1, v4}, Lorg/telegram/ui/PassportActivity;->checkTopErrorCell(Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v6, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ActionBotDocumentRentalAgreement:I

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_1
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v6, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ActionBotDocumentBankStatement:I

    goto :goto_3

    :cond_2
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v6, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ActionBotDocumentUtilityBill:I

    goto :goto_3

    :cond_3
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v6, :cond_4

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ActionBotDocumentPassportRegistration:I

    goto :goto_3

    :cond_4
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ActionBotDocumentTemporaryRegistration:I

    goto :goto_3

    :cond_5
    :goto_4
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v6, Lorg/telegram/messenger/R$string;->PassportDocuments:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v12, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda26;

    invoke-direct {v12, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v12, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-wide v13, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-string v0, ""

    cmp-long v15, v13, v10

    if-eqz v15, :cond_6

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddAddressUploadInfo:I

    :goto_5
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_6
    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v14, :cond_7

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddAgreementInfo:I

    goto :goto_5

    :cond_7
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v14, :cond_8

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddBillInfo:I

    goto :goto_5

    :cond_8
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v14, :cond_9

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddPassportRegistrationInfo:I

    goto :goto_5

    :cond_9
    instance-of v14, v13, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v14, :cond_a

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddTemporaryRegistrationInfo:I

    goto :goto_5

    :cond_a
    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v13, :cond_b

    sget v13, Lorg/telegram/messenger/R$string;->PassportAddBankInfo:I

    goto :goto_5

    :cond_b
    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    :goto_6
    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    iget-object v14, v1, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    const/16 v15, 0x21

    const-string v5, "\n\n"

    if-eqz v14, :cond_c

    const-string v10, "files_all"

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_c

    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v14, v1, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-direct {v14, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v13, v14, v3, v4, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    if-eqz v4, :cond_15

    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v10, Lorg/telegram/messenger/R$string;->PassportTranslation:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v6, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda27;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v2, v12, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-wide v6, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_d

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationUploadInfo:I

    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_d
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v6, :cond_e

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationAgreementInfo:I

    goto :goto_7

    :cond_e
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v6, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationBillInfo:I

    goto :goto_7

    :cond_f
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v6, :cond_10

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationPassportRegistrationInfo:I

    goto :goto_7

    :cond_10
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v6, :cond_11

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationTemporaryRegistrationInfo:I

    goto :goto_7

    :cond_11
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v4, :cond_12

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTranslationBankInfo:I

    goto :goto_7

    :cond_12
    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    :goto_8
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz v6, :cond_13

    const-string v7, "translation_all"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_13

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-direct {v5, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddress:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_9
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddressHeader:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x6

    new-array v4, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v4, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x4

    const/16 v6, 0x8

    if-ge v4, v0, :cond_21

    new-instance v7, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aput-object v7, v10, v4

    new-instance v10, Lorg/telegram/ui/PassportActivity$11;

    invoke-direct {v10, v1, v2, v7}, Lorg/telegram/ui/PassportActivity$11;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v12, 0x5

    if-ne v4, v12, :cond_16

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    invoke-static {v8, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    iget-boolean v11, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v11, :cond_17

    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v11, :cond_17

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    if-eqz v11, :cond_17

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v6, v11, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v11, v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-ne v4, v12, :cond_18

    aget-object v6, v6, v4

    new-instance v11, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda28;

    invoke-direct {v11, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_b

    :cond_18
    aget-object v6, v6, v4

    const/16 v11, 0x4001

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v4

    const v11, 0x10000005

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    :goto_b
    const/4 v6, 0x3

    if-eqz v4, :cond_1e

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1d

    const/4 v11, 0x2

    if-eq v4, v11, :cond_1c

    if-eq v4, v6, :cond_1b

    if-eq v4, v5, :cond_1a

    if-eq v4, v12, :cond_19

    const/4 v5, 0x1

    const/4 v11, 0x2

    goto/16 :goto_f

    :cond_19
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportCountry:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "country_code"

    goto :goto_c

    :cond_1a
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportState:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "state"

    goto :goto_c

    :cond_1b
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportCity:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "city"

    goto :goto_c

    :cond_1c
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportPostcode:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "post_code"

    goto :goto_c

    :cond_1d
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportStreet2:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "street_line2"

    goto :goto_c

    :cond_1e
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget v11, Lorg/telegram/messenger/R$string;->PassportStreet1:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    const-string v5, "street_line1"

    :goto_c
    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v13, v4

    invoke-direct {v1, v11, v13, v5}, Lorg/telegram/ui/PassportActivity;->setFieldValues(Ljava/util/HashMap;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    const/4 v11, 0x2

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-ne v4, v11, :cond_1f

    aget-object v13, v13, v4

    new-instance v14, Lorg/telegram/ui/PassportActivity$12;

    invoke-direct {v14, v1, v7, v5}, Lorg/telegram/ui/PassportActivity$12;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xa

    invoke-direct {v5, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x1

    new-array v13, v7, [Landroid/text/InputFilter;

    aput-object v5, v13, v3

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_d

    :cond_1f
    aget-object v13, v13, v4

    new-instance v14, Lorg/telegram/ui/PassportActivity$13;

    invoke-direct {v14, v1, v7, v5}, Lorg/telegram/ui/PassportActivity$13;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_d
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_20

    goto :goto_e

    :cond_20
    const/4 v12, 0x3

    :goto_e
    or-int/lit8 v6, v12, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    const/high16 v22, 0x41a80000    # 21.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, 0x42800000    # 64.0f

    const/16 v19, 0x33

    const/high16 v20, 0x41a80000    # 21.0f

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    new-instance v6, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda29;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v5, 0x1

    :goto_f
    add-int/2addr v4, v5

    goto/16 :goto_a

    :cond_21
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-wide v6, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_23

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v0, :cond_24

    :cond_23
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_24

    iget-boolean v0, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v0, :cond_25

    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_28

    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PassportActivity;->addDocumentViews(Ljava/util/ArrayList;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PassportActivity;->addTranslationDocumentViews(Ljava/util/ArrayList;)V

    :cond_26
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v4, :cond_27

    sget v4, Lorg/telegram/messenger/R$string;->PassportDeleteInfo:I

    :goto_10
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_11

    :cond_27
    sget v4, Lorg/telegram/messenger/R$string;->PassportDeleteDocument:I

    goto :goto_10

    :goto_11
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda30;

    invoke-direct {v4, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_28
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v0, :cond_29

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v0, :cond_29

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    :goto_12
    invoke-direct {v1, v3}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    invoke-direct {v1, v5}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    return-void
.end method

.method private createChatAttachView()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/PassportActivity$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$24;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    :cond_1
    return-void
.end method

.method private createDocumentDeleteAlert()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda49;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/PassportActivity;[Z)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v4, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-boolean v4, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v5, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->PassportDeleteAddressAlert:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/messenger/R$string;->PassportDeletePersonalAlert:I

    goto :goto_0

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->PassportDeleteDocumentAlert:I

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v4, :cond_6

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    const-string v8, ""

    if-eqz v7, :cond_2

    sget v6, Lorg/telegram/messenger/R$string;->PassportDeleteDocumentAddress:I

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    goto :goto_3

    :cond_2
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v6, :cond_3

    sget v6, Lorg/telegram/messenger/R$string;->PassportDeleteDocumentPersonal:I

    goto :goto_2

    :cond_3
    :goto_3
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41800000    # 16.0f

    if-eqz v0, :cond_4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_4

    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_4
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_5

    :cond_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_5
    invoke-virtual {v5, v0, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x30

    const/16 v2, 0x33

    const/4 v6, -0x1

    invoke-static {v6, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda50;

    invoke-direct {v0, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda50;-><init>([Z)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_6
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private createEmailInterface(Landroid/content/Context;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PassportEmail:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v5, Lorg/telegram/messenger/R$string;->PassportPhoneUseSame:I

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "PassportPhoneUseSame"

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$string;->PassportPhoneUseSameEmailInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-array v0, v2, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v6, 0x32

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v2, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/16 v5, 0x21

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const v5, 0x10000006

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    sget v5, Lorg/telegram/messenger/R$string;->PaymentShippingEmailPlaceholder:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    if-eqz v5, :cond_1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->email:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->email:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v4

    const/high16 v10, 0x41a80000    # 21.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x33

    const/high16 v8, 0x41a80000    # 21.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v0, Lorg/telegram/messenger/R$string;->PassportEmailUploadInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createEmailVerificationInterface(Landroid/content/Context;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PassportEmail:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x32

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const v6, 0x10000006

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    sget v6, Lorg/telegram/messenger/R$string;->PassportEmailCode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v5, v5, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v5

    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v12, 0x40c00000    # 6.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x33

    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v5

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v5

    new-instance v2, Lorg/telegram/ui/PassportActivity$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$6;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->PassportEmailVerifyInfo:I

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v2, "PassportEmailVerifyInfo"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x2

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createIdentityInterface(Landroid/content/Context;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "countries.txt"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    aget-object v7, v5, v4

    aget-object v5, v5, v3

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->topErrorCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v1, v4}, Lorg/telegram/ui/PassportActivity;->checkTopErrorCell(Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v5, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/messenger/R$string;->PassportDocuments:I

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_1
    sget v5, Lorg/telegram/messenger/R$string;->PassportRequiredDocuments:I

    goto :goto_3

    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v12, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda13;

    invoke-direct {v12, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    new-instance v12, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v12, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    sget v13, Lorg/telegram/messenger/R$string;->PassportReverseSide:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$string;->PassportReverseSideInfo:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v12, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda15;

    invoke-direct {v12, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    sget v12, Lorg/telegram/messenger/R$string;->PassportSelfie:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PassportSelfieInfo:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    invoke-virtual {v0, v12, v13, v14}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-instance v12, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda16;

    invoke-direct {v12, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v12, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v12, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v13, Lorg/telegram/messenger/R$string;->PassportPersonalUploadInfo:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v13, Lorg/telegram/messenger/R$string;->PassportTranslation:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v2, v12, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-wide v5, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-string v0, ""

    cmp-long v12, v5, v10

    if-eqz v12, :cond_3

    sget v5, Lorg/telegram/messenger/R$string;->PassportAddTranslationUploadInfo:I

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_3
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v6, :cond_4

    sget v5, Lorg/telegram/messenger/R$string;->PassportAddPassportInfo:I

    goto :goto_5

    :cond_4
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v6, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->PassportAddInternalPassportInfo:I

    goto :goto_5

    :cond_5
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v6, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->PassportAddIdentityCardInfo:I

    goto :goto_5

    :cond_6
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v5, :cond_7

    sget v5, Lorg/telegram/messenger/R$string;->PassportAddDriverLicenceInfo:I

    goto :goto_5

    :cond_7
    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    :goto_6
    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz v6, :cond_8

    const-string v12, "translation_all"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v13, "\n\n"

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v14, 0x21

    invoke-virtual {v5, v13, v7, v6, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    :goto_7
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_9
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v5, Lorg/telegram/messenger/R$string;->PassportScanPassport:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$string;->PassportScanPassportInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    goto :goto_7

    :cond_a
    :goto_8
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v5, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v5, :cond_b

    sget v5, Lorg/telegram/messenger/R$string;->PassportDocument:I

    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_b
    sget v5, Lorg/telegram/messenger/R$string;->PassportPersonal:I

    goto :goto_9

    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    const/4 v5, 0x7

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    goto :goto_b

    :cond_c
    const/4 v0, 0x7

    :goto_b
    new-array v6, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x0

    :goto_c
    const/high16 v15, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    const/high16 v11, 0x41800000    # 16.0f

    const/16 v9, 0x40

    const/4 v12, 0x6

    if-ge v6, v0, :cond_1a

    new-instance v13, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v13, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aput-object v13, v3, v6

    new-instance v3, Lorg/telegram/ui/PassportActivity$15;

    invoke-direct {v3, v1, v2, v13}, Lorg/telegram/ui/PassportActivity$15;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v9, v0, -0x1

    if-ne v6, v9, :cond_d

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    invoke-static {v8, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-boolean v7, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    const/16 v9, 0x8

    if-eqz v7, :cond_e

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v7, :cond_e

    if-ge v6, v5, :cond_e

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v7, v10, v11, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v7, 0x5

    if-eq v6, v7, :cond_f

    if-ne v6, v12, :cond_10

    :cond_f
    const/4 v10, 0x0

    goto :goto_f

    :cond_10
    const/4 v10, 0x3

    if-eq v6, v10, :cond_13

    if-ne v6, v9, :cond_11

    goto :goto_e

    :cond_11
    const/4 v9, 0x4

    if-ne v6, v9, :cond_12

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda19;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    :goto_d
    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_10

    :cond_12
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    const/16 v10, 0x4001

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    const v10, 0x10000005

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_10

    :cond_13
    :goto_e
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;

    invoke-direct {v10, v1, v2}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    goto :goto_d

    :goto_f
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    new-instance v11, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda21;

    invoke-direct {v11, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setInputType(I)V

    :goto_10
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportExpired:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    const-string v10, "expiry_date"

    goto/16 :goto_17

    :pswitch_1
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportDocumentNumber:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    const-string v10, "document_no"

    goto/16 :goto_17

    :pswitch_2
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportResidence:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "residence_country_code"

    goto/16 :goto_17

    :pswitch_3
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportCitizenship:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "country_code"

    goto/16 :goto_17

    :pswitch_4
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportGender:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "gender"

    goto/16 :goto_17

    :pswitch_5
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportBirthdate:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "birth_date"

    goto :goto_17

    :pswitch_6
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    if-eqz v9, :cond_14

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportSurnameLatin:I

    :goto_11
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_14
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportSurname:I

    goto :goto_11

    :goto_12
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "last_name"

    goto :goto_17

    :pswitch_7
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    if-eqz v9, :cond_15

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportMidnameLatin:I

    :goto_13
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_15
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportMidname:I

    goto :goto_13

    :goto_14
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "middle_name"

    goto :goto_17

    :pswitch_8
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    if-eqz v9, :cond_16

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportNameLatin:I

    :goto_15
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_16
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget v10, Lorg/telegram/messenger/R$string;->PassportName:I

    goto :goto_15

    :goto_16
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v10, "first_name"

    :goto_17
    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v6

    invoke-direct {v1, v9, v11, v10}, Lorg/telegram/ui/PassportActivity;->setFieldValues(Ljava/util/HashMap;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    if-eqz v6, :cond_18

    const/4 v11, 0x2

    if-eq v6, v11, :cond_18

    if-ne v6, v4, :cond_17

    goto :goto_18

    :cond_17
    iget-object v11, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v6

    new-instance v12, Lorg/telegram/ui/PassportActivity$17;

    invoke-direct {v12, v1, v13, v10, v9}, Lorg/telegram/ui/PassportActivity$17;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_19

    :cond_18
    :goto_18
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    new-instance v11, Lorg/telegram/ui/PassportActivity$16;

    invoke-direct {v11, v1, v13, v10}, Lorg/telegram/ui/PassportActivity$16;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_19
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v6

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_19

    const/16 v16, 0x5

    goto :goto_1a

    :cond_19
    const/16 v16, 0x3

    :goto_1a
    or-int/lit8 v7, v16, 0x10

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v6

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x33

    const/high16 v12, 0x41a80000    # 21.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v6

    new-instance v7, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda22;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v9, -0x2

    const-wide/16 v10, 0x0

    goto/16 :goto_c

    :cond_1a
    const/4 v7, 0x5

    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x3

    new-array v3, v0, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v3, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_22

    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aput-object v0, v5, v3

    new-instance v5, Lorg/telegram/ui/PassportActivity$18;

    invoke-direct {v5, v1, v2, v0}, Lorg/telegram/ui/PassportActivity$18;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v13, 0x2

    if-ne v3, v13, :cond_1b

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    invoke-static {v8, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSupportRtlHint(Z)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v14, v7, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    const/16 v7, 0x4001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    const v9, 0x10000005

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    if-eqz v3, :cond_1e

    if-eq v3, v4, :cond_1d

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1c

    goto :goto_1f

    :cond_1c
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v14, "last_name_native"

    goto :goto_1d

    :cond_1d
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v14, "middle_name_native"

    goto :goto_1d

    :cond_1e
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v14, "first_name_native"

    :goto_1d
    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v3

    invoke-direct {v1, v6, v7, v14}, Lorg/telegram/ui/PassportActivity;->setFieldValues(Ljava/util/HashMap;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    if-eqz v3, :cond_1f

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1f

    if-ne v3, v4, :cond_20

    :cond_1f
    iget-object v6, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v3

    new-instance v7, Lorg/telegram/ui/PassportActivity$19;

    invoke-direct {v7, v1, v0, v14}, Lorg/telegram/ui/PassportActivity$19;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_20
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_21

    const/4 v6, 0x5

    goto :goto_1e

    :cond_21
    const/4 v6, 0x3

    :goto_1e
    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    const/high16 v23, 0x41a80000    # 21.0f

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x33

    const/high16 v21, 0x41a80000    # 21.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda23;

    invoke-direct {v5, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x3

    const/4 v7, 0x5

    const/16 v9, 0x40

    goto/16 :goto_1c

    :cond_22
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x2

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-wide v5, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-nez v0, :cond_23

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v0, :cond_24

    :cond_23
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_24

    iget-boolean v0, v1, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-eqz v0, :cond_25

    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_2b

    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PassportActivity;->addDocumentViews(Ljava/util/ArrayList;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v3, :cond_26

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/PassportActivity;->addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V

    :cond_26
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v3, :cond_27

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/PassportActivity;->addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V

    :cond_27
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v3, :cond_28

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/PassportActivity;->addDocumentViewInternal(Lorg/telegram/tgnet/TLRPC$TL_secureFile;I)V

    :cond_28
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsTypeValue:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/PassportActivity;->addTranslationDocumentViews(Ljava/util/ArrayList;)V

    :cond_29
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v3, :cond_2a

    sget v3, Lorg/telegram/messenger/R$string;->PassportDeleteInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_21

    :cond_2a
    const/4 v4, 0x0

    sget v3, Lorg/telegram/messenger/R$string;->PassportDeleteDocument:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :goto_21
    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v3, -0x2

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_2b
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->nativeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_22
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity;->updateInterfaceStringsForDocumentType()V

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/telegram/ui/PassportActivity;->checkNativeFields(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createManageInterface(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPassport:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_info:I

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v1, Lorg/telegram/messenger/R$string;->PassportProvidedInformation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/messenger/R$string;->PassportNoDocumentsAdd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v6, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v5, Lorg/telegram/messenger/R$string;->TelegramPassportDelete:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v6, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->addDocumentSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v7, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v6, Lorg/telegram/ui/PassportActivity;->addDocumentSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x44040000    # 528.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-direct {v5, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-direct {v5, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->no_passport:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sessions_devicesImage:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/PassportActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->PassportNoDocuments:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    iget-object v4, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PassportNoDocumentsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    iget-object v2, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    const/16 v15, 0xe

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v0, v5, v12, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v4, 0x20

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/4 v10, -0x2

    const/16 v11, 0x1e

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;-><init>()V

    :goto_3
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    goto :goto_4

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;-><init>()V

    goto :goto_3

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    const/4 v0, 0x0

    move-object v3, v0

    move-object v2, v1

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v0, v10, -0x1

    if-ne v11, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity;->addField(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity;->updateManageVisibility()V

    return-void
.end method

.method private createPasswordInterface(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v9, v0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move-object v6, v5

    goto :goto_1

    :cond_2
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/messenger/R$string;->TelegramPassport:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, -0x1

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordAvatarContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v8, 0x64

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->passwordAvatarContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x40

    const/high16 v11, 0x42800000    # 64.0f

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-wide v7, v0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    const-wide/16 v10, 0x0

    cmp-long v3, v7, v10

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v6, Lorg/telegram/messenger/R$string;->PassportSelfRequest:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v7, Lorg/telegram/messenger/R$string;->PassportRequest:I

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v4

    const-string v6, "PassportRequest"

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    const/4 v10, 0x5

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    :goto_4
    or-int/lit8 v13, v7, 0x30

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->no_password:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x31

    const/4 v14, 0x0

    const/16 v15, 0xd

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v13, 0x41880000    # 17.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v3, v11, v12, v7, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->TelegramPassportCreatePasswordInfo:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x5

    goto :goto_5

    :cond_5
    const/4 v11, 0x3

    :goto_5
    or-int/lit8 v14, v11, 0x30

    const/high16 v17, 0x41a80000    # 21.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, 0x41a80000    # 21.0f

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText5:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v3, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->TelegramPassportCreatePassword:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_6

    const/4 v12, 0x5

    goto :goto_6

    :cond_6
    const/4 v12, 0x3

    :goto_6
    or-int/lit8 v15, v12, 0x30

    const/high16 v18, 0x41a80000    # 21.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v16, 0x41a80000    # 21.0f

    const/high16 v17, 0x41100000    # 9.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda32;

    invoke-direct {v11, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v3, v2, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-array v3, v2, [Landroid/view/ViewGroup;

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v11, v3, v4

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v11, v11, v4

    const/16 v12, 0x32

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v3, v3, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v11, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v11, v3, v4

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    const/16 v5, 0x81

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    const v5, 0x10000006

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x5

    goto :goto_7

    :cond_7
    const/4 v5, 0x3

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v3, v3, v4

    iget-object v5, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    const/high16 v16, 0x41a80000    # 21.0f

    const/high16 v17, 0x40c00000    # 6.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x33

    const/high16 v14, 0x41a80000    # 21.0f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda33;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    new-instance v5, Lorg/telegram/ui/PassportActivity$7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PassportActivity$7;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v5, Lorg/telegram/messenger/R$string;->PassportRequestPasswordInfo:I

    new-array v7, v4, [Ljava/lang/Object;

    const-string v11, "PassportRequestPasswordInfo"

    invoke-static {v11, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v7, -0x2

    invoke-static {v9, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ForgotPassword:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_8

    const/4 v8, 0x5

    :cond_8
    or-int/lit8 v11, v8, 0x30

    const/16 v14, 0x15

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/16 v10, 0x1e

    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity;->updatePasswordInterface()V

    return-void
.end method

.method private createPhoneInterface(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->PassportPhone:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    const/4 v5, 0x3

    const/4 v6, 0x2

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "countries.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    aget-object v9, v7, v6

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v8, v1, Lorg/telegram/ui/PassportActivity;->countriesMap:Ljava/util/HashMap;

    aget-object v9, v7, v6

    aget-object v10, v7, v3

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lorg/telegram/ui/PassportActivity;->codesMap:Ljava/util/HashMap;

    aget-object v9, v7, v3

    aget-object v10, v7, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v8, v7

    if-le v8, v5, :cond_0

    iget-object v8, v1, Lorg/telegram/ui/PassportActivity;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v9, v7, v3

    aget-object v10, v7, v5

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v8, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    aget-object v9, v7, v4

    aget-object v7, v7, v6

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;

    invoke-direct {v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    new-instance v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v8, Lorg/telegram/messenger/R$string;->PassportPhoneUseSame:I

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    const-string v0, "PassportPhoneUseSame"

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v7, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v7, Lorg/telegram/messenger/R$string;->PassportPhoneUseSameInfo:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v7, Lorg/telegram/messenger/R$string;->PassportPhoneUseOther:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v5, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x0

    if-ge v0, v5, :cond_c

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-ne v0, v6, :cond_2

    new-instance v12, Lorg/telegram/ui/Components/HintEditText;

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v0

    goto :goto_5

    :cond_2
    new-instance v12, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v0

    :goto_5
    const/16 v10, 0x32

    if-ne v0, v4, :cond_3

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_6
    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v13, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    :cond_3
    if-ne v0, v6, :cond_4

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/view/ViewGroup;

    goto :goto_7

    :cond_4
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_6

    :goto_7
    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v10, v4, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_5

    aget-object v10, v10, v0

    new-instance v15, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda9;

    invoke-direct {v15, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v10, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    sget v15, Lorg/telegram/messenger/R$string;->ChooseCountry:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_9

    :cond_5
    aget-object v10, v10, v0

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-ne v0, v6, :cond_6

    aget-object v10, v10, v0

    const v15, 0x10000006

    :goto_8
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_9

    :cond_6
    aget-object v10, v10, v0

    const v15, 0x10000005

    goto :goto_8

    :goto_9
    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v15

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/16 v10, 0x13

    const/4 v15, 0x5

    if-ne v0, v4, :cond_7

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/PassportActivity;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->plusTextView:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->plusTextView:Landroid/widget/TextView;

    const/16 v20, 0x0

    const/high16 v21, 0x40c00000    # 6.0f

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/high16 v18, 0x41a80000    # 21.0f

    const/high16 v19, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v7, v13, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v13, v4, [Landroid/text/InputFilter;

    aput-object v7, v13, v3

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    const/high16 v17, 0x41800000    # 16.0f

    const/high16 v18, 0x40c00000    # 6.0f

    const/16 v13, 0x37

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    new-instance v10, Lorg/telegram/ui/PassportActivity$9;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PassportActivity$9;-><init>(Lorg/telegram/ui/PassportActivity;)V

    :goto_a
    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_c

    :cond_7
    if-ne v0, v6, :cond_8

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v13, v0

    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v13, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v13, v0

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v0

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    sget v10, Lorg/telegram/messenger/R$string;->PaymentShippingPhoneNumber:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    const/high16 v17, 0x41a80000    # 21.0f

    const/high16 v18, 0x40c00000    # 6.0f

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    new-instance v10, Lorg/telegram/ui/PassportActivity$10;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PassportActivity$10;-><init>(Lorg/telegram/ui/PassportActivity;)V

    goto :goto_a

    :cond_8
    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v7, v3, v3, v3, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_9

    goto :goto_b

    :cond_9
    const/4 v15, 0x3

    :goto_b
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    const/high16 v18, 0x41a80000    # 21.0f

    const/high16 v19, 0x40c00000    # 6.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v15, 0x33

    const/high16 v16, 0x41a80000    # 21.0f

    const/high16 v17, 0x41400000    # 12.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda10;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-ne v0, v6, :cond_a

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v7, v7, v0

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda11;

    invoke-direct {v10, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_a
    if-nez v0, :cond_b

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v10, v1, Lorg/telegram/ui/PassportActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x53

    invoke-direct {v10, v8, v4, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    add-int/2addr v0, v4

    goto/16 :goto_4

    :cond_c
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_d
    if-eqz v7, :cond_e

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v8, :cond_e

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v4

    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->PassportPhoneUploadInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPhoneVerificationInterface(Landroid/content/Context;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PassportPhone:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    new-instance v4, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    add-int/lit8 v5, v2, 0x2

    invoke-direct {v4, p0, p1, v5}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;I)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v3, v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v3, v3, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x41d00000    # 26.0f

    if-eqz v4, :cond_0

    const/high16 v10, 0x41d00000    # 26.0f

    goto :goto_1

    :cond_0
    const/high16 v10, 0x41900000    # 18.0f

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v12, 0x41d00000    # 26.0f

    goto :goto_2

    :cond_1
    const/high16 v12, 0x41900000    # 18.0f

    :goto_2
    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v9, 0x33

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentPhoneVerification:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/PassportActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;Z)V

    return-void
.end method

.method private createRequestInterface(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v9, 0x1

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, v6, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    cmp-long v12, v2, v4

    if-nez v12, :cond_0

    move-object v12, v1

    goto :goto_1

    :cond_0
    add-int/2addr v0, v9

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    move-object v13, v0

    check-cast v13, Landroid/widget/FrameLayout;

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->TelegramPassport:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-eqz v12, :cond_2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/16 v2, 0x64

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x40

    const/high16 v17, 0x42800000    # 64.0f

    const/16 v18, 0x11

    const/16 v19, 0x0

    const/high16 v20, 0x41000000    # 8.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v12, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->PassportRequest:I

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v10

    const-string v2, "PassportRequest"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v1, Lorg/telegram/messenger/R$string;->PassportRequestedInformation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    if-eqz v0, :cond_25

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->required_types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v0, v5, :cond_f

    iget-object v14, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v14, v14, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->required_types:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v15, :cond_8

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v15}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v2, v9

    :cond_4
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_a

    :cond_5
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v15}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v9

    goto :goto_3

    :cond_6
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v15, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v14, :cond_4

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_8
    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    if-eqz v15, :cond_4

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_3

    :cond_9
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v8, v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v8, :cond_a

    goto :goto_3

    :cond_a
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v8}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v8, :cond_3

    iget-object v10, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v9, v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v9, :cond_b

    :goto_5
    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :goto_6
    add-int/2addr v15, v9

    const/4 v10, 0x0

    goto :goto_4

    :cond_c
    iget-object v8, v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v8}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_e

    iget-object v10, v14, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v15, v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v15, :cond_d

    :goto_8
    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_9
    add-int/2addr v9, v10

    goto :goto_7

    :cond_e
    const/4 v10, 0x1

    add-int/2addr v11, v10

    :goto_a
    add-int/2addr v0, v10

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x1

    goto/16 :goto_2

    :cond_f
    const/4 v10, 0x1

    if-eqz v1, :cond_11

    if-le v2, v10, :cond_10

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v8, 0x1

    :goto_c
    if-eqz v16, :cond_13

    if-le v11, v10, :cond_12

    goto :goto_d

    :cond_12
    const/4 v9, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/4 v9, 0x1

    :goto_e
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v5, :cond_25

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->required_types:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v1, :cond_1c

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-nez v2, :cond_1b

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v2, :cond_14

    goto/16 :goto_16

    :cond_14
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v2, :cond_16

    if-eqz v8, :cond_15

    goto :goto_10

    :cond_15
    move-object v1, v4

    goto :goto_11

    :cond_16
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v2, :cond_18

    if-eqz v9, :cond_17

    :goto_10
    const/4 v1, 0x0

    goto :goto_11

    :cond_17
    move-object v1, v3

    :goto_11
    move-object v2, v0

    move-object v11, v1

    const/4 v0, 0x1

    :goto_12
    const/4 v14, 0x0

    goto/16 :goto_1c

    :cond_18
    if-eqz v8, :cond_19

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;-><init>()V

    :goto_13
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-object v2, v0

    move-object v11, v1

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto/16 :goto_1c

    :cond_19
    if-eqz v9, :cond_1a

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v1}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;-><init>()V

    goto :goto_13

    :cond_1a
    :goto_14
    move-object/from16 v16, v3

    move-object v11, v4

    move v14, v5

    :goto_15
    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_1b
    :goto_16
    move-object v2, v0

    const/4 v0, 0x1

    const/4 v11, 0x0

    goto :goto_12

    :cond_1c
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    if-eqz v1, :cond_1a

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_14

    :cond_1d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v2, :cond_1e

    goto :goto_14

    :cond_1e
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v8, :cond_1f

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v2}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    if-eqz v9, :cond_1a

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v2}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v11, :cond_22

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    move-object/from16 v16, v0

    instance-of v0, v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v0, :cond_21

    :goto_18
    const/4 v0, 0x1

    goto :goto_19

    :cond_21
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :goto_19
    add-int/2addr v14, v0

    move-object/from16 v0, v16

    goto :goto_17

    :cond_22
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;-><init>()V

    :goto_1a
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    goto :goto_1b

    :cond_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;-><init>()V

    goto :goto_1a

    :goto_1b
    move-object v11, v2

    const/4 v14, 0x1

    move-object v2, v0

    const/4 v0, 0x1

    :goto_1c
    add-int/lit8 v1, v5, -0x1

    if-ne v10, v1, :cond_24

    const/4 v15, 0x1

    goto :goto_1d

    :cond_24
    const/4 v15, 0x0

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move-object v3, v11

    move-object v11, v4

    move v4, v14

    move v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity;->addField(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    goto/16 :goto_15

    :goto_1e
    add-int/2addr v10, v0

    move-object v4, v11

    move v5, v14

    move-object/from16 v3, v16

    goto/16 :goto_f

    :cond_25
    if-eqz v12, :cond_28

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v7, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setLinkTextColorKey(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->privacy_policy_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    sget v0, Lorg/telegram/messenger/R$string;->PassportPolicy:I

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "PassportPolicy"

    invoke-static {v2, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v4, v3, :cond_26

    if-eq v0, v3, :cond_26

    iget-object v3, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v5}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v3, 0x1

    add-int/lit8 v9, v0, 0x1

    const-string v5, ""

    invoke-virtual {v2, v0, v9, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v4, v9, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Lorg/telegram/ui/PassportActivity$LinkSpan;

    invoke-direct {v5, v6}, Lorg/telegram/ui/PassportActivity$LinkSpan;-><init>(Lorg/telegram/ui/PassportActivity;)V

    sub-int/2addr v0, v3

    const/16 v3, 0x21

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_26
    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    :goto_1f
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_27
    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->PassportNoPolicy:I

    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v5, v8

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "PassportNoPolicy"

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    goto :goto_1f

    :goto_20
    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackgroundSelected:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x30

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$drawable;->authorize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PassportAuthorize:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v6, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v0, v6, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v19, 0x0

    const/high16 v20, 0x42400000    # 48.0f

    const/4 v14, -0x1

    const/high16 v15, 0x40400000    # 3.0f

    const/16 v16, 0x53

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSecureDocument(Ljava/lang/String;)Lorg/telegram/ui/PassportActivity$EncryptionResult;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :catch_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->encryptData([B)Lorg/telegram/ui/PassportActivity$EncryptionResult;

    move-result-object p1

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p1, Lorg/telegram/ui/PassportActivity$EncryptionResult;->encryptedData:[B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-object p1
.end method

.method private decryptData([B[B[B)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    if-eqz p3, :cond_2

    array-length v1, p3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B)[B

    move-result-object p2

    new-array v4, v2, [B

    const/4 v1, 0x0

    invoke-static {p2, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x10

    new-array v5, v3, [B

    invoke-static {p2, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p1

    new-array v2, p2, [B

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    move v7, p2

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    aget-byte p1, v2, v1

    and-int/lit16 p1, p1, 0xff

    new-instance p3, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {p3, v2, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p3

    :cond_2
    :goto_0
    return-object v0
.end method

.method private decryptSecret([B[B)[B
    .locals 9

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v3, v1, [B

    const/4 v0, 0x0

    invoke-static {p2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x10

    new-array v4, v2, [B

    invoke-static {p2, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p2, v1, [B

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v2, p2

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private decryptValueSecret([B[B)[B
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v4, v2, [B

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    const/4 v10, 0x0

    invoke-static {v1, v10, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x10

    new-array v5, v1, [B

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    invoke-static {v3, v2, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v11, v2, [B

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    invoke-static {v3, v10, v11, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v3, v11

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    invoke-static {v11, v0}, Lorg/telegram/ui/PassportActivity;->checkSecret([BLjava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    invoke-static {v11, p2}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B)[B

    move-result-object p2

    new-array v4, v2, [B

    invoke-static {p2, v10, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v5, v1, [B

    invoke-static {p2, v2, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p2, v2, [B

    invoke-static {p1, v10, p2, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v3, p2

    invoke-static/range {v3 .. v9}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    return-object p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method private deleteValueInternal(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Z)V
    .locals 13

    move-object v5, p1

    move-object v4, p2

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v9, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;-><init>()V

    if-eqz p7, :cond_1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;->types:Ljava/util/ArrayList;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v4, :cond_3

    :goto_0
    iget-object v0, v9, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;->types:Ljava/util/ArrayList;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v10, p0

    iget v0, v10, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object v4, p2

    move-object v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v9, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private encryptData([B)Lorg/telegram/ui/PassportActivity$EncryptionResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity;->getRandomSecret()[B

    move-result-object v4

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v3, 0xd0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0x20

    add-int/2addr v2, v3

    :goto_0
    array-length v5, v1

    add-int/2addr v5, v2

    const/16 v6, 0x10

    rem-int/2addr v5, v6

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v2, [B

    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    int-to-byte v7, v2

    const/4 v8, 0x0

    aput-byte v7, v5, v8

    array-length v7, v1

    add-int v13, v2, v7

    new-array v7, v13, [B

    invoke-static {v5, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    invoke-static {v1, v8, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B)[B

    move-result-object v1

    new-array v2, v3, [B

    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v15, v6, [B

    invoke-static {v1, v3, v15, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v14, 0x0

    const/4 v1, 0x1

    const/4 v12, 0x0

    move-object v9, v7

    move-object v10, v2

    move-object v11, v15

    move-object/from16 v16, v15

    move v15, v1

    invoke-static/range {v9 .. v15}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    new-array v1, v3, [B

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    invoke-static {v9, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v9, v6, [B

    iget-object v10, v0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    invoke-static {v10, v3, v9, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v10, v3, [B

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    invoke-static {v11, v8, v10, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x20

    move-object/from16 v17, v10

    move-object/from16 v18, v1

    move-object/from16 v19, v9

    invoke-static/range {v17 .. v23}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    invoke-static {v10, v5}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B)[B

    move-result-object v1

    new-array v10, v3, [B

    invoke-static {v1, v8, v10, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v11, v6, [B

    invoke-static {v1, v3, v11, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v3, [B

    invoke-static {v4, v8, v6, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v15, 0x1

    const/16 v13, 0x20

    move-object v9, v6

    invoke-static/range {v9 .. v15}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    new-instance v8, Lorg/telegram/ui/PassportActivity$EncryptionResult;

    move-object v1, v8

    move-object v9, v2

    move-object v2, v7

    move-object v3, v6

    move-object v6, v9

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/PassportActivity$EncryptionResult;-><init>([B[B[B[B[B[B)V

    return-object v8
.end method

.method private fillInitialValues()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->initialValues:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->getCurrentValues()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->initialValues:Ljava/lang/String;

    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;Z)V
    .locals 7

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->phone_code_hash:Ljava/lang/String;

    const-string v1, "phoneHash"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const-string v5, "nextType"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    if-nez v0, :cond_3

    const/16 v0, 0x3c

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    :cond_3
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->timeout:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    const-string v5, "length"

    const-string v6, "type"

    if-eqz v1, :cond_4

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v4, p3, p1}, Lorg/telegram/ui/PassportActivity;->setPage(IZLandroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    const-string v0, "pattern"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/PassportActivity;->setPage(IZLandroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private getCurrentValues()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v4, v3

    const-string v5, ","

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SecureDocument;

    iget-object v4, v4, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SecureDocument;

    iget-object v3, v3, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDocumentHash(Lorg/telegram/messenger/SecureDocument;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->fileHash:[B

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getFieldCost(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "last_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "post_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "country_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "middle_name_native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "birth_date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "document_no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "expiry_date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "first_name_native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "middle_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_a
    const-string v0, "city"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_b
    const-string v0, "first_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_c
    const-string v0, "street_line2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_d
    const-string v0, "street_line1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_e
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_f
    const-string v0, "last_name_native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_10
    const-string v0, "residence_country_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x64

    return p1

    :pswitch_0
    const/16 p1, 0x1f

    return p1

    :pswitch_1
    const/16 p1, 0x19

    return p1

    :pswitch_2
    const/16 p1, 0x17

    return p1

    :pswitch_3
    const/16 p1, 0x1b

    return p1

    :pswitch_4
    const/16 p1, 0x1c

    return p1

    :pswitch_5
    const/16 p1, 0x15

    return p1

    :pswitch_6
    const/16 p1, 0x21

    return p1

    :pswitch_7
    const/16 p1, 0x20

    return p1

    :pswitch_8
    const/16 p1, 0x14

    return p1

    :pswitch_9
    const/16 p1, 0x1e

    return p1

    :pswitch_a
    const/16 p1, 0x1d

    return p1

    :pswitch_b
    const/16 p1, 0x18

    return p1

    :pswitch_c
    const/16 p1, 0x16

    return p1

    :pswitch_d
    const/16 p1, 0x1a

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7794fa71 -> :sswitch_10
        -0x5ba14fde -> :sswitch_f
        -0x4a7a0d3f -> :sswitch_e
        -0x2f744c7f -> :sswitch_d
        -0x2f744c7e -> :sswitch_c
        -0x9987146 -> :sswitch_b
        0x2e996b -> :sswitch_a
        0x68ac491 -> :sswitch_9
        0x19190ef5 -> :sswitch_8
        0x1ae9993c -> :sswitch_7
        0x1c5df33a -> :sswitch_6
        0x1e334765 -> :sswitch_5
        0x45a9532e -> :sswitch_4
        0x466d70a1 -> :sswitch_3
        0x58475cf6 -> :sswitch_2
        0x775b322c -> :sswitch_1
        0x77fdce94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private getMaxSelectedDocuments()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    return v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v0, :cond_0

    const-string p1, "personal_details"

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v0, :cond_1

    const-string p1, "passport"

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v0, :cond_2

    const-string p1, "internal_passport"

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v0, :cond_3

    const-string p1, "driver_license"

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v0, :cond_4

    const-string p1, "identity_card"

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v0, :cond_5

    const-string p1, "utility_bill"

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v0, :cond_6

    const-string p1, "address"

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v0, :cond_7

    const-string p1, "bank_statement"

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v0, :cond_8

    const-string p1, "rental_agreement"

    return-object p1

    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v0, :cond_9

    const-string p1, "temporary_registration"

    return-object p1

    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v0, :cond_a

    const-string p1, "passport_registration"

    return-object p1

    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v0, :cond_b

    const-string p1, "email"

    return-object p1

    :cond_b
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz p1, :cond_c

    const-string p1, "phone"

    return-object p1

    :cond_c
    const-string p1, ""

    return-object p1
.end method

.method private getRandomSecret()[B
    .locals 6

    const/16 v0, 0x20

    new-array v1, v0, [B

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xff

    if-ge v2, v0, :cond_0

    aget-byte v5, v1, v2

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rem-int/2addr v3, v4

    const/16 v2, 0xef

    if-eq v3, v2, :cond_2

    sub-int/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-byte v3, v1, v0

    and-int/2addr v3, v4

    add-int/2addr v3, v2

    if-ge v3, v4, :cond_1

    add-int/lit16 v3, v3, 0xff

    :cond_1
    rem-int/2addr v3, v4

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    :cond_2
    return-object v1
.end method

.method private getSecureDocumentKey([B[B)Lorg/telegram/messenger/SecureDocumentKey;
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->computeSHA512([B[B)[B

    move-result-object p1

    const/16 p2, 0x20

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x10

    new-array v3, v2, [B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/telegram/messenger/SecureDocumentKey;

    invoke-direct {p1, v0, v3}, Lorg/telegram/messenger/SecureDocumentKey;-><init>([B[B)V

    return-object p1
.end method

.method private getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v0, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentPassport:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v0, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentDriverLicence:I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v0, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentIdentityCard:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v0, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentUtilityBill:I

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v0, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentBankStatement:I

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v0, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentRentalAgreement:I

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v0, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentInternalPassport:I

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v0, :cond_7

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentPassportRegistration:I

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v0, :cond_8

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentTemporaryRegistration:I

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz v0, :cond_9

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentPhone:I

    goto :goto_0

    :cond_9
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->ActionBotDocumentEmail:I

    goto :goto_0

    :cond_a
    const-string p1, ""

    return-object p1
.end method

.method private getTranslitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_d

    if-eqz p2, :cond_c

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    if-eqz p2, :cond_1

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    if-eqz p2, :cond_2

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {p0, p2}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {p0, p2}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-nez v1, :cond_5

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-nez v1, :cond_7

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz p2, :cond_c

    :cond_7
    const/4 p2, 0x5

    const-string v3, "country_code"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-eqz v1, :cond_9

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->native_names:Z

    const-string v1, "residence_country_code"

    const-string v10, "gender"

    const-string v11, "birth_date"

    if-eqz p1, :cond_8

    new-array p1, v8, [Ljava/lang/String;

    const-string v8, "first_name_native"

    aput-object v8, p1, v2

    const-string v8, "last_name_native"

    aput-object v8, p1, v9

    aput-object v11, p1, v7

    aput-object v10, p1, v6

    aput-object v3, p1, v5

    aput-object v1, p1, p2

    goto :goto_1

    :cond_8
    new-array p1, v8, [Ljava/lang/String;

    const-string v8, "first_name"

    aput-object v8, p1, v2

    const-string v8, "last_name"

    aput-object v8, p1, v9

    aput-object v11, p1, v7

    aput-object v10, p1, v6

    aput-object v3, p1, v5

    aput-object v1, p1, p2

    goto :goto_1

    :cond_9
    new-array p1, v8, [Ljava/lang/String;

    const-string v1, "street_line1"

    aput-object v1, p1, v2

    const-string v1, "street_line2"

    aput-object v1, p1, v9

    const-string v1, "post_code"

    aput-object v1, p1, v7

    const-string v1, "city"

    aput-object v1, p1, v6

    const-string v1, "state"

    aput-object v1, p1, v5

    aput-object v3, p1, p2

    :goto_1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data:[B

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v5, v1}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v1

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v3, v1, v5}, Lorg/telegram/ui/PassportActivity;->decryptData([B[B[B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_c

    aget-object v1, p1, v2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    aget-object v1, p1, v2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    :cond_b
    :goto_3
    return-object v0

    :cond_c
    return-object v4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method private getViewByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->documentsToTypesLink:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    :cond_0
    return-object v0
.end method

.method private hasNotValueForType(Ljava/lang/Class;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private hasUnfilledValues()Z
    .locals 1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isHasNotAnyChanges()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->initialValues:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->getCurrentValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$addDocumentView$55(ILandroid/view/View;)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/PassportActivity;->currentPhotoViewerLayout:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SecureDocument;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {p2, p1, v3, v0}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_4

    :cond_4
    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_2

    :cond_5
    if-ne p1, v0, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_4

    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    goto :goto_3

    :goto_4
    return-void
.end method

.method private synthetic lambda$addDocumentView$56(Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-ne p2, p6, :cond_0

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->translationLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_3
    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p5, p0, Lorg/telegram/ui/PassportActivity;->documentsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0, p2}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    iget-object p2, p1, Lorg/telegram/messenger/SecureDocument;->path:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, p6}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->path:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$addDocumentView$57(ILorg/telegram/messenger/SecureDocument;Lorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Landroid/view/View;)Z
    .locals 9

    new-instance p5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->PassportDeleteSelfie:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->PassportDeleteScan:I

    goto :goto_0

    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda65;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;)V

    invoke-virtual {p5, v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v0
.end method

.method private synthetic lambda$addField$61(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p0, p1, p4, p2, p3}, Lorg/telegram/ui/PassportActivity;->openTypeActivity(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$addField$62(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needHideProgress()V

    return-void
.end method

.method private synthetic lambda$addField$63(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needShowProgress()V

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda70;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/PassportActivity;)V

    new-instance v6, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda71;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/PassportActivity;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/PassportActivity;->deleteValueInternal(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Z)V

    return-void
.end method

.method private synthetic lambda$addField$64(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLandroid/view/View;)V
    .locals 6

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p0, v3, p4}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :cond_2
    :goto_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-nez v2, :cond_4

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v1, :cond_13

    :cond_4
    invoke-direct {p0, p2, p4}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object p4

    if-eqz p4, :cond_13

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)V

    invoke-virtual {p1, p4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz v2, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->PassportDeletePhoneAlert:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->PassportDeleteEmailAlert:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    :goto_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_6
    :goto_5
    if-nez v3, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v2, :cond_7

    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityDocument:I

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_7

    :cond_7
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v0, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddress:I

    goto :goto_6

    :cond_8
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_12

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v5, :cond_9

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddLicence:I

    goto :goto_9

    :cond_9
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v5, :cond_a

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddPassport:I

    goto :goto_9

    :cond_a
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v5, :cond_b

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddInternalPassport:I

    goto :goto_9

    :cond_b
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v5, :cond_c

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddCard:I

    goto :goto_9

    :cond_c
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v5, :cond_d

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddBill:I

    goto :goto_9

    :cond_d
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v5, :cond_e

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddBank:I

    goto :goto_9

    :cond_e
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v5, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddAgreement:I

    goto :goto_9

    :cond_f
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v5, :cond_10

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddTemporaryRegistration:I

    goto :goto_9

    :cond_10
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v4, :cond_11

    sget v4, Lorg/telegram/messenger/R$string;->PassportAddPassportRegistration:I

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    new-array p4, p4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/CharSequence;

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    goto/16 :goto_4

    :cond_13
    invoke-direct {p0, p2, v3, p1, p3}, Lorg/telegram/ui/PassportActivity;->openTypeActivity(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$69(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$checkNativeFields$58()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->scrollToField(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createAddressInterface$32(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createAddressInterface$33(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createAddressInterface$34(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$createAddressInterface$35(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createAddressInterface$36(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, v0, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createAddressInterface$37(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->createDocumentDeleteAlert()V

    return-void
.end method

.method private synthetic lambda$createDocumentDeleteAlert$38([ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 7

    iget-boolean p2, p0, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentValues:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentValues:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    const/4 p2, 0x0

    aget-boolean v4, p1, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;->deleteValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZLjava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$createDocumentDeleteAlert$39([ZLandroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createEmailInterface$24(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->useCurrentValue:Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->useCurrentValue:Z

    return-void
.end method

.method private synthetic lambda$createEmailInterface$25(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createEmailVerificationInterface$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createIdentityInterface$40(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$41(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$42(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$43(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAttachMenu()V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$44(Landroid/view/View;)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/CameraScanActivity;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/telegram/ui/CameraScanActivity;-><init>(I)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$14;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CameraScanActivity;->setDelegate(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$45(Landroid/view/View;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget-object p1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    :goto_0
    iget-object p1, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$46(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p2, v1}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return v0
.end method

.method private synthetic lambda$createIdentityInterface$47(ILorg/telegram/ui/Components/EditTextBoldCursor;III)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aput p3, p1, v1

    add-int/lit8 v2, p4, 0x1

    aput v2, p1, v3

    aput p5, p1, v0

    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    add-int/2addr p4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p5, v2, v1

    aput-object p4, v2, v3

    aput-object p3, v2, v0

    const-string p3, "%02d.%02d.%d"

    invoke-static {p1, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$48(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    const/4 p3, 0x2

    const/4 v0, 0x0

    aput v0, p2, p3

    const/4 p3, 0x1

    aput v0, p2, p3

    aput v0, p2, v0

    sget p2, Lorg/telegram/messenger/R$string;->PassportNoExpireDate:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$createIdentityInterface$49(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    sget v7, Lorg/telegram/messenger/R$string;->PassportSelectExpiredDate:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    move-object/from16 v17, v7

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    sget v7, Lorg/telegram/messenger/R$string;->PassportSelectBithdayDate:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x78

    const/16 v9, -0x12

    move-object/from16 v17, v7

    const/16 v11, -0x78

    const/4 v12, 0x0

    const/16 v13, -0x12

    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    aget-object v8, v7, v2

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v9, v7, v3

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v4, v7, v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v16, v4

    move v14, v8

    move v15, v9

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    :goto_1
    if-ne v5, v6, :cond_3

    const/16 v18, 0x1

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    :goto_2
    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda52;

    invoke-direct {v2, v1, v5, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/PassportActivity;ILorg/telegram/ui/Components/EditTextBoldCursor;)V

    move-object/from16 v10, p1

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v19}, Lorg/telegram/ui/Components/AlertsCreator;->createDatePickerDialog(Landroid/content/Context;IIIIIILjava/lang/String;ZLorg/telegram/ui/Components/AlertsCreator$DatePickerDelegate;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    if-ne v5, v6, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->PassportSelectNotExpire:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda53;

    invoke-direct {v5, v1, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return v3
.end method

.method private synthetic lambda$createIdentityInterface$50(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x4

    if-nez p2, :cond_0

    const-string p2, "male"

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    sget p2, Lorg/telegram/messenger/R$string;->PassportMale:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string p2, "female"

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p2, p1

    sget p2, Lorg/telegram/messenger/R$string;->PassportFemale:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$createIdentityInterface$51(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_1

    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->PassportSelectGender:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PassportMale:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->PassportFemale:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v0

    aput-object v2, v3, p1

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p2, v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return p1
.end method

.method private synthetic lambda$createIdentityInterface$52(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, v0, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createIdentityInterface$53(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 p3, 0x5

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, v0, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createIdentityInterface$54(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->createDocumentDeleteAlert()V

    return-void
.end method

.method private synthetic lambda$createManageInterface$17(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAddDocumentAlert()V

    return-void
.end method

.method private synthetic lambda$createManageInterface$18()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needHideProgress()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updateManageVisibility()V

    return-void
.end method

.method private synthetic lambda$createManageInterface$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda72;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createManageInterface$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;-><init>()V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$deleteSecureValue;->types:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needShowProgress()V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createManageInterface$21(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPassportDeleteTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPassportDeleteAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createManageInterface$22(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->openAddDocumentAlert()V

    return-void
.end method

.method private synthetic lambda$createPasswordInterface$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda64;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createPasswordInterface$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://telegram.org/deactivate?phone="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createPasswordInterface$12(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needShowProgress()V

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/PassportActivity;)V

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordResetAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private synthetic lambda$createPasswordInterface$6(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCloseAfterSet(Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createPasswordInterface$7(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createPasswordInterface$8(Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;->email_pattern:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x4

    invoke-direct {p1, p3, v0, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createPasswordInterface$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/PassportActivity;->needHideProgress()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->RestoreEmailSent:I

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;->email_pattern:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v3, "RestoreEmailSent"

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RestoreEmailSentTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda73;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_passwordRecovery;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_2

    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FLOOD_WAIT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "Seconds"

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "Minutes"

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PassportActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$createPhoneInterface$26(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->useCurrentValue:Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->useCurrentValue:Z

    return-void
.end method

.method private synthetic lambda$createPhoneInterface$27()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createPhoneInterface$28(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->countriesArray:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnTextChange:Z

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->countriesMap:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    if-eqz p1, :cond_0

    const/16 v2, 0x58

    const/16 v4, 0x2013

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnTextChange:Z

    :cond_1
    new-instance p1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda60;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/PassportActivity;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$createPhoneInterface$29(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return p2
.end method

.method private synthetic lambda$createPhoneInterface$30(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createPhoneInterface$31(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x43

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createRequestInterface$14(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/PassportActivity;->ignoreOnFailure:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->callCallback(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PassportActivity;->showEditDoneProgress(ZZ)V

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "APP_VERSION_OUTDATED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PassportActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createRequestInterface$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda66;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createRequestInterface$16(Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->required_types:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_b

    iget-object v7, v1, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->required_types:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v8, :cond_0

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    goto :goto_3

    :cond_0
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    if-eqz v8, :cond_a

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v9, :cond_2

    goto/16 :goto_4

    :cond_2
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_5

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredTypeOneOf;->types:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$SecureRequiredType;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v1, v11, v6}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object v7, v11

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object v7, v8

    :goto_3
    invoke-direct {v1, v7, v6}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v6

    const-wide/16 v8, 0xc8

    const-string v10, "vibrator"

    if-nez v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_6
    invoke-direct {v1, v7}, Lorg/telegram/ui/PassportActivity;->getViewByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_7
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v1, v11}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_8
    invoke-direct {v1, v7}, Lorg/telegram/ui/PassportActivity;->getViewByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_9
    new-instance v8, Lorg/telegram/ui/PassportActivity$1ValueToSend;

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    invoke-direct {v8, v1, v6, v9, v7}, Lorg/telegram/ui/PassportActivity$1ValueToSend;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_secureValue;ZZ)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-direct {v1, v4, v6}, Lorg/telegram/ui/PassportActivity;->showEditDoneProgress(ZZ)V

    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;-><init>()V

    iget-wide v7, v1, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    iput-wide v7, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->bot_id:J

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->currentScope:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->scope:Ljava/lang/String;

    iget-object v5, v1, Lorg/telegram/ui/PassportActivity;->currentPublicKey:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->public_key:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_17

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/PassportActivity$1ValueToSend;

    iget-object v10, v9, Lorg/telegram/ui/PassportActivity$1ValueToSend;->value:Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    if-eqz v12, :cond_e

    instance-of v9, v12, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    if-eqz v9, :cond_d

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;

    :catch_0
    :cond_c
    :goto_6
    move-object/from16 v16, v2

    :catch_1
    move/from16 v17, v7

    goto/16 :goto_a

    :cond_d
    instance-of v9, v12, Lorg/telegram/tgnet/TLRPC$TL_securePlainPhone;

    if-eqz v9, :cond_c

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_securePlainPhone;

    goto :goto_6

    :cond_e
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "secret"

    const/4 v15, 0x2

    if-eqz v13, :cond_f

    :try_start_1
    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {v1, v6, v13}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v6

    const-string v13, "data_hash"

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-static {v4, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v6, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "file_hash"

    if-nez v4, :cond_11

    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v11, :cond_10

    iget-object v15, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_secureFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v2

    :try_start_3
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v17, v7

    :try_start_4
    iget-object v7, v15, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {v1, v2, v7}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v2

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    move/from16 v18, v11

    const/4 v11, 0x2

    invoke-static {v15, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    move/from16 v7, v17

    move/from16 v11, v18

    const/4 v15, 0x2

    goto :goto_7

    :cond_10
    move-object/from16 v16, v2

    move/from16 v17, v7

    const-string v2, "files"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_11
    move-object/from16 v16, v2

    move/from16 v17, v7

    :goto_8
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v4, :cond_12

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {v1, v4, v7}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    const/4 v11, 0x2

    invoke-static {v2, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "front_side"

    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v4, :cond_13

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {v1, v4, v7}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    const/4 v11, 0x2

    invoke-static {v2, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reverse_side"

    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-boolean v2, v9, Lorg/telegram/ui/PassportActivity$1ValueToSend;->selfie_required:Z

    if-eqz v2, :cond_14

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v4, :cond_14

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {v1, v4, v7}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    const/4 v11, 0x2

    invoke-static {v2, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "selfie"

    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget-boolean v2, v9, Lorg/telegram/ui/PassportActivity$1ValueToSend;->translation_required:Z

    if-eqz v2, :cond_16

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v4, :cond_15

    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-direct {v1, v11, v13}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v11

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    const/4 v15, 0x2

    invoke-static {v9, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v11, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_15
    const-string v4, "translation"

    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v1, v2}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;-><init>()V

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->hash:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;->hash:[B

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->value_hashes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move/from16 v7, v17

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v4, "secure_data"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    nop

    :goto_b
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentPayload:Ljava/lang/String;

    if-eqz v4, :cond_18

    :try_start_6
    const-string v5, "payload"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :catch_4
    nop

    :cond_18
    :goto_c
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentNonce:Ljava/lang/String;

    if-eqz v4, :cond_19

    :try_start_7
    const-string v5, "nonce"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_19
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/PassportActivity;->encryptData([B)Lorg/telegram/ui/PassportActivity$EncryptionResult;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->credentials:Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;

    iget-object v5, v2, Lorg/telegram/ui/PassportActivity$EncryptionResult;->fileHash:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;->hash:[B

    iget-object v5, v2, Lorg/telegram/ui/PassportActivity$EncryptionResult;->encryptedData:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;->data:[B

    :try_start_8
    iget-object v4, v1, Lorg/telegram/ui/PassportActivity;->currentPublicKey:Ljava/lang/String;

    const-string v5, "\\n"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-----END PUBLIC KEY-----"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v4, "RSA/NONE/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v0, v3, Lorg/telegram/tgnet/tl/TL_account$acceptAuthorization;->credentials:Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;

    iget-object v2, v2, Lorg/telegram/ui/PassportActivity$EncryptionResult;->decrypyedFileSecret:[B

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;->secret:[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_d
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda48;

    invoke-direct {v2, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private synthetic lambda$deleteValueInternal$59(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11

    move-object v8, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {p2, v2, v5}, Lorg/telegram/ui/PassportActivity$ErrorRunnable;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PassportActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    if-eqz p3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lorg/telegram/ui/PassportActivity;->removeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_4

    invoke-direct {p0, v3}, Lorg/telegram/ui/PassportActivity;->removeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    :cond_4
    :goto_0
    invoke-direct {p0, p4}, Lorg/telegram/ui/PassportActivity;->removeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    :goto_1
    iget v0, v8, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v1, 0x8

    const/4 v6, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, v8, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    if-eqz v0, :cond_5

    iget-object v1, v8, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->setNeedDivider(Z)V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updateManageVisibility()V

    goto/16 :goto_8

    :cond_6
    if-eqz v2, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p0, v7, v6}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data:[B

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/PassportActivity;->decryptData([B[B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v7, v2

    :cond_9
    move-object v0, v5

    :goto_3
    if-nez v7, :cond_a

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    move-object v9, v0

    move-object v7, v1

    goto :goto_4

    :cond_a
    move-object v9, v0

    goto :goto_4

    :cond_b
    move-object v7, v2

    move-object v9, v5

    :goto_4
    if-eqz p6, :cond_d

    if-eqz v4, :cond_c

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v10, v0

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p5

    move-object v3, v4

    :goto_6
    move-object v4, v7

    move-object v5, v9

    move v6, p3

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/PassportActivity;->setTypeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;ZI)V

    goto :goto_8

    :cond_d
    invoke-direct {p0, v3, v6}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data:[B

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->secret:[B

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v5, v1}, Lorg/telegram/ui/PassportActivity;->decryptValueSecret([B[B)[B

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureData;->data_hash:[B

    invoke-direct {p0, v2, v1, v0}, Lorg/telegram/ui/PassportActivity;->decryptData([B[B[B)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v10, v0

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    :goto_7
    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v1, p5

    move-object v3, v5

    goto :goto_6

    :goto_8
    if-eqz p8, :cond_10

    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_10
    :goto_9
    return-void
.end method

.method private synthetic lambda$deleteValueInternal$60(Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda69;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$3(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-eqz p1, :cond_2

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updatePasswordInterface()V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    iget p1, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/PassportActivity;->onPasswordDone(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda59;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->hash:I

    invoke-static {v0, p0}, Lorg/telegram/messenger/SharedConfig;->setPassportConfig(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getCountryLangs()Ljava/util/HashMap;

    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPasswordDone$13(ZLjava/lang/String;)V
    .locals 10

    new-instance v6, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;-><init>()V

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->savedPasswordHash:[B

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v8, v7

    :goto_1
    new-instance v9, Lorg/telegram/ui/PassportActivity$8;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, v8

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity$8;-><init>(Lorg/telegram/ui/PassportActivity;Z[BLorg/telegram/tgnet/tl/TL_account$getPasswordSettings;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {v8, v0, v1, p1, p2}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v6, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "ALGO_INVALID"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v9, v7, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, v6, v9, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p2, "PASSWORD_HASH_INVALID"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v9, v7, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$68(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$67()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->presentAfterAnimation:Lorg/telegram/ui/PassportActivity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->presentAfterAnimation:Lorg/telegram/ui/PassportActivity;

    return-void
.end method

.method private synthetic lambda$openAddDocumentAlert$23(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$SecureValueType;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-object v0, p2

    :goto_0
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->isPersonalDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    iput-boolean p3, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->translation_required:Z

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;-><init>()V

    :goto_1
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-object p2, v0

    move-object v0, p1

    goto :goto_2

    :cond_0
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->isAddressDocument(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;-><init>()V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;-><init>()V

    goto :goto_1

    :cond_1
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    :goto_3
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/telegram/ui/PassportActivity;->openTypeActivity(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$processSelectedFiles$70(Lorg/telegram/messenger/SecureDocument;I)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->selfieLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    const/16 v4, 0x14

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_7

    return-void

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->frontLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_7

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/SecureDocument;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SecureDocument;->path:Ljava/lang/String;

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v3, v1, v2, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity;->addDocumentView(Lorg/telegram/messenger/SecureDocument;I)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    return-void
.end method

.method private synthetic lambda$processSelectedFiles$71(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 11

    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v8, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/2addr v6, v3

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    add-int/2addr v6, v3

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr v6, v3

    goto :goto_2

    :cond_5
    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v8, :cond_6

    :goto_4
    iput-object v7, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updateInterfaceStringsForDocumentType()V

    goto :goto_5

    :cond_6
    add-int/2addr v6, v3

    goto :goto_3

    :cond_7
    :goto_5
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v4

    iget-object v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    iget-object v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v5

    iget-object v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x7

    aget-object v0, v0, v6

    iget-object v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->number:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    if-eq v0, v5, :cond_c

    goto :goto_7

    :cond_c
    const-string v0, "female"

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    sget v2, Lorg/telegram/messenger/R$string;->PassportFemale:I

    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const-string v0, "male"

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    sget v2, Lorg/telegram/messenger/R$string;->PassportMale:I

    goto :goto_6

    :cond_e
    :goto_7
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x5

    aget-object v2, v2, v6

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x6

    aget-object v2, v2, v6

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    const-string v2, "%02d.%02d.%d"

    if-lez v0, :cond_11

    iget v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    if-lez v6, :cond_11

    iget v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    if-lez v6, :cond_11

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v6, v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v8, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v0, v10, v4

    aput-object v8, v10, v3

    aput-object v9, v10, v5

    invoke-static {v7, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryDay:I

    const/16 v6, 0x8

    if-lez v0, :cond_12

    iget v7, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryMonth:I

    if-lez v7, :cond_12

    iget v8, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryYear:I

    if-lez v8, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aput v8, v9, v4

    aput v7, v9, v3

    aput v0, v9, v5

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v6, v7, v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v8, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->expiryYear:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v8, v1, v3

    aput-object p1, v1, v5

    invoke-static {v7, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aput v4, p1, v5

    aput v4, p1, v3

    aput v4, p1, v4

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v6

    sget v0, Lorg/telegram/messenger/R$string;->PassportNoExpireDate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method private synthetic lambda$processSelectedFiles$72(Ljava/util/ArrayList;IZ)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget v0, v1, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x14

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    move-object/from16 v8, p1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->uri:Landroid/net/Uri;

    const/high16 v10, 0x45000000    # 2048.0f

    invoke-static {v9, v0, v10, v10, v5}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/16 v16, 0x140

    const/16 v17, 0x140

    const/high16 v12, 0x45000000    # 2048.0f

    const/high16 v13, 0x45000000    # 2048.0f

    const/16 v14, 0x59

    const/4 v15, 0x0

    move-object v11, v0

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_secureFile;-><init>()V

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    long-to-int v12, v11

    iput v12, v10, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    int-to-long v11, v9

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v9, v11

    iput v9, v10, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->date:I

    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    invoke-interface {v9, v10}, Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;->saveFile(Lorg/telegram/tgnet/TLRPC$TL_secureFile;)Lorg/telegram/messenger/SecureDocument;

    move-result-object v9

    iput v2, v9, Lorg/telegram/messenger/SecureDocument;->type:I

    new-instance v10, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda57;

    invoke-direct {v10, v1, v9, v2}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_4

    if-nez v7, :cond_4

    :try_start_0
    iget-object v9, v1, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    invoke-static {v0, v9}, Lorg/telegram/messenger/MrzRecognizer;->recognize(Landroid/graphics/Bitmap;Z)Lorg/telegram/messenger/MrzRecognizer$Result;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v7, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda58;

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v7, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method private synthetic lambda$startPhoneVerification$65(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/PassportActivity;

    iget-object v6, v0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v8, v0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/PassportActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    iput-object v2, v1, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    iput-object v2, v1, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    move-object/from16 v2, p3

    iput-object v2, v1, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    move-object/from16 v2, p4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    iput-object v2, v1, Lorg/telegram/ui/PassportActivity;->currentPhoneVerification:Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    :cond_0
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    move-object/from16 v2, p5

    invoke-static {v4, p1, p0, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private synthetic lambda$startPhoneVerification$66(Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda63;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadPasswordInfo()V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private onFieldError(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->scrollToField(Landroid/view/View;)V

    return-void
.end method

.method private onPasscodeError(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private onPasswordDone(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PassportActivity;->onPasscodeError(Z)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/PassportActivity;->showEditDoneProgress(ZZ)V

    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/PassportActivity;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private openAddDocumentAlert()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentPhone:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentEmail:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentIdentity:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentPassport:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentInternalPassport:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentPassportRegistration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentTemporaryRegistration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentIdentityCard:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentDriverLicence:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentAddress:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentUtilityBill:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentBankStatement:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-class v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->hasNotValueForType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->ActionBotDocumentRentalAgreement:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_0

    :cond_d
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->PassportNoDocumentsAdd:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda40;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_e
    :goto_0
    return-void
.end method

.method private openAttachMenu()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->PassportUploadMaxReached:I

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Files"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "PassportUploadMaxReached"

    invoke-static {v1, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/PassportActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->createChatAttachView()V

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setOpenWithFrontFaceCamera(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->getMaxSelectedDocuments()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private openTypeActivity(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v13, v2

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    if-eqz v7, :cond_1

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    const/4 v10, 0x2

    goto :goto_2

    :cond_3
    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    const/4 v10, 0x3

    goto :goto_2

    :cond_4
    instance-of v4, v14, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v4, :cond_5

    const/4 v10, 0x4

    goto :goto_2

    :cond_5
    const/4 v10, -0x1

    :goto_2
    if-eq v10, v6, :cond_9

    if-nez v12, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    invoke-direct {v0, v14}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object v9, v4

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    invoke-direct {v0, v3}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v6

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v16

    new-instance v4, Lorg/telegram/ui/PassportActivity;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/util/HashMap;

    if-eqz v7, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    goto :goto_4

    :cond_7
    move-object/from16 v19, v1

    const/16 v17, 0x0

    :goto_4
    move-object v1, v4

    move v2, v10

    move-object v15, v4

    move-object/from16 v4, v19

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object v11, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v11

    move-object v11, v9

    move-object/from16 v9, v18

    move/from16 v20, v10

    move-object/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/PassportActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureValue;Ljava/util/HashMap;Ljava/util/HashMap;)V

    new-instance v1, Lorg/telegram/ui/PassportActivity$20;

    invoke-direct {v1, v0, v14, v12, v13}, Lorg/telegram/ui/PassportActivity$20;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/tgnet/TLRPC$SecureValueType;ZI)V

    iput-object v1, v15, Lorg/telegram/ui/PassportActivity;->delegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iput v1, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    iput-object v1, v15, Lorg/telegram/ui/PassportActivity;->saltedPassword:[B

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    iput-object v1, v15, Lorg/telegram/ui/PassportActivity;->secureSecret:[B

    iget-wide v1, v0, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    iput-wide v1, v15, Lorg/telegram/ui/PassportActivity;->currentBotId:J

    iput-object v11, v15, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    iput-boolean v12, v15, Lorg/telegram/ui/PassportActivity;->documentOnly:Z

    move-object/from16 v3, v16

    iput-object v3, v15, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    move-object/from16 v1, p3

    iput-object v1, v15, Lorg/telegram/ui/PassportActivity;->availableDocumentTypes:Ljava/util/ArrayList;

    move/from16 v4, v20

    const/4 v1, 0x4

    if-ne v4, v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    iput-object v1, v15, Lorg/telegram/ui/PassportActivity;->currentEmail:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_9
    return-void
.end method

.method private processSelectedAttach(I)V
    .locals 5

    if-nez p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/16 v2, 0x18

    const-string v3, "output"

    if-lt p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPicturePath:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private processSelectedFiles(Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v5, v4

    if-ge v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/16 v5, 0x8

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v5, 0x6

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :cond_5
    :goto_2
    iget v0, p0, Lorg/telegram/ui/PassportActivity;->uploadingFileType:I

    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/PassportActivity;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;)Lorg/telegram/tgnet/TLRPC$TL_secureValue;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v4, v3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private scrollToField(Landroid/view/View;)V
    .locals 3

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_1
    return-void
.end method

.method private setFieldValues(Ljava/util/HashMap;Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "country_code"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "expiry_date"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "gender"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "residence_country_code"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentCitizeship:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ne v5, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aget-object v5, v0, v2

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aget-object v5, v0, v3

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aget-object v0, v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentExpireDate:[I

    aput v4, p1, v2

    aput v4, p1, v3

    aput v4, p1, v4

    sget p1, Lorg/telegram/messenger/R$string;->PassportNoExpireDate:I

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    const-string v0, "male"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    sget p1, Lorg/telegram/messenger/R$string;->PassportMale:I

    goto :goto_2

    :cond_5
    const-string v0, "female"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentGender:Ljava/lang/String;

    sget p1, Lorg/telegram/messenger/R$string;->PassportFemale:I

    goto :goto_2

    :pswitch_3
    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentResidence:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    :goto_3
    goto :goto_1

    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->fieldsErrors:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->documentsErrors:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    :goto_5
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setErrorText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7794fa71 -> :sswitch_3
        -0x4a7a0d3f -> :sswitch_2
        0x1c5df33a -> :sswitch_1
        0x58475cf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTypeValue(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/lang/String;ZI)V
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p7

    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->typesViews:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    const/4 v14, 0x6

    const/16 v15, 0x8

    const/4 v6, 0x1

    if-nez v0, :cond_3

    iget v0, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-ne v0, v15, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->setNeedDivider(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const/4 v14, 0x1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/PassportActivity;->addField(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Ljava/util/ArrayList;ZZ)Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PassportActivity;->updateManageVisibility()V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    if-eqz v11, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->typesValues:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v4, v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-direct {v7, v8, v14}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v5

    invoke-direct {v7, v11, v14}, Lorg/telegram/ui/PassportActivity;->getValueByType(Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Z)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object v6

    if-eqz v10, :cond_6

    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v17, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v14, "countries.txt"

    invoke-virtual {v15, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v14, ";"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v14, v7, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v5

    const/4 v15, 0x1

    :try_start_1
    aget-object v5, v3, v15

    const/4 v15, 0x2

    aget-object v3, v3, v15

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_5

    :cond_5
    move-object/from16 v19, v5

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    const/4 v3, 0x0

    goto :goto_6

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move-object/from16 v19, v5

    const/4 v3, 0x0

    iput-object v3, v7, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    :goto_6
    if-eqz v9, :cond_9

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v1

    move-object/from16 v25, v6

    :goto_7
    const/16 v22, 0x0

    goto/16 :goto_29

    :cond_7
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    move-object/from16 v26, v1

    move-object/from16 v25, v6

    if-eqz v0, :cond_8

    move-object v0, v9

    goto :goto_7

    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_28

    :cond_9
    iget v0, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v9, 0x8

    if-eq v0, v9, :cond_c

    if-eqz v11, :cond_c

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_c

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    if-le v13, v9, :cond_b

    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v7, v9}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget v9, Lorg/telegram/messenger/R$string;->PassportDocuments:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object v0, v3

    :cond_d
    :goto_9
    if-nez v10, :cond_f

    if-eqz v12, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v26, v1

    move-object/from16 v25, v6

    const/16 v22, 0x0

    goto/16 :goto_27

    :cond_f
    :goto_a
    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v14, v9, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    const-string v15, "residence_country_code"

    const-string v3, "gender"

    const/16 v20, 0x5

    const/16 v21, 0x4

    const-string v5, "first_name_native"

    const/16 v23, 0x3

    move-object/from16 v24, v2

    const-string v2, "last_name"

    move-object/from16 v25, v6

    const-string v6, "middle_name"

    move-object/from16 v26, v1

    const-string v1, "country_code"

    const-string v13, "last_name_native"

    const-string v8, "middle_name_native"

    if-eqz v14, :cond_16

    iget v9, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-nez v9, :cond_11

    if-eqz p6, :cond_12

    :cond_11
    const/16 v14, 0x8

    if-ne v9, v14, :cond_13

    if-nez v11, :cond_13

    :cond_12
    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const-string v27, "first_name"

    const/16 v22, 0x0

    aput-object v27, v14, v22

    const/16 v17, 0x1

    aput-object v6, v14, v17

    const/16 v18, 0x2

    aput-object v2, v14, v18

    aput-object v5, v14, v23

    aput-object v8, v14, v21

    aput-object v13, v14, v20

    const-string v20, "birth_date"

    const/16 v16, 0x6

    aput-object v20, v14, v16

    const/16 v16, 0x7

    aput-object v3, v14, v16

    move-object/from16 p2, v3

    const/16 v3, 0x8

    aput-object v1, v14, v3

    const/16 v16, 0x9

    aput-object v15, v14, v16

    goto :goto_b

    :cond_13
    move-object/from16 p2, v3

    const/16 v3, 0x8

    const/4 v14, 0x0

    :goto_b
    if-eqz v9, :cond_14

    if-ne v9, v3, :cond_15

    if-eqz v11, :cond_15

    :cond_14
    const/4 v3, 0x2

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    :goto_c
    const/16 v22, 0x0

    goto :goto_11

    :goto_d
    new-array v9, v3, [Ljava/lang/String;

    const-string v3, "document_no"

    const/16 v16, 0x0

    aput-object v3, v9, v16

    const-string v3, "expiry_date"

    const/16 v16, 0x1

    aput-object v3, v9, v16

    goto :goto_c

    :cond_16
    move-object/from16 p2, v3

    instance-of v3, v9, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v3, :cond_19

    iget v3, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-nez v3, :cond_17

    if-eqz p6, :cond_18

    :cond_17
    const/16 v9, 0x8

    goto :goto_f

    :cond_18
    :goto_e
    const/4 v3, 0x6

    goto :goto_10

    :goto_f
    if-ne v3, v9, :cond_19

    if-nez v11, :cond_19

    goto :goto_e

    :goto_10
    new-array v14, v3, [Ljava/lang/String;

    const-string v3, "street_line1"

    const/16 v22, 0x0

    aput-object v3, v14, v22

    const-string v3, "street_line2"

    const/4 v9, 0x1

    aput-object v3, v14, v9

    const-string v3, "post_code"

    const/4 v9, 0x2

    aput-object v3, v14, v9

    const-string v3, "city"

    aput-object v3, v14, v23

    const-string v3, "state"

    aput-object v3, v14, v21

    aput-object v1, v14, v20

    const/4 v9, 0x0

    goto :goto_11

    :cond_19
    const/16 v22, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_11
    if-nez v14, :cond_1a

    if-eqz v9, :cond_34

    :cond_1a
    move-object/from16 v16, v0

    move-object/from16 v20, v9

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/16 v21, 0x0

    :goto_12
    if-ge v3, v9, :cond_33

    if-nez v3, :cond_1b

    if-eqz v10, :cond_1d

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    move-object/from16 v21, v4

    move-object v4, v14

    goto :goto_13

    :cond_1b
    if-nez v4, :cond_1c

    move-object/from16 v27, v2

    move-object/from16 v28, v21

    const/4 v9, 0x2

    move-object/from16 v2, p2

    move-object/from16 v21, v4

    goto/16 :goto_25

    :cond_1c
    if-eqz v12, :cond_1d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v0

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    goto :goto_13

    :cond_1d
    move-object v9, v0

    move-object/from16 v29, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v29

    :goto_13
    if-eqz v4, :cond_32

    if-nez v9, :cond_1e

    goto/16 :goto_24

    :cond_1e
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    if-nez v3, :cond_1f

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_16

    :cond_1f
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v12, v21

    move-object/from16 v10, v23

    :goto_15
    invoke-virtual {v12, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v0, v27

    goto :goto_14

    :goto_16
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_20
    const/4 v0, 0x0

    :goto_17
    array-length v10, v4

    if-ge v0, v10, :cond_32

    aget-object v10, v4, v0

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_31

    if-nez v16, :cond_21

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_18

    :catch_2
    nop

    goto/16 :goto_26

    :cond_21
    move-object/from16 v10, v16

    :goto_18
    :try_start_5
    aget-object v12, v4, v0

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2f

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2f

    move-object/from16 v23, v9

    aget-object v9, v4, v0

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    aget-object v9, v4, v0

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_22
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    :goto_19
    const/4 v9, 0x2

    move-object/from16 v2, p2

    goto/16 :goto_21

    :cond_23
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_26

    aget-object v9, v4, v0

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    aget-object v9, v4, v0

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    aget-object v9, v4, v0

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_1a

    :cond_24
    const-string v9, ", "

    goto :goto_1b

    :catch_3
    nop

    goto/16 :goto_22

    :cond_25
    :goto_1a
    const-string v9, " "

    :goto_1b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    aget-object v9, v4, v0

    move-object/from16 v27, v2

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v28, v4

    const v4, -0x7794fa71

    if-eq v2, v4, :cond_2a

    const v4, -0x4a7a0d3f

    if-eq v2, v4, :cond_29

    const v4, 0x58475cf6

    if-eq v2, v4, :cond_28

    :cond_27
    move-object/from16 v2, p2

    goto :goto_1c

    :cond_28
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v2, p2

    const/4 v4, 0x0

    goto :goto_1d

    :cond_29
    move-object/from16 v2, p2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x2

    goto :goto_1d

    :cond_2a
    move-object/from16 v2, p2

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2b
    :goto_1c
    const/4 v4, -0x1

    :goto_1d
    if-eqz v4, :cond_2e

    const/4 v9, 0x1

    if-eq v4, v9, :cond_2e

    const/4 v9, 0x2

    if-eq v4, v9, :cond_2c

    goto :goto_20

    :cond_2c
    const-string v4, "male"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    sget v4, Lorg/telegram/messenger/R$string;->PassportMale:I

    :goto_1e
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    :cond_2d
    const-string v4, "female"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    sget v4, Lorg/telegram/messenger/R$string;->PassportFemale:I

    goto :goto_1e

    :goto_1f
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_2e
    const/4 v9, 0x2

    iget-object v4, v7, Lorg/telegram/ui/PassportActivity;->languageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_30

    :goto_20
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_21

    :cond_2f
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v23, v9

    goto/16 :goto_19

    :cond_30
    :goto_21
    move-object/from16 v16, v10

    goto :goto_23

    :goto_22
    move-object v0, v10

    goto :goto_27

    :cond_31
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v23, v9

    const/4 v9, 0x2

    move-object/from16 v2, p2

    :goto_23
    add-int/lit8 v0, v0, 0x1

    move-object/from16 p2, v2

    move-object/from16 v9, v23

    move-object/from16 v2, v27

    move-object/from16 v4, v28

    goto/16 :goto_17

    :cond_32
    :goto_24
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v23, v9

    const/4 v9, 0x2

    move-object/from16 v2, p2

    move-object/from16 v0, v23

    :goto_25
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 p2, v2

    move-object/from16 v4, v21

    move-object/from16 v2, v27

    move-object/from16 v21, v28

    goto/16 :goto_12

    :cond_33
    :goto_26
    move-object/from16 v0, v16

    :cond_34
    :goto_27
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_35
    :goto_28
    const/4 v0, 0x0

    :goto_29
    if-nez p6, :cond_36

    iget-object v1, v7, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    move-object/from16 v2, p1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v7, v3}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_2a

    :cond_36
    move-object/from16 v2, p1

    const/4 v1, 0x0

    :goto_2a
    if-eqz v11, :cond_37

    iget-object v3, v7, Lorg/telegram/ui/PassportActivity;->errorsMap:Ljava/util/HashMap;

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v7, v4}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    goto :goto_2b

    :cond_37
    const/4 v3, 0x0

    :goto_2b
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_39

    :cond_38
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3c

    :cond_39
    if-nez p6, :cond_3a

    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->mainErrorsMap:Ljava/util/HashMap;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    goto :goto_2c

    :cond_3a
    const/4 v3, 0x0

    :goto_2c
    if-nez v3, :cond_3b

    iget-object v0, v7, Lorg/telegram/ui/PassportActivity;->mainErrorsMap:Ljava/util/HashMap;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {v7, v1}, Lorg/telegram/ui/PassportActivity;->getNameForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2d

    :cond_3b
    move-object v0, v3

    :goto_2d
    move-object/from16 v1, v26

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto/16 :goto_32

    :cond_3c
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePersonalDetails;

    if-eqz v2, :cond_44

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-nez v11, :cond_3d

    sget v0, Lorg/telegram/messenger/R$string;->PassportPersonalDetailsInfo:I

    :goto_2e
    const/4 v3, 0x1

    goto/16 :goto_30

    :cond_3d
    iget v1, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3e

    goto :goto_2f

    :cond_3e
    move/from16 v2, p7

    const/4 v1, 0x1

    if-ne v2, v1, :cond_43

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-eqz v2, :cond_3f

    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityPassport:I

    goto :goto_2e

    :cond_3f
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v2, :cond_40

    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityInternalPassport:I

    goto :goto_2e

    :cond_40
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v2, :cond_41

    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityDriverLicence:I

    goto :goto_2e

    :cond_41
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-eqz v1, :cond_42

    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityID:I

    goto :goto_2e

    :cond_42
    const/4 v3, 0x1

    goto/16 :goto_31

    :cond_43
    sget v0, Lorg/telegram/messenger/R$string;->PassportIdentityDocumentInfo:I

    goto :goto_2e

    :cond_44
    move/from16 v2, p7

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeAddress;

    if-eqz v3, :cond_4c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-nez v11, :cond_45

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddressNoUploadInfo:I

    goto :goto_2e

    :cond_45
    iget v1, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_46

    :goto_2f
    sget v0, Lorg/telegram/messenger/R$string;->PassportDocuments:I

    goto :goto_2e

    :cond_46
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeRentalAgreement;

    if-eqz v2, :cond_47

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddAgreementInfo:I

    goto :goto_30

    :cond_47
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeUtilityBill;

    if-eqz v2, :cond_48

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddBillInfo:I

    goto :goto_30

    :cond_48
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassportRegistration;

    if-eqz v2, :cond_49

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddPassportRegistrationInfo:I

    goto :goto_30

    :cond_49
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeTemporaryRegistration;

    if-eqz v2, :cond_4a

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddTemporaryRegistrationInfo:I

    goto :goto_30

    :cond_4a
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeBankStatement;

    if-eqz v1, :cond_4e

    sget v0, Lorg/telegram/messenger/R$string;->PassportAddBankInfo:I

    goto :goto_30

    :cond_4b
    sget v0, Lorg/telegram/messenger/R$string;->PassportAddressInfo:I

    goto :goto_30

    :cond_4c
    const/4 v3, 0x1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePhone;

    if-eqz v2, :cond_4d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget v0, Lorg/telegram/messenger/R$string;->PassportPhoneInfo:I

    goto :goto_30

    :cond_4d
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeEmail;

    if-eqz v1, :cond_4e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget v0, Lorg/telegram/messenger/R$string;->PassportEmailInfo:I

    :goto_30
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4e
    :goto_31
    move-object/from16 v1, v26

    const/4 v6, 0x0

    :goto_32
    invoke-virtual {v1, v0}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->setValue(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->access$6800(Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v6, :cond_4f

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_33

    :cond_4f
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    :goto_33
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v6, :cond_53

    iget v0, v7, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_53

    if-eqz p6, :cond_50

    if-nez v11, :cond_51

    :cond_50
    if-nez p6, :cond_53

    if-eqz v19, :cond_53

    :cond_51
    if-eqz v11, :cond_52

    if-eqz v25, :cond_53

    :cond_52
    const/4 v6, 0x1

    goto :goto_34

    :cond_53
    const/4 v6, 0x0

    :goto_34
    invoke-virtual {v1, v6}, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;->setChecked(Z)V

    return-void
.end method

.method private showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showAttachmentError()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnsupportedAttachment:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v11, 0x0

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v14, :cond_2

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v14, v7}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v8, [F

    aput v12, v10, v7

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v15

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v8, [F

    aput v12, v3, v7

    invoke-static {v15, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v12

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v11, v4, v7

    invoke-static {v12, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v12, v8, [F

    aput v13, v12, v7

    invoke-static {v11, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v12, v8, [F

    aput v13, v12, v7

    invoke-static {v11, v2, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v12, v8, [F

    aput v13, v12, v7

    invoke-static {v11, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v10, v6, v7

    aput-object v3, v6, v8

    aput-object v4, v6, v5

    const/4 v3, 0x3

    aput-object v9, v6, v3

    const/4 v3, 0x4

    aput-object v2, v6, v3

    const/4 v2, 0x5

    aput-object v11, v6, v2

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    aput v12, v9, v7

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v8, [F

    aput v12, v14, v7

    invoke-static {v9, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v8, [F

    aput v11, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v12

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v12

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v12

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v9, v6, v8

    aput-object v11, v6, v5

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v10, v6, v3

    const/4 v3, 0x5

    aput-object v12, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PassportActivity$21;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PassportActivity$21;-><init>(Lorg/telegram/ui/PassportActivity;Z)V

    :goto_1
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    aput v12, v9, v7

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v8, [F

    aput v12, v14, v7

    invoke-static {v9, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v8, [F

    aput v11, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v9, v6, v8

    aput-object v11, v6, v5

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v10, v6, v3

    const/4 v3, 0x5

    aput-object v12, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    aput v12, v9, v7

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v8, [F

    aput v12, v14, v7

    invoke-static {v9, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v8, [F

    aput v11, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v13, v15, v7

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v7

    aput-object v9, v6, v8

    aput-object v11, v6, v5

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v10, v6, v3

    const/4 v3, 0x5

    aput-object v12, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PassportActivity$22;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PassportActivity$22;-><init>(Lorg/telegram/ui/PassportActivity;Z)V

    goto/16 :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method private startPhoneVerification(ZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)V
    .locals 6

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-nez v4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCall:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->permissionsDialog:Landroid/app/Dialog;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_2
    iput-object p2, p0, Lorg/telegram/ui/PassportActivity;->pendingPhone:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity;->pendingErrorRunnable:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity;->pendingFinishRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity;->pendingDelegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    return-void

    :cond_4
    const/4 v4, 0x1

    :cond_5
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->phone_number:Ljava/lang/String;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;-><init>()V

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    const/4 p4, 0x1

    goto :goto_3

    :cond_6
    const/4 p4, 0x0

    :goto_3
    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    sget-object p4, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {p4}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result p4

    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p4, "mainconfig"

    invoke-virtual {p3, p4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iget-object p4, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    iget-boolean p4, p4, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_app_hash:Z

    const-string v1, "sms_hash"

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    if-eqz p4, :cond_7

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getSmsHash()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    :cond_7
    invoke-interface {p3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    goto :goto_4

    :goto_5
    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    if-eqz p3, :cond_9

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p4, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    iget-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z

    if-nez p4, :cond_9

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    goto :goto_7

    :catch_0
    move-exception p3

    goto :goto_6

    :cond_8
    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    iput-boolean v3, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->unknown_number:Z

    iput-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->current_number:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    iget-object p4, p1, Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    iput-boolean v2, p4, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->allow_flashcall:Z

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda54;

    invoke-direct {p4, p0, p2, p5, p1}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$sendVerifyPhoneCode;)V

    const/4 p2, 0x2

    invoke-virtual {p3, p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateInterfaceStringsForDocumentType()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->getTextForType(Lorg/telegram/tgnet/TLRPC$SecureValueType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PassportPersonal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->updateUploadText(I)V

    return-void
.end method

.method private updateManageVisibility()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentForm:Lorg/telegram/tgnet/tl/TL_account$authorizationForm;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$authorizationForm;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->addDocumentSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->emptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->deletePassportCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->addDocumentSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->hasUnfilledValues()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->addDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updatePasswordInterface()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    iget v4, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordAvatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordAvatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v2

    sget v1, Lorg/telegram/messenger/R$string;->LoginPassword:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordAvatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordInfoRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->passwordRequestTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateUploadText(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->PassportUploadAdditinalDocument:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_9

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->PassportUploadDocument:I

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadSelfieCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->selfieDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_11

    goto/16 :goto_8

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->translationDocuments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadTranslationCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    if-eqz v3, :cond_9

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->selfie_required:Z

    if-nez v4, :cond_a

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-nez v5, :cond_a

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypePassport;

    if-nez v4, :cond_c

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeInternalPassport;

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    sget v3, Lorg/telegram/messenger/R$string;->PassportFrontSide:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PassportFrontSideInfo:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_6

    :cond_c
    :goto_5
    sget v3, Lorg/telegram/messenger/R$string;->PassportMainPage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->PassportMainPageInfo:I

    goto :goto_4

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadFrontCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->frontDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_d
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentDocumentsType:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeIdentityCard;

    if-nez v0, :cond_10

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_10
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->reverseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadReverseCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->reverseDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_11

    :goto_8
    const/16 v1, 0x8

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_9
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PassportActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$3;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    new-instance v0, Lorg/telegram/ui/PassportActivity$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PassportActivity$4;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Lorg/telegram/ui/PassportActivity$5;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PassportActivity$5;-><init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    iget v6, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-nez v6, :cond_1

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v13, 0x42400000    # 48.0f

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v8, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/high16 v9, 0x42600000    # 56.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sget v10, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v8, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v2, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    if-eq v0, v1, :cond_2

    if-ne v0, v7, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    :cond_4
    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createPasswordInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createRequestInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    if-ne v0, v1, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createIdentityInterface(Landroid/content/Context;)V

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->fillInitialValues()V

    goto :goto_3

    :cond_7
    if-ne v0, v7, :cond_8

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createAddressInterface(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createPhoneInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_9
    if-ne v0, v5, :cond_a

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createEmailInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createEmailVerificationInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_b
    if-ne v0, v4, :cond_c

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createPhoneVerificationInterface(Landroid/content/Context;)V

    goto :goto_3

    :cond_c
    if-ne v0, v6, :cond_d

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->createManageInterface(Landroid/content/Context;)V

    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, p2, :cond_6

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SecureDocument;

    if-eqz p2, :cond_b

    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    iput-object p3, p2, Lorg/telegram/messenger/SecureDocument;->inputFile:Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    iget-object p3, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->uploadingDocuments:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;->updateButtonState(Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    const-string p3, "error_document_all"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/telegram/ui/PassportActivity;->checkTopErrorCell(Z)V

    :cond_2
    iget p1, p2, Lorg/telegram/messenger/SecureDocument;->type:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->noAllDocumentsErrorText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string p2, "files_all"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->bottomCellTranslation:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->noAllTranslationErrorText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->errorsValues:Ljava/util/HashMap;

    const-string p2, "translation_all"

    goto :goto_0

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, p2, :cond_7

    goto/16 :goto_2

    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    if-ne p1, p2, :cond_b

    if-eqz p3, :cond_9

    array-length p1, p3

    if-lez p1, :cond_9

    const/4 p1, 0x7

    aget-object p1, p3, p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p2, p2, v1

    if-eqz p2, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const/4 p1, 0x6

    aget-object p1, p3, p1

    if-nez p1, :cond_a

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$TL_password;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$TL_password;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    aget-object p2, p3, v2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    const/4 p2, 0x2

    aget-object v3, p3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iput-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    const/4 v3, 0x3

    aget-object v3, p3, v3

    check-cast v3, [B

    iput-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v0, 0x5

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    const/16 p3, 0x100

    new-array p3, p3, [B

    iput-object p3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_a

    iput p2, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->loadPasswordInfo()V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->updatePasswordInterface()V

    :cond_b
    :goto_2
    return-void
.end method

.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;ZIJZ)V
    .locals 0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    new-instance p5, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {p5}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    iput-object p6, p5, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/PassportActivity;->processSelectedFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method public didSelectPhotos(Ljava/util/ArrayList;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->processSelectedFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-ne v1, v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 35

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/4 v12, 0x0

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->extraBackgroundView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->extraBackgroundView2:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v11

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->documentsCells:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "valueTextView"

    const-string v5, "textView"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const-class v7, Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v7, v8, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v13, v6

    move-object v14, v3

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v7, v8, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v20, 0x0

    const/4 v15, 0x0

    move-object v13, v6

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v7, v6, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v5

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const-class v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    new-array v7, v11, [Ljava/lang/Class;

    aput-object v6, v7, v12

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v7

    move/from16 v29, v8

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v6, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v7

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v9, v11, [Ljava/lang/Class;

    aput-object v6, v9, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v23, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v9

    move/from16 v29, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const-class v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    new-array v9, v11, [Ljava/lang/Class;

    aput-object v3, v9, v12

    const/16 v17, 0x0

    move-object v13, v2

    move-object/from16 v16, v9

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v3, v10, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v21, v10

    move/from16 v26, v7

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v3, v10, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v30

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v9, v3, v12

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v9

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const-class v3, Lorg/telegram/ui/PassportActivity$TextDetailSecureCell;

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v3, v10, v12

    move-object v13, v2

    move-object/from16 v16, v10

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v3, v13, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v2

    move-object/from16 v19, v10

    move-object/from16 v21, v13

    move/from16 v26, v7

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v3, v13, v12

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v10

    move-object/from16 v29, v13

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v3, v10, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v13, v2

    move-object/from16 v16, v10

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v3, v6, v12

    const-string v3, "checkImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v25

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v24, v6

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-array v4, v11, [Ljava/lang/Class;

    aput-object v3, v4, v12

    const/16 v17, 0x0

    move-object v13, v2

    move-object/from16 v16, v4

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v3, v6, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v23, v6

    move/from16 v28, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v6, v8, v12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v8

    move/from16 v23, v9

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v6, v8, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v8

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v22, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    or-int v23, v4, v5

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v4, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v22, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v23, v4, v5

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v4, v2

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v22, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v23, v4, v5

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v15, v4, v5

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v11

    goto/16 :goto_2

    :cond_3
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move/from16 v25, v7

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v15, v4, v5

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v2

    move/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/16 v25, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v5, v3, v4

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v15, v3, v4

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_5

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v2, v2

    if-ge v12, v2, :cond_5

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v3, v12

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    or-int v15, v3, v4

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v3, v12

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v3, v12

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v15, v3, v4

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v3, v12

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v14, v3, v12

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v3, v4

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->inputExtraFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v4, v3, v12

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v11

    goto/16 :goto_3

    :cond_5
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->noPasswordImageView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->noPasswordTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/PassportActivity;->noPasswordSetTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText5:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->passwordForgotButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object v3, v2

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->plusTextView:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->acceptTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackground:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_passport_authorizeBackgroundSelected:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const/16 v16, 0x0

    move-object v14, v2

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PassportActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v28, v11

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    move-object v14, v2

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->emptyImageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_sessions_devicesImage:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PassportActivity;->emptyTextView1:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v14, v2

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PassportActivity;->emptyTextView2:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/PassportActivity;->emptyTextView3:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public needHideProgress()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public needShowProgress()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {p2}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity;->processSelectedFiles(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->showAttachmentError()V

    return-void

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->createChatAttachView()V

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPicturePath:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/PassportActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v1, v0

    if-ge v2, v1, :cond_5

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->checkDiscard()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->callCallback(Z)V

    :cond_5
    return v3
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->permissionsDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->permissionsItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PassportActivity;->callCallback(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDestroy()V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PassportActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 6

    iget p2, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_5

    const/16 p2, 0x11

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_6

    array-length p1, p3

    if-eqz p1, :cond_6

    aget p1, p3, v1

    if-eqz p1, :cond_6

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioVideoWithHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda24;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_3
    const/16 p2, 0x13

    if-ne p1, p2, :cond_4

    if-eqz p3, :cond_4

    array-length p2, p3

    if-lez p2, :cond_4

    aget p2, p3, v1

    if-nez p2, :cond_4

    invoke-direct {p0, v1}, Lorg/telegram/ui/PassportActivity;->processSelectedAttach(I)V

    goto :goto_0

    :cond_4
    const/16 p2, 0x16

    if-ne p1, p2, :cond_6

    if-eqz p3, :cond_6

    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->scanDocumentCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_5
    const/4 p3, 0x3

    if-ne p2, p3, :cond_6

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->pendingPhone:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity;->pendingFinishRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity;->pendingErrorRunnable:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

    iget-object v5, p0, Lorg/telegram/ui/PassportActivity;->pendingDelegate:Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity;->startPhoneVerification(ZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onResume()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    new-instance v0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PassportActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/PassportActivity;->presentAfterAnimation:Lorg/telegram/ui/PassportActivity;

    if-eqz p2, :cond_0

    new-instance p2, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/PassportActivity;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget p2, p0, Lorg/telegram/ui/PassportActivity;->currentActivityType:I

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFieldContainers:[Landroid/view/ViewGroup;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    iget p1, p0, Lorg/telegram/ui/PassportActivity;->usingSavedPassword:I

    if-ne p1, v1, :cond_7

    invoke-direct {p0, v2}, Lorg/telegram/ui/PassportActivity;->onPasswordDone(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget p2, p0, Lorg/telegram/ui/PassportActivity;->currentViewNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/PassportActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, v2

    goto :goto_0

    :cond_5
    if-eq p2, v1, :cond_6

    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity;->createChatAttachView()V

    :cond_7
    :goto_1
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity;->currentPicturePath:Ljava/lang/String;

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNeedActivityResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PassportActivity;->needActivityResult:Z

    return-void
.end method

.method public setPage(IZLandroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PassportActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/PassportActivity;->currentViewNum:I

    aget-object v4, v2, v4

    aget-object v2, v2, p1

    iput p1, p0, Lorg/telegram/ui/PassportActivity;->currentViewNum:I

    invoke-virtual {v2, p3, v1}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setTranslationX(F)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    neg-int p3, p3

    int-to-float p3, p3

    new-array v3, v0, [F

    aput p3, v3, v1

    const-string p3, "translationX"

    invoke-static {v4, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v0, [F

    aput p1, v5, v1

    invoke-static {v2, p3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object v3, p3, v1

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lorg/telegram/ui/PassportActivity$23;

    invoke-direct {p1, p0, v2, v4}, Lorg/telegram/ui/PassportActivity$23;-><init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/Components/SlideView;Lorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eq v4, v2, :cond_2

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

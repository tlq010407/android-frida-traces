.class public Lorg/telegram/ui/TwoStepVerificationSetupActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field private actionBarAnimator:Landroid/animation/AnimatorSet;

.field private actionBarBackground:Landroid/view/View;

.field private animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

.field private bottomSkipButton:Landroid/widget/TextView;

.field private buttonAnimation:Landroid/animation/AnimatorSet;

.field private buttonTextView:Landroid/widget/TextView;

.field private closeAfterSet:Z

.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

.field private currentPasswordHash:[B

.field private currentSecret:[B

.field private currentSecretId:J

.field private currentType:I

.field private descriptionText:Landroid/widget/TextView;

.field private descriptionText2:Landroid/widget/TextView;

.field private descriptionText3:Landroid/widget/TextView;

.field private doneAfterPasswordLoad:Z

.field private editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private email:Ljava/lang/String;

.field private emailCode:Ljava/lang/String;

.field private emailCodeLength:I

.field private emailOnly:Z

.field private errorColorTimeout:Ljava/lang/Runnable;

.field private finishCallback:Ljava/lang/Runnable;

.field private firstPassword:Ljava/lang/String;

.field private floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

.field private floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private fragmentsToClose:Ljava/util/ArrayList;

.field private fromRegistration:Z

.field private hint:Ljava/lang/String;

.field private ignoreTextChange:Z

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isPasswordVisible:Z

.field private keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

.field private monkeyEndCallback:Ljava/lang/Runnable;

.field private needPasswordButton:Z

.field private otherwiseReloginDays:I

.field private outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private paused:Z

.field private postedErrorColorTimeout:Z

.field private radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private scrollView:Landroid/widget/ScrollView;

.field private setAnimationRunnable:Ljava/lang/Runnable;

.field private showPasswordButton:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;

.field private waitingForEmail:Z


# direct methods
.method public static synthetic $r8$lambda$0yi7M7AGldYaQr_-nV56Me5710Y(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1sYEtuKZgsmUjEMGKU2GRF4Dxtw(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$showSetForcePasswordAlert$51(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2-2H6irg-4NJtqbE2NpLe76TAP8(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$17(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ietcwnhA7Eurg4qrpYActo9YX4(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4G89-nyjmyCdxiQJ6x9UPRHaFgE(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$57anabMqOSBxSY9cOcke50-vypM(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;ZLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$50(Lorg/telegram/tgnet/TLObject;ZLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6-zPL3_0Wr8s5KdEZ68IYGo45vs(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$23([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$6gs3JNtES69Dont-1yIOGaI-8Lc(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6v2TfZb3P-dxsTbcgUdH0zL3uWI(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$83woB9MXPjjdoisT95xkBsvtBh0(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$12(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9UHBxNNMZgzawDjnzF4x_93F3fg(Lorg/telegram/ui/CodeNumberField;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$animateSuccess$21(Lorg/telegram/ui/CodeNumberField;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ADLWQDdObr2YM50W8AynnXLqi8M(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[BLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$47([BLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQJdKyIgNbV_PmO6tX-TxRqL4dA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setRandomMonkeyIdleAnimation$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$DXU7K20wI17XYVKw4Gj-O4qFAac(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$onCodeFieldError$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$DYcXTH3Z4tOTCGf6Sd8XjzU-_Hk(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EhF1rj3EjlXyPDU85fgrIAGrOpA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$15(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7YTRCJbdcc4LqbNpX590wgyR1o(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$16(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8sMFkbY8fAUe99XJoSpWodSzWA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$30(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPFuHWAmKkBIUuYL5DnKHjt0fVo(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KkwQ2T1F7Ko9-cQidjecCeaVHJQ(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$onTransitionAnimationEnd$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$MFqhzZnpQMCvlCjH_jvJUdY1Adc(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$32(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4nT7gpXW1Zaqg3Ga10IkHXahZ0(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oo-6tyS9RSvDt8wbfUtLojts8Zs(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$31(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8Ca8ne92c7NPWBI-Aemp4MnwvY(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$28([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_17dmgez5i_OxS1JMJQYSU7-EQ(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhPQ__mJ_GK-Y8OclREPHuGHQ5Y(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$34(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAF-tBqOmSzAi8kIMP3scbVz61g(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$onTransitionAnimationEnd$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$X0dIXlwdsigZmmQTuXHAfNs45EA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$26(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XXNqlQznmchSeyJ1km3E3P5Te6Y(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xu0KghlVQgh2RpYtZvvxKPUCFvo(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$loadPasswordInfo$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y23En4L_qoBybj1DYcpDyKm46ck(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YctHZ-pKtA_TDTlj0rgUobwCKIY(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$loadPasswordInfo$41(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dIy9sH8_G2wwpMAK0YaMJizU26k(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$14(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dszUKilBlTQxSZriP-1ST06MG74(Lorg/telegram/ui/TwoStepVerificationSetupActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$46(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjJHUw2gE1lgiqQYBDF8weUn1pY(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$onCodeFieldError$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$fkZY4mnse3Eer-U50eoiVh8HqSI(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$45(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fxnuijeVnmI5keukH7UodhEZbkQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fyWnIzC7rmULsj9uWBwYYx8GYwI(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$48(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g21FwuK9K2wZyKt8Ht_rUIF2M2E(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAzi-lGch2W4fqTBXIcvk-XckJI(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$iNdDXNlwoshgMUAM_zLpbTmIrrA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5_odYFt1p43_nyBQ9H3NTanStI(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$44(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5RYk7AA2E4isn0FW6OE8v-3Wnw(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$27([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$naA-x62nkPfgaXd8Nj5qDcZ2b_w(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-eR_V0qoee0NiWDiC_HBxDb1f0(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$animateSuccess$22(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvu_aB0Sag7Sewv3p1B3lj3Hdjs(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vd1fD2N9Gqrxx-KCyyVlOMHsGHA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wfDnp6m2wWshB_imd9N-uh7n6vc(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$z2kUwcRVSStM4Hv6xzHw60ipbgo(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$29(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zGUKzCkQki6fDk12-Kc2DsTw-zo(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$setNewPassword$49(Z[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOAFwbAO2JRBbcvok3jUL-hFY9I(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$createView$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_wEJTf0fv5jPjq8QQTWckvGGJw(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->lambda$processNext$24(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needPasswordButton:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    const/4 v1, 0x6

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCodeLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->errorColorTimeout:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishCallback:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iput p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-eq p1, v1, :cond_0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->loadPasswordInfo()V

    :cond_1
    return-void
.end method

.method public constructor <init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needPasswordButton:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    const/4 v1, 0x6

    iput v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCodeLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->errorColorTimeout:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishCallback:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez p2, :cond_1

    if-eq p1, v1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->loadPasswordInfo()V

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->actionBarBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showSetForcePasswordAlert()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needPasswordButton:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->ignoreTextChange:Z

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showDoneButton(Z)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setNewPassword(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    return-object p0
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    const-wide/16 v4, 0x4b

    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda44;

    invoke-direct {v2, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    int-to-long v6, v0

    mul-long v6, v6, v4

    invoke-virtual {v1, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v2, p1

    mul-long v2, v2, v4

    const-wide/16 v4, 0x15e

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isCustomKeyboardVisible()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIntro()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method private isLandscape()Z
    .locals 2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidEmail(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_1

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$animateSuccess$21(Lorg/telegram/ui/CodeNumberField;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$22(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$createView$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$11(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
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
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return p2

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    return p2
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->ignoreTextChange:Z

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isPasswordVisible:Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->monkeyEndCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, p1, v3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, v3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isPasswordVisible:Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->monkeyEndCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, v3

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, p1, v3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->ignoreTextChange:Z

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
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
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$17(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onReset()V

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->ResetPassword:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->RestoreEmailTroubleText2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$createView$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    return-void
.end method

.method private synthetic lambda$createView$20(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$resendPasswordEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$resendPasswordEmail;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->ResendCodeInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v1, 0x0

    const-string v3, "VALIDATE_PASSWORD"

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PasswordReset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FLOOD_WAIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Seconds"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    div-int/2addr p1, v1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Minutes"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setNewPassword(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->YourEmailSkipWarningText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->YourEmailSkipWarning:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->YourEmailSkip:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

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

    if-eqz p1, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onHintDone()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setForgotPasswordOnShow()V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setBlockingAlert(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$41(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->paused:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    iget-boolean v5, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-eqz v5, :cond_1

    const-string v5, "1"

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    iget-boolean v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    if-nez v6, :cond_3

    if-eqz p2, :cond_3

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object p2, v8, v0

    const/4 p2, 0x2

    aput-object v3, v8, p2

    const/4 p2, 0x3

    aput-object v4, v8, p2

    const/4 p2, 0x4

    aput-object v5, v8, p2

    const/4 p2, 0x5

    aput-object p1, v8, p2

    const/4 p1, 0x6

    aput-object v2, v8, p1

    const/4 p1, 0x7

    aput-object v2, v8, p1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->doneAfterPasswordLoad:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    :cond_4
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadPasswordInfo$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->postedErrorColorTimeout:Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setRandomMonkeyIdleAnimation(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCodeFieldError$36()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCodeFieldError$37()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$39()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$40()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$processNext$23([B)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "VALIDATE_PASSWORD"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/16 v1, 0x9

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v0, p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$processNext$24(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->processNext()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processNext$25(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processNext$26(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "SRP_ID_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PASSWORD_HASH_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->CheckPasswordWrong:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, p1, v2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showDoneButton(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Seconds"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    div-int/2addr p1, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Minutes"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$processNext$27([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    new-instance p2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda35;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda36;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processNext$28([B)V
    .locals 7

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    invoke-static {p1, v1}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {p1, v5, v6, v2, v4}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_account$getPasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string v0, "ALGO_INVALID"

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string v0, "PASSWORD_HASH_INVALID"

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$processNext$29(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->addFragmentToClose(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentEmailCode(Ljava/lang/String;)V

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$processNext$30(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda38;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_4

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "CODE_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "FLOOD_WAIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Seconds"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Minutes"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onCodeFieldError(Z)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$processNext$31(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processNext$32(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v7, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iget-object v8, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    iget-object v9, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v3

    aput-object v7, v12, v1

    const/4 v5, 0x2

    aput-object v8, v12, v5

    const/4 v5, 0x3

    aput-object v6, v12, v5

    const/4 v5, 0x4

    aput-object v9, v12, v5

    const/4 v5, 0x5

    aput-object v10, v12, v5

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput-object v5, v12, v6

    const/4 v5, 0x7

    aput-object v11, v12, v5

    invoke-virtual {v2, v4, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    iget-object v14, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-boolean v1, v14, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    iput-boolean v1, v14, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    const-string v4, ""

    iput-object v4, v14, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    move-object v13, v2

    move-wide/from16 v16, v4

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordParams(Lorg/telegram/tgnet/tl/TL_account$Password;[BJ[B)V

    iget v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->setBlockingAlert(I)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processNext$33()V
    .locals 13

    const/4 v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->YourEmailSuccessChangedText:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->YourEmailSuccessText:I

    goto :goto_0

    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->YourPasswordSuccess:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v4, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-boolean v1, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    iput-boolean v1, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    const-string v4, ""

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v2, v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v7, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentPasswordParams([BJ[BZ)V

    iget-object v2, v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v2, v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v4, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v7, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iget-object v8, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v3

    aput-object v7, v12, v1

    const/4 v5, 0x2

    aput-object v8, v12, v5

    const/4 v5, 0x3

    aput-object v6, v12, v5

    const/4 v5, 0x4

    aput-object v9, v12, v5

    const/4 v5, 0x5

    aput-object v10, v12, v5

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput-object v5, v12, v6

    aput-object v11, v12, v0

    invoke-virtual {v2, v4, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private synthetic lambda$processNext$34(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onCodeFieldError(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_3

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Seconds"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    div-int/2addr p1, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Minutes"

    invoke-static {v3, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$processNext$35(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setNewPassword$43(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v6, 0x0

    iput-boolean v6, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    const-string v0, ""

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordParams(Lorg/telegram/tgnet/tl/TL_account$Password;[BJ[B)V

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->setBlockingAlert(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNewPassword$44(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setNewPassword$45(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    if-nez p1, :cond_0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-direct {p0, p3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setNewPassword(Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object p3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNewPassword$46(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setNewPassword$47([BLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 8

    const/4 p2, 0x1

    iget-object p3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v1, p2

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-boolean p2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, p2

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz p1, :cond_2

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    goto :goto_1

    :goto_2
    iget-wide v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    move-object v2, p3

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordParams(Lorg/telegram/tgnet/tl/TL_account$Password;[BJ[B)V

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {p3, p1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setNewPassword$48(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v11, "SRP_ID_INVALID"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda48;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V

    invoke-virtual {v3, v1, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needHideProgress()V

    if-nez v1, :cond_b

    instance-of v10, v3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-nez v10, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    if-eqz v3, :cond_b

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const-wide/16 v10, 0x0

    const-string v3, "VALIDATE_PASSWORD"

    invoke-virtual {v1, v10, v11, v3}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    if-eqz v2, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v2, v9

    goto :goto_0

    :cond_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    goto/16 :goto_a

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v1, :cond_6

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda49;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez p5, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$string;->YourEmailSuccessText:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordChangedSuccessText:I

    goto :goto_1

    :goto_2
    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    goto/16 :goto_a

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v2, v9

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-boolean v9, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-nez v2, :cond_8

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v9

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_9
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v2, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    if-eqz v4, :cond_a

    move-object v2, v4

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    :goto_4
    iget-wide v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentPasswordParams([BJ[BZ)V

    iget-boolean v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v2, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v1, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_b
    if-eqz v1, :cond_13

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "EMAIL_UNCONFIRMED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "EMAIL_UNCONFIRMED_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "EMAIL_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->PasswordEmailInvalid:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_e

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Seconds"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_e
    div-int/2addr v1, v2

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Minutes"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    const-string v1, "FloodWaitTime"

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_6

    :cond_10
    :goto_7
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/2addr v2, v9

    goto :goto_8

    :cond_11
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    move-object/from16 v3, p6

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iget-object v10, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v11, v10, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iget-object v10, v10, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v3, v7, v9

    const/4 v3, 0x2

    aput-object v11, v7, v3

    const/4 v3, 0x3

    aput-object v10, v7, v3

    const/4 v3, 0x4

    aput-object v12, v7, v3

    aput-object v13, v7, v5

    const/4 v3, 0x6

    aput-object v12, v7, v3

    aput-object v14, v7, v6

    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-direct {v2, v5, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v1, v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    if-eqz v4, :cond_12

    move-object v1, v4

    goto :goto_9

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    :goto_9
    iget-wide v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    move-object/from16 p1, v2

    move-object/from16 p2, v1

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentPasswordParams([BJ[BZ)V

    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v1, v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v2, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_13
    :goto_a
    return-void
.end method

.method private synthetic lambda$setNewPassword$49(Z[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda43;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLObject;[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setNewPassword$50(Lorg/telegram/tgnet/TLObject;ZLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    instance-of v0, v7, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    :cond_0
    const/4 v9, 0x0

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SRPHelper;->getX([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object v1

    move-object v10, v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v10, v0

    move-object v3, v9

    goto :goto_0

    :cond_2
    move-object v3, v9

    move-object v10, v3

    :goto_0
    new-instance v11, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda40;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z[BLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V

    if-nez p2, :cond_5

    if-eqz p3, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    if-eqz v0, :cond_3

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget-object v0, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_securePasswordKdfAlgoPBKDF2HMACSHA512iter100000;->salt:[B

    invoke-static {v10, v2}, Lorg/telegram/messenger/Utilities;->computePBKDF2([B[B)[B

    move-result-object v2

    new-array v13, v1, [B

    const/4 v3, 0x0

    invoke-static {v2, v3, v13, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x10

    new-array v14, v4, [B

    invoke-static {v2, v1, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [B

    iget-object v4, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x20

    move-object v12, v2

    invoke-static/range {v12 .. v18}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArraySafe([B[B[BIIII)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;-><init>()V

    iput-object v1, v8, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret:[B

    iget-wide v2, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->secure_secret_id:J

    iget v0, v8, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v8, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    invoke-static {v10, v0}, Lorg/telegram/messenger/SRPHelper;->getVBytes([BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)[B

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string v1, "ALGO_INVALID"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v11, v9, v0}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string v1, "PASSWORD_HASH_INVALID"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-interface {v11, v9, v0}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v11, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_2
    return-void
.end method

.method private synthetic lambda$setRandomMonkeyIdleAnimation$38()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setRandomMonkeyIdleAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$showSetForcePasswordAlert$51(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    return-void
.end method

.method private loadPasswordInfo()V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private needShowProgress()V
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v6, v8, v2

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v3, [F

    aput v6, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v3, [F

    aput v6, v12, v2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v12, v3, [F

    const/4 v13, 0x0

    aput v13, v12, v2

    invoke-static {v10, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const v12, 0x3dcccccd    # 0.1f

    new-array v13, v3, [F

    aput v12, v13, v2

    invoke-static {v10, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v13, v3, [F

    aput v12, v13, v2

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v5, v11, v2

    aput-object v8, v11, v3

    aput-object v6, v11, v1

    aput-object v7, v11, v0

    const/4 v0, 0x4

    aput-object v9, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v6, v8, v2

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v6, v9, v2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v3, [F

    aput v6, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v5, v0, v2

    aput-object v7, v0, v3

    aput-object v6, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onCodeFieldError(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    return-void
.end method

.method private onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void
.end method

.method private onHintDone()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v4, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v7, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentPasswordParams([BJ[BZ)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setNewPassword(Z)V

    :goto_0
    return-void
.end method

.method private processNext()V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    iput-boolean v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->doneAfterPasswordLoad:Z

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V

    return-void

    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :pswitch_1
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    if-eqz v0, :cond_3

    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    goto/16 :goto_4

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "afterSignup"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_4

    :cond_4
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v7, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v9, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordParams(Lorg/telegram/tgnet/tl/TL_account$Password;[BJ[B)V

    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    iput-boolean v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->doneAfterPasswordLoad:Z

    return-void

    :cond_5
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v1, v4, v2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v0, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_account$confirmPasswordEmail;->code:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;->code:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_4

    :pswitch_6
    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V

    return-void

    :cond_7
    invoke-direct {p0, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setNewPassword(Z)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PasswordAsHintError:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V

    return-void

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onHintDone()V

    goto/16 :goto_4

    :pswitch_8
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->onFieldError(Landroid/view/View;Landroid/widget/TextView;Z)V

    return-void

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PasswordDoNotMatch:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_a
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v4, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x2

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    iget-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iput-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentPasswordParams([BJ[BZ)V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setCurrentEmailCode(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iput-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setBlockingAlert(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setNewPassword(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$cancelPasswordEmail;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$cancelPasswordEmail;-><init>()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->firstPassword:Ljava/lang/String;

    new-instance v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    invoke-direct {v7}, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;-><init>()V

    const/4 v0, 0x2

    const-string v1, ""

    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->resetSavedPassword()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iget-boolean v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    if-eqz v2, :cond_1

    iput v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    :goto_0
    iput-object v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    iput v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    iput-object v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->hint:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_password_hash:[B

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoUnknown;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoUnknown;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    if-nez v2, :cond_4

    iput-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    :cond_4
    if-eqz v6, :cond_5

    iget v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->hint:Ljava/lang/String;

    iput-object v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->hint:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    iput-object v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget v1, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    or-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;->email:Ljava/lang/String;

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_7
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    if-eqz v1, :cond_8

    array-length v1, v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->waitingForEmail:Z

    if-eqz v1, :cond_9

    :cond_8
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    :cond_9
    iput-object v7, v0, Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;

    goto :goto_2

    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needShowProgress()V

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda31;

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;ZLjava/lang/String;Lorg/telegram/tgnet/tl/TL_account$passwordInputSettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setRandomMonkeyIdleAnimation(Z)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v4, v3, v2

    if-eq v0, v4, :cond_2

    aget-object v3, v3, v1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, v1

    goto :goto_0

    :goto_1
    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_4
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

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

.method private showDoneButton(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v5, 0x2

    const/4 v6, 0x6

    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ne v1, v7, :cond_1

    return-void

    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v7, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    const/4 v7, 0x0

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    iget-object v13, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v8, [F

    aput v10, v15, v9

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v15, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v8, [F

    aput v10, v3, v9

    invoke-static {v15, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v7, v4, v9

    invoke-static {v10, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    new-array v10, v8, [F

    aput v11, v10, v9

    invoke-static {v7, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    new-array v14, v8, [F

    aput v11, v14, v9

    invoke-static {v10, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v10, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    new-array v14, v8, [F

    aput v11, v14, v9

    invoke-static {v10, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v13, v6, v9

    aput-object v3, v6, v8

    aput-object v4, v6, v5

    const/4 v3, 0x3

    aput-object v7, v6, v3

    const/4 v3, 0x4

    aput-object v2, v6, v3

    const/4 v2, 0x5

    aput-object v10, v6, v2

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v8, [F

    aput v10, v12, v9

    invoke-static {v3, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v8, [F

    aput v10, v14, v9

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v8, [F

    aput v7, v15, v9

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v11, v15, v9

    invoke-static {v12, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v11, v15, v9

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    new-array v15, v8, [F

    aput v11, v15, v9

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    aput-object v10, v6, v8

    aput-object v7, v6, v5

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v12, v6, v3

    const/4 v3, 0x5

    aput-object v11, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationSetupActivity$15;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$15;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showSetForcePasswordAlert()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->Warning:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ForceSetPasswordAlertMessageShort"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->TwoStepVerificationSetPassword:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ForceSetPasswordCancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private switchMonkeyAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->dispatchTextWatchersTextChanged()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setRandomMonkeyIdleAnimation(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addFragmentToClose(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fragmentsToClose:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v13, 0xc8

    const-string v15, "translationZ"

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v17, 0x41a00000    # 20.0f

    const/4 v2, 0x2

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v12, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v11, Lorg/telegram/ui/TwoStepVerificationSetupActivity$1;

    invoke-direct {v11, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$1;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v11, 0x5

    const/4 v4, 0x1

    if-ne v3, v11, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    sget v11, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v3, v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    sget v11, Lorg/telegram/messenger/R$string;->AbortPasswordMenu:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v11, 0x40000000    # 2.0f

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    new-instance v6, Landroid/animation/StateListAnimator;

    invoke-direct {v6}, Landroid/animation/StateListAnimator;-><init>()V

    const v19, 0x10100a7

    filled-new-array/range {v19 .. v19}, [I

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v5, v2, [F

    aput v9, v5, v12

    aput v10, v5, v4

    invoke-static {v8, v15, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    new-array v5, v12, [I

    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v10, v2, [F

    aput v8, v10, v12

    aput v9, v10, v4

    invoke-static {v7, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/animation/StateListAnimator;[ILandroid/animation/Animator;)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/animation/StateListAnimator;)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$2;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/TransformableLoginButtonView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setTransformType(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setProgress(F)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/TransformableLoginButtonView;->setDrawBackground(Z)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v7, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/16 v8, 0x15

    if-lt v3, v8, :cond_2

    const/16 v9, 0x38

    goto :goto_0

    :cond_2
    const/16 v9, 0x3c

    :goto_0
    const/high16 v13, 0x42600000    # 56.0f

    if-lt v3, v8, :cond_3

    const/high16 v8, 0x42600000    # 56.0f

    goto :goto_1

    :cond_3
    const/high16 v8, 0x42700000    # 60.0f

    :goto_1
    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v9, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-static {v5, v8, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v8, 0x15

    if-ge v3, v8, :cond_4

    sget v8, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v1, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v6, -0x1000000

    invoke-direct {v15, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v8, v5, v12, v12}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v5, v6

    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/16 v8, 0x13

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v5, v15, v12, v13, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    new-instance v13, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda8;

    invoke-direct {v13, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-ne v5, v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isIntro()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isLandscape()Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x8

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v5, v15, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v15, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v2, v15, v12, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v2, v5, v12, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v5, 0x435c0000    # 220.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v9, v12, v5, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v9, v4, [F

    const/high16 v15, 0x40c00000    # 6.0f

    aput v15, v9, v12

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v9, 0x6

    if-eq v2, v9, :cond_8

    const/4 v15, 0x7

    if-eq v2, v15, :cond_8

    const/16 v15, 0x9

    if-eq v2, v15, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-virtual {v2, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_4
    iget v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$3;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    goto/16 :goto_9

    :pswitch_1
    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$4;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    new-instance v15, Lorg/telegram/ui/TwoStepVerificationSetupActivity$5;

    invoke-direct {v15, v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$5;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lorg/telegram/ui/TwoStepVerificationSetupActivity$6;

    invoke-direct {v10, v0, v1, v15}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$6;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    new-instance v11, Lorg/telegram/ui/TwoStepVerificationSetupActivity$7;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$7;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v11, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v6, -0x1

    invoke-static {v6, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/16 v9, 0x15

    if-lt v3, v9, :cond_9

    const/high16 v21, 0x42600000    # 56.0f

    goto :goto_5

    :cond_9
    const/high16 v21, 0x42700000    # 60.0f

    :goto_5
    const/16 v25, 0x0

    const/high16 v26, 0x41800000    # 16.0f

    const/16 v20, -0x1

    const/16 v22, 0x50

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v9, 0x15

    if-lt v3, v9, :cond_a

    const/16 v20, 0x38

    goto :goto_6

    :cond_a
    const/16 v20, 0x3c

    :goto_6
    if-lt v3, v9, :cond_b

    const/high16 v21, 0x42600000    # 56.0f

    goto :goto_7

    :cond_b
    const/high16 v21, 0x42700000    # 60.0f

    :goto_7
    const/high16 v25, 0x41c00000    # 24.0f

    const/high16 v26, 0x41800000    # 16.0f

    const/16 v22, 0x55

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, -0x1

    invoke-static {v6, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v10, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationSetupActivity$8;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$8;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v14, 0x33

    invoke-static {v6, v6, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v9, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x31

    const/16 v23, 0x0

    const/16 v24, 0x45

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    const/16 v24, 0x8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    const/16 v24, 0x9

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-virtual {v6, v7, v12}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(FZ)V

    new-instance v6, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x3

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda12;

    invoke-direct {v14, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v14, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    iget-object v6, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v14, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v8, -0x2

    invoke-static {v12, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$9;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$9;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$string;->TwoStepVerificationShowPassword:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0x15

    if-lt v3, v4, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v3, v12, v4, v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    const/16 v25, 0x10

    const/16 v26, 0x0

    const/16 v20, 0x18

    const/16 v21, 0x18

    const/16 v22, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$10;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v4, -0x1

    const/high16 v8, -0x40000000    # -2.0f

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v25, 0x41c00000    # 24.0f

    const/high16 v26, 0x42000000    # 32.0f

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x31

    const/high16 v23, 0x41c00000    # 24.0f

    const/high16 v24, 0x42000000    # 32.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    new-instance v3, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextSecondRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v26, 0x0

    const/high16 v24, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationSetupActivity$11;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$11;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v3, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_d

    aget-object v8, v3, v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result v11

    xor-int/2addr v11, v4

    invoke-virtual {v8, v11}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    new-instance v11, Lorg/telegram/ui/TwoStepVerificationSetupActivity$12;

    invoke-direct {v11, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$12;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v11, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/2addr v6, v4

    goto :goto_8

    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x20

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v26, 0x16

    const/16 v20, -0x1

    const/16 v22, 0x33

    const/16 v24, 0x24

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    const/16 v5, 0x31

    const/4 v6, -0x2

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v12, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->RestoreEmailTroubleNoEmail:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    const/16 v25, 0x0

    const/16 v26, 0x19

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x31

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText3:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iput-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->actionBarBackground:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->actionBarBackground:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x0

    const/16 v3, 0x20

    const/high16 v4, 0x42000000    # 32.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/16 v2, 0x8c

    const-string v3, ""

    const/16 v4, 0x78

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_15

    :pswitch_2
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckPasswordPerfect:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckPasswordPerfectInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckPasswordBackToSettings:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->wallet_perfect:I

    :goto_a
    const/16 v4, 0x8c

    goto/16 :goto_f

    :pswitch_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PleaseEnterCurrentPassword:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->CheckPasswordInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ForgotPassword:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText2:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v2, Lorg/telegram/messenger/R$string;->LoginPassword:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v2, 0x10000006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->wallet_science:I

    :goto_b
    const/16 v2, 0x78

    goto/16 :goto_f

    :pswitch_4
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TwoStepVerificationPasswordSet:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TwoStepVerificationPasswordSetInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TwoStepVerificationPasswordReturnPassport:I

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_f
    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Continue:I

    goto :goto_c

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TwoStepVerificationPasswordReturnSettings:I

    goto :goto_c

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->wallet_allset:I

    const/16 v2, 0xa0

    const/16 v4, 0xa0

    goto/16 :goto_f

    :pswitch_5
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TwoStepVerificationTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SetAdditionalPasswordInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TwoStepVerificationSetPassword:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->tsv_setup_intro:I

    goto/16 :goto_a

    :pswitch_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->VerificationCode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->EmailPasswordConfirmText2:I

    iget-object v5, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    if-eqz v5, :cond_11

    move-object v3, v5

    :cond_11
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v12

    const-string v3, "EmailPasswordConfirmText2"

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ResendCode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->tsv_setup_mail:I

    goto/16 :goto_b

    :pswitch_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PasswordRecovery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    if-eqz v1, :cond_12

    move-object v3, v1

    :cond_12
    invoke-static {v3}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v5, 0x2a

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v2, v3, :cond_13

    const/4 v5, -0x1

    if-eq v2, v5, :cond_13

    if-eq v3, v5, :cond_13

    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v6, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iput v2, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    new-instance v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v1, v6, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->RestoreEmailSent:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, v12

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :pswitch_8
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->RecoveryEmailTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->YourEmailSkip:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->RecoveryEmailSubtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v2, Lorg/telegram/messenger/R$string;->PaymentShippingEmailPlaceholder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->tsv_setup_email_sent:I

    goto/16 :goto_b

    :pswitch_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PasswordHint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->YourEmailSkip:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->PasswordHintDescription:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->descriptionText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v2, Lorg/telegram/messenger/R$string;->PasswordHintPlaceholder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextSecondRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->tsv_setup_hint:I

    goto/16 :goto_b

    :goto_f
    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_15

    :pswitch_a
    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v2, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PleaseEnterNewFirstPassword:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_15
    if-nez v1, :cond_16

    sget v1, Lorg/telegram/messenger/R$string;->CreatePassword:I

    goto :goto_10

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->ReEnterPassword:I

    :goto_10
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->bottomSkipButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->YourEmailSkip:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->outlineTextFirstRow:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez v2, :cond_18

    sget v2, Lorg/telegram/messenger/R$string;->EnterPassword:I

    goto :goto_12

    :cond_18
    sget v2, Lorg/telegram/messenger/R$string;->ReEnterPassword:I

    :goto_12
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v2, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez v2, :cond_19

    sget v2, Lorg/telegram/messenger/R$string;->EnterPassword:I

    goto :goto_13

    :cond_19
    sget v2, Lorg/telegram/messenger/R$string;->ReEnterPassword:I

    :goto_13
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_14

    :cond_1a
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->needPasswordButton:Z

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showPasswordButton:Landroid/widget/ImageView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v12, v2, v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_idle1:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v11, 0x42f00000    # 120.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    aput-object v2, v1, v12

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_idle2:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_monkey_close:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_peek:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_close_and_peek_to_idle:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_close_and_peek:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->tsv_setup_monkey_tracking:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v1, v3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v1, v3

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    iget-object v3, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishCallback:Ljava/lang/Runnable;

    const/16 v4, 0x61

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setRandomMonkeyIdleAnimation(Z)V

    iget v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    if-ne v1, v2, :cond_1b

    const/4 v12, 0x1

    :cond_1b
    invoke-direct {v0, v12}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->switchMonkeyAnimation(Z)V

    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_1c

    new-instance v2, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public finishFragment()V
    .locals 3

    .line 0
    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "afterSignup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method

.method public finishFragment(Z)Z
    .locals 3

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eq v1, p0, :cond_0

    instance-of v2, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v1, v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingAutoAnimator:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->ignoreNextLayout()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    move-result p1

    return p1
.end method

.method protected getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-static {v2, v3, v4, v0, v1}, Lorg/telegram/messenger/SRPHelper;->startCheck([BJ[BLorg/telegram/tgnet/TLRPC$TL_passwordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow;)Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v4, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v13, v3, v4

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

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

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->titleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideKeyboardOnShow()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

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

.method public isLightStatusBar()Z
    .locals 6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected needHideProgress()V
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v6, v9, v2

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v3, [F

    aput v7, v10, v2

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v3, [F

    aput v7, v12, v2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    const/high16 v12, 0x3f800000    # 1.0f

    new-array v13, v3, [F

    aput v12, v13, v2

    invoke-static {v10, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v13, v3, [F

    aput v12, v13, v2

    invoke-static {v10, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->floatingButtonIcon:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    new-array v13, v3, [F

    aput v12, v13, v2

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v5, v11, v2

    aput-object v6, v11, v3

    aput-object v7, v11, v1

    aput-object v8, v11, v0

    const/4 v0, 0x4

    aput-object v9, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v6, v9, v2

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v7, v9, v2

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->radialProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v3, [F

    aput v7, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v5, v0, v2

    aput-object v6, v0, v3

    aput-object v7, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showSetForcePasswordAlert()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->finishFragment()V

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isIntro()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->keyboardView:Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->doneAfterPasswordLoad:Z

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->setAnimationRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->animationDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAltFocusable(Landroid/app/Activity;I)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->paused:Z

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAltFocusable(Landroid/app/Activity;I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->editTextFirstRow:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->isCustomKeyboardVisible()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public setBlockingAlert(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->otherwiseReloginDays:I

    return-void
.end method

.method public setCloseAfterSet(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->closeAfterSet:Z

    return-void
.end method

.method public setCurrentEmailCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailCode:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPasswordParams([BJ[BZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentPasswordHash:[B

    iput-object p4, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecret:[B

    iput-wide p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->currentSecretId:J

    iput-boolean p5, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->emailOnly:Z

    return-void
.end method

.method public setFromRegistration(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->fromRegistration:Z

    return-void
.end method

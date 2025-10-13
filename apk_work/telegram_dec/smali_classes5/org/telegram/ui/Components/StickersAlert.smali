.class public Lorg/telegram/ui/Components/StickersAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersAlert$StickersShaker;,
        Lorg/telegram/ui/Components/StickersAlert$GridAdapter;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

.field private animatingDescriptions:Ljava/util/List;

.field private buttonTextColorKey:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private clearsInputField:Z

.field private customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

.field private delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private descriptionTextView:Landroid/widget/TextView;

.field private dragAndDropHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private draggedDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private emptyView:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private ignoreLayout:Z

.field private ignoreMasterDismiss:Z

.field private importingSoftware:Ljava/lang/String;

.field private importingStickers:Ljava/util/ArrayList;

.field private importingStickersPaths:Ljava/util/ArrayList;

.field private inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

.field private isEditModeEnabled:Z

.field private itemHeight:I

.field private itemSize:I

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private masterDismissListener:Ljava/lang/Runnable;

.field private onDismissListener:Ljava/lang/Runnable;

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pickerBottomFrameLayout:Landroid/widget/FrameLayout;

.field private pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private previewSendButton:Landroid/widget/TextView;

.field private previewSendButtonShadow:Landroid/view/View;

.field public probablyEmojis:Z

.field private reqId:I

.field private scrollOffsetY:I

.field private selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field private setTitle:Ljava/lang/String;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private showEmoji:Z

.field private showTooltipWhenToggle:Z

.field private stickerEmojiTextView:Landroid/widget/TextView;

.field private stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private stickerPreviewLayout:Landroid/widget/FrameLayout;

.field public stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private stickerSetCovereds:Ljava/util/ArrayList;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private final stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

.field private titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private uploadImportStickers:Ljava/util/HashMap;

.field private urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$-cwV-Sz7c8TWLamnQE-6ysGFbys(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$39(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2VYxm_DOcoX93g5CDu6zTQfWl84(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$9(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2dNy676Oxlwe6DyYeeRiYqFafto(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ocYqnYUZ1OtUhDJwt5yMUe1d_c(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9vBuATJ5X_ukSRYM2-pHbDUHySc(Lorg/telegram/ui/Components/StickersAlert;[ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$42([ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AH8fujyNJTiaB6J-2ZEiLiPkHBI(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$loadStickerSet$6(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ArF17tCELT7wYTTa6G2CbJennXo(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$disableEditMode$49(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Btl5HPijmIUNXWFAlWg3RqBOQzk(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ByFU3LmXvIWf8u-_39V2nw9UgPk(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CY35sfGrphJeuc8-TBBV5Et7En4(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D_5dxYi5VtbmnUNXRcW95y16ht8(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$didReceivedNotification$46(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EhbptkPCbN3vxSnXLIvwS3JYOVA(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDGNjig4Q8tcfzSgGfdb5tT5Swk(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$HzFiiOxgaq6LjevTMUAcGgPwKlk(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$loadStickerSet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JnxxOJVSWwS-VYud00JTGCGzakk(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$34(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDT0Emee-zk0Th9oDAipuwoZQeY(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$2(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KTFzknmx3EpHHxHoMF7wDiXFIaQ(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lqi_HqsVB5t1ZUaE6qz6GKxSBJ0(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$37(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-RH_11zl3pNodmSjRv-IaZuuVA(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$44(Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ONRbJ-o5fECuklM9l-pZ5Rfnsbk(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzamferqkLXLJbfF03D5VVDmUpM(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RPQyy6z8q6W7_qIOVsd8yXxZkls(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$onSubItemClick$22(Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpTYOXeJeE-0DsR08T6muFllBHg(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sv2-sJ6FlGLmZybalEIEXDykYJg(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$26(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uq5zNqHT1bgtME_aZ8znkFKX2ps(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$new$3(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XNuI5aML4udJFXzQYjFUbv-aMSk(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWWyOVlOew6QVkwSTB-ePsuLRrE(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YA024rq_8x3gxmqMyK39DPu4Uck(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$38(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBMpxU_UWridlDW4eVLfmpxsuss(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YabEvG2bZUvoJvqd2m2V1bKKLXk(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$8(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z7fIZoDBYPmjMD4um-4MJ89eJVc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_fOS2Tuz0xMrlWlXQ6IwgJKBkcc(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aAfMxBpZzXChxOO2qvdmmFnSJG8(Lorg/telegram/ui/Components/StickersAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJWHeNiW27UaucGjSAwh1aeS2X8(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d28kMp_4advsI50I0SmhZgkW3DI(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gF4devMjxbDvDOKf4Wa61ogh4e0(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h60IrJ3l5LanDWwA_Xm9OOlJows(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$onSubItemClick$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$iUkHnlZlhcVn59Gu8NTI2tVAKZc(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$36(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n614lW0F26m6y0hf_f3GMc3WCWI(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$onSubItemClick$21(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9ZsgWMhYPoGHyGpQR14gndjmRg(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$disableEditMode$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$s2bQQgno7eY7X_TVSJGvXcwL7fc(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$enableEditMode$47(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sC_tPqCK5sns-5SgC5FFe5xAzeg(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$45(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHnL9QJ3l5ruHKwTR9jXV0uH04s(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sO-runlW3I0JV_3xBKjWWBkpr4k(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkUrlAvailable$43(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQ8D67opUznKGY7eYQectl9T0Yg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$onSubItemClick$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQVXDc_HzJVZ_tNUiv7gaJ9TkA4(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$35(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tgB7695j-b3AwNi3UZfjeNrCu3s(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$40(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vWXJJp6mW1GCj3LJwN_Afq0YP5E(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$checkOptions$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$wMi-xouaGO06FIzG79bnlqf6Qjk(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$init$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wqkYtum1HymkFQuy-L-oLyDDpUs(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$showNameEnterAlert$41(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwaiq7GmvLyhOjKAPr2XZfxt2-o(Lorg/telegram/ui/Components/StickersAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->lambda$updateFields$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zO6eFrxIcN7M3qVOpQ1OOzGSEDE(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->lambda$enableEditMode$48()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;-><init>(Lorg/telegram/ui/Components/StickersAlert$1;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Photo;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez p3, :cond_1

    new-array p3, v0, [B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez p3, :cond_1

    new-array p3, v0, [B

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_1
    :goto_0
    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    :cond_2
    new-instance p3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda33;

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p2, p4, p3}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v0, p4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p5, 0x2

    new-array v0, p5, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array p5, p5, [Landroid/view/View;

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    new-instance p5, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;-><init>(Lorg/telegram/ui/Components/StickersAlert$1;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    new-instance p5, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    move-object p5, p1

    check-cast p5, Landroid/app/Activity;

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->importingSoftware:Ljava/lang/String;

    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda9;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p6, 0x2

    new-array v0, p6, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-array p6, p6, [Landroid/view/View;

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 p6, 0x1

    iput-boolean p6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    new-instance p6, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;-><init>(Lorg/telegram/ui/Components/StickersAlert$1;)V

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    new-instance p6, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {p6, p0}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, p7}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V
    .locals 8

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/StickersAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->isEmoji()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert;->itemHeight:I

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->itemHeight:I

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersShaker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->draggedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->draggedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/StickersAlert;Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickersAlert;->checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/StickersAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/StickersAlert;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/StickersAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method private checkOptions()V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v5, Lorg/telegram/messenger/R$string;->StickersReorder:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v5, Lorg/telegram/messenger/R$string;->EditName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v1, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_3

    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v5, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v4, v5, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v4, Lorg/telegram/messenger/R$string;->StickersDeleteForEveryone:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    sget v5, Lorg/telegram/messenger/R$string;->StickersRemoveForMe:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v5, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda21;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    new-instance v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x4

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(Landroid/view/View;II)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method private checkPremiumStickers()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method private checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/messenger/R$string;->ImportStickersLinkAvailable:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    iget p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    invoke-virtual {p3, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersEnterUrlInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    const/4 p3, 0x0

    iput-boolean p3, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    if-eqz p2, :cond_9

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_4

    const/16 v2, 0x39

    if-le v1, v2, :cond_7

    :cond_4
    const/16 v2, 0x61

    if-lt v1, v2, :cond_5

    const/16 v2, 0x7a

    if-le v1, v2, :cond_7

    :cond_5
    const/16 v2, 0x41

    if-lt v1, v2, :cond_6

    const/16 v2, 0x5a

    if-le v1, v2, :cond_7

    :cond_6
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersEnterUrlInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalid:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_9
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x5

    if-ge p3, v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x20

    if-le p3, v0, :cond_b

    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalidLong:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_b
    sget p3, Lorg/telegram/messenger/R$string;->ImportStickersLinkChecking:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    new-instance p3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda44;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x12c

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_c
    :goto_2
    sget p2, Lorg/telegram/messenger/R$string;->ImportStickersLinkInvalidShort:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private hidePreview()V
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$14;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$3;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$3;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v1, v2, v8, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/16 v3, 0x33

    const/4 v9, -0x1

    invoke-direct {v1, v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v8

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v8

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$4;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$4;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$5;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/Components/StickersAlert$5;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$6;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$7;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3, v8}, Lorg/telegram/ui/Components/StickersAlert$7;-><init>(Lorg/telegram/ui/Components/StickersAlert;II)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->dragAndDropHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-direct {v2, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$8;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v8, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$9;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v19, 0x0

    const/high16 v20, 0x42400000    # 48.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/high16 v18, 0x42400000    # 48.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$10;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/Components/StickersAlert$10;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v14, 0x41900000    # 18.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v20, 0x42200000    # 40.0f

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42480000    # 50.0f

    const/16 v17, 0x33

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v3, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v20, 0x40a00000    # 5.0f

    const/16 v15, 0x28

    const/high16 v16, 0x42200000    # 40.0f

    const/16 v17, 0x35

    const/high16 v19, 0x40a00000    # 5.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v4, Lorg/telegram/messenger/R$string;->StickersShare:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v13, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v4, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    const/16 v6, 0x53

    invoke-direct {v1, v9, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v15, v2, v13

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v13

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v15, v15, v13

    invoke-virtual {v2, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v15, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    iput v3, v0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x41600000    # 14.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v1, v12, v8, v14, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v9, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v7, v8, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v4, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/high16 v23, 0x41000000    # 8.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v18, -0x1

    const/high16 v19, 0x42400000    # 48.0f

    const/16 v20, 0x57

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda16;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-virtual {v1, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/16 v12, 0x55

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v8, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v3, 0x30

    invoke-static {v9, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    invoke-direct {v1, v9, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->updateColors()V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private isEmoji()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->probablyEmojis:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkOptions$14(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$checkOptions$15(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$checkOptions$16()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$checkOptions$17(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/StickersDialogs;->showDeleteForEveryOneDialog(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkOptions$18()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-string v2, "stickers"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method

.method private synthetic lambda$checkOptions$19(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda47;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$checkUrlAvailable$43(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ImportStickersLinkAvailable:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ImportStickersLinkTaken:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkUrlAvailable$44(Ljava/lang/String;Landroid/widget/TextView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Landroid/widget/TextView;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUrlAvailable$45(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_checkShortName;->short_name:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->checkReqId:I

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$46(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    const-string v0, "application/x-tgsticker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_4
    return-void
.end method

.method private static synthetic lambda$disableEditMode$49(Landroid/view/View;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disableEditMode(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$disableEditMode$50()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$enableEditMode$47(Landroid/view/View;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->enableEditMode(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$enableEditMode$48()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$init$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$init$11(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkOptions()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$init$12(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V

    return-void
.end method

.method private synthetic lambda$init$13(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZI)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$init$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$init$8(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->masterDismissListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$init$9(Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    instance-of v6, v1, Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;

    if-eqz v6, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1, v3, v4}, Lorg/telegram/ui/Components/StickersDialogs;->showAddStickerDialog(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/view/View;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_0
    iget-boolean v6, v0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz v6, :cond_1

    return-void

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$6900(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v1, :cond_d

    iput-boolean v5, v0, Lorg/telegram/ui/Components/StickersAlert;->ignoreMasterDismiss:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v9, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, v9, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v7, v0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    iget-object v8, v0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->masterDismissListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert;->show()V

    goto/16 :goto_7

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    const-wide/16 v7, 0xc8

    if-eqz v6, :cond_8

    if-ltz v2, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iput-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v1, v6, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedStickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-boolean v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v1, :cond_6

    const-string v1, "tgs"

    :goto_0
    move-object/from16 v16, v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_7

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v6, :cond_d

    if-ltz v2, :cond_d

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v2, 0x0

    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v9, :cond_a

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    add-int/2addr v2, v5

    goto :goto_4

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    goto :goto_5

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_c

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v2, :cond_d

    :cond_c
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const-string v14, "webp"

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    :cond_d
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$loadStickerSet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickersAlert$2;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v1, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->AddStickersNotFound:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadStickerSet$6(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MediaDataController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-nez p1, :cond_2

    instance-of v1, p2, Lorg/telegram/tgnet/Vector;

    if-eqz v1, :cond_2

    check-cast p2, Lorg/telegram/tgnet/Vector;

    iget-object p1, p2, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto :goto_1

    :cond_0
    iget-object p1, p2, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet(Z)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v1, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p5, :cond_0

    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    invoke-virtual {p4, p1, p5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p3, p4, p5}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    const/high16 v3, 0x4000000

    const/4 v4, 0x1

    invoke-virtual {v2, v1, p2, v4, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/net/Uri;

    if-eqz v7, :cond_a

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->getStickerExt(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v8, "tgs"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v4, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v9, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    new-instance v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-direct {v9}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;-><init>()V

    iput-boolean v8, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    const/16 v10, 0x200

    if-eqz v8, :cond_4

    const/16 v11, 0x40

    goto :goto_2

    :cond_4
    const/16 v11, 0x200

    :goto_2
    mul-int/lit16 v11, v11, 0x400

    int-to-long v11, v11

    invoke-static {v6, v7, v11, v12}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    if-nez v6, :cond_5

    goto :goto_6

    :cond_5
    if-nez v8, :cond_8

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, v10, :cond_6

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_6

    if-le v8, v10, :cond_7

    :cond_6
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v8, v10, :cond_a

    if-lez v6, :cond_a

    if-le v6, v10, :cond_7

    goto :goto_6

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    iput-boolean v2, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    goto :goto_3

    :cond_8
    const-string v6, "application/x-tgsticker"

    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_4
    iput-object v6, v9, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string v6, "#\ufe0f\u20e3"

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_7
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v0, v4}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onSubItemClick$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1

    move-object v3, p0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onSubItemClick$21(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda51;

    invoke-direct {p2, p1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onSubItemClick$22(Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_renameStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickers_renameStickerSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_renameStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_stickers_renameStickerSet;->title:Ljava/lang/String;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda43;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onSubItemClick$23()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$34(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$35(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$showNameEnterAlert$36(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$37(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private static synthetic lambda$showNameEnterAlert$38(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda46;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$39(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestedShortName;->short_name:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Lorg/telegram/ui/Components/StickersAlert;->checkUrlAvailable(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p1, p3, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    if-nez v0, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x2

    aput p1, p5, v1

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$40(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda49;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$41(Ljava/lang/String;)V
    .locals 4

    new-instance p1, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3, v2}, Lorg/telegram/ui/Components/ImportingAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$showNameEnterAlert$42([ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 7

    const/4 p6, 0x0

    aget v0, p1, p6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    aput v1, p1, p6

    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;-><init>()V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lorg/telegram/ui/Components/StickersAlert;->setTitle:Ljava/lang/String;

    iput-object p6, p5, Lorg/telegram/tgnet/TLRPC$TL_stickers_suggestShortName;->title:Ljava/lang/String;

    iget p6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p6

    new-instance v6, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda41;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;[I)V

    invoke-virtual {p6, p5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne v0, p3, :cond_3

    const/4 p4, 0x3

    aput p4, p1, p6

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->lastNameAvailable:Z

    if-nez p1, :cond_2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p2, p4, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->setTitle:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->lastCheckName:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->importingSoftware:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda42;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper;->prepareImportStickers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$24(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$25(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->onCustomButtonPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFields$26(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    :try_start_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v4, 0x5dc

    invoke-static {p1, v1, v4}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    invoke-virtual {p1, v1, v2, v0, p2}, Lorg/telegram/messenger/MediaDataController;->processStickerSetInstallResultArchive(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->loadStickers(IZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateFields$28(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetInstalled()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->cancelRemovingStickerSet(J)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$29(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->disableEditMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->enableEditMode()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFields$30(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetUninstalled()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$31(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;->onStickerSetUninstalled()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateFields$32(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->showNameEnterAlert()V

    return-void
.end method

.method private synthetic lambda$updateFields$33(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const-string v1, "https://"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/addemoji/"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/addstickers/"

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_3
    move-object v3, p1

    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$11;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/StickersAlert$11;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    :try_start_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->disableEditMode()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->enableEditMode()V

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/StickersDialogs;->showNameEditorDialog(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/StickersDialogs;->showDeleteForEveryOneDialog(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_1
    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    if-nez p2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, p1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    new-array v6, v1, [F

    aput v5, v6, v0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$15;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$15;-><init>(Lorg/telegram/ui/Components/StickersAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method private setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 6

    .line 0
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V

    return-void
.end method

.method private setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V
    .locals 5

    .line 0
    if-ltz p3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    iput p3, p0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    if-ltz p4, :cond_2

    if-ltz p5, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p4

    invoke-virtual {p0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p5

    invoke-static {v3, p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p4, 0x41000000    # 8.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpg-float p2, p2, p1

    if-gez p2, :cond_3

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {p5, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    cmpg-float p2, p2, p1

    if-gez p2, :cond_3

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xf0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setScrollOffsetY(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showNameEnterAlert()V
    .locals 17

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->ImportStickersEnterName:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v4, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda25;

    invoke-direct {v5}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {v6, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x24

    const/16 v10, 0x33

    const/16 v11, 0x18

    const/4 v12, 0x6

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v9, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLines(I)V

    const-string v11, "t.me/addstickers/"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x4001

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setInputType(I)V

    const/16 v12, 0x33

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x6

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v9, v1, v14, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v14, -0x2

    const/16 v15, 0x24

    invoke-static {v14, v15, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputField:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputFieldActivated:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v1, v0, v14, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    invoke-virtual {v1, v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v0, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$13;

    invoke-direct {v0, v7, v2, v8, v1}, Lorg/telegram/ui/Components/StickersAlert$13;-><init>(Lorg/telegram/ui/Components/StickersAlert;[ILandroid/widget/TextView;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, -0x1

    const/16 v10, 0x24

    invoke-static {v0, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda26;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda27;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v6, v3, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v3, Lorg/telegram/messenger/R$string;->ImportStickersEnterNameInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v8, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v8, v5, v10, v3, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v7, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x2

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda28;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda29;

    move-object v0, v11

    move-object v3, v1

    move-object/from16 v1, p0

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/StickersAlert;[ILorg/telegram/ui/Components/EditTextBoldCursor;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDescription()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    :cond_1
    return-void
.end method

.method private updateFields()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_1

    const-string v4, "@[a-zA-Z\\d_]{1,32}"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->urlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v5, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x40

    if-eq v8, v9, :cond_3

    add-int/2addr v6, v1

    :cond_3
    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$12;

    add-int/lit8 v9, v6, 0x1

    invoke-interface {v2, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lorg/telegram/ui/Components/StickersAlert$12;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v6, v7, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    move-object v2, v5

    goto :goto_3

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->isEmoji()Z

    move-result v2

    const/4 v4, 0x5

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x42700000    # 60.0f

    goto :goto_4

    :cond_7
    const/high16 v6, 0x42340000    # 45.0f

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1902(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1902(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1900(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_a

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-direct {p0, v3, v3, v0}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumEmoji:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9
    add-int/2addr v2, v1

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v3, :cond_e

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_e

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v5, :cond_e

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    :goto_7
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v6, :cond_c

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v8, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    add-int/2addr v5, v1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_8
    xor-int/2addr v3, v1

    goto :goto_a

    :cond_e
    if-eqz v3, :cond_10

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_10

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v3, 0x1

    :goto_a
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    if-eqz v5, :cond_11

    new-instance v7, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonText()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonTextColorKey()I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonColorKey()I

    move-result v10

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;->getCustomButtonRippleColorKey()I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V

    return-void

    :cond_11
    if-eqz v3, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_12

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v6, :cond_12

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v6, :cond_12

    const/4 v1, 0x5

    goto :goto_b

    :cond_12
    if-eqz v5, :cond_13

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v4, :cond_13

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v4, :cond_13

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->areStickersLoaded(I)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, -0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V

    return-void

    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v3, :cond_1b

    if-eqz v1, :cond_16

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_16

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v2, :cond_16

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_c

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_c
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "AddManyMasksCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v3, v0

    goto :goto_11

    :cond_16
    if-eqz v1, :cond_18

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_18

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_e

    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_e
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "AddManyEmojiCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_18
    if-eqz v1, :cond_1a

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v1, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v1, 0x0

    :goto_10
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "AddManyStickersCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :goto_11
    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V

    goto/16 :goto_16

    :cond_1b
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v3, :cond_1d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz v0, :cond_1c

    sget v0, Lorg/telegram/messenger/R$string;->Done:I

    goto :goto_12

    :cond_1c
    sget v0, Lorg/telegram/messenger/R$string;->EditStickers:I

    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    move-object v6, v0

    goto :goto_14

    :cond_1d
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v4, :cond_1e

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "RemoveManyMasksCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1e
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_1f

    const-string v2, "RemoveManyEmojiCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1f
    const-string v2, "RemoveManyStickersCount"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :goto_14
    if-eqz v3, :cond_20

    new-instance v5, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;III)V

    goto :goto_16

    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v0, :cond_21

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    :goto_15
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v0, v6, v1}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    goto :goto_16

    :cond_21
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    goto :goto_15

    :goto_16
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1b

    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_17

    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_17
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Stickers"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_18

    :cond_24
    sget v1, Lorg/telegram/messenger/R$string;->ImportStickersProcessing:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-direct {p0, v3, v1, v2}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1b

    :cond_25
    :goto_18
    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    sget v3, Lorg/telegram/messenger/R$string;->ImportStickers:I

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v4, :cond_26

    :goto_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1a

    :cond_26
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    goto :goto_19

    :goto_1a
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v0, "ImportStickers"

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-direct {p0, v2, v0, v3}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1b

    :cond_27
    sget v0, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/Components/StickersAlert;->setButton(Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    :goto_1b
    return-void
.end method

.method private updateLayout()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    if-eq v4, v0, :cond_1

    if-le v4, v6, :cond_2

    :cond_1
    move-object v2, v5

    move v4, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    :goto_1
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    if-eq v0, v1, :cond_5

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setScrollOffsetY(I)V

    :cond_5
    return-void
.end method

.method private updateSendButton()V
    .locals 11

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersRemove:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v10, v0

    const/4 v6, 0x0

    const/high16 v7, 0x41f00000    # 30.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v0

    move v2, v10

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    move v1, v0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SendSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x11

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-nez p1, :cond_1

    return-void

    :cond_1
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v1, 0x1

    aget-object p3, p3, v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$InputFile;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/StickersAlert;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    invoke-virtual {p1, v0, p3, v1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->uploadMedia(ILorg/telegram/tgnet/TLRPC$InputFile;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    if-nez p1, :cond_3

    return-void

    :cond_3
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->removeSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->uploadImportStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz p3, :cond_6

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    :cond_6
    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eq p2, p1, :cond_8

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet(Z)V

    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    :cond_9
    :goto_2
    return-void
.end method

.method public disableEditMode()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->dragAndDropHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->stopShake(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->EditStickers:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public dismiss()V
    .locals 7

    const/4 v0, 0x1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->stopShake(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreMasterDismiss:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->masterDismissListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->onDismissListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    invoke-virtual {v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->importingStickersPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-boolean v5, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    if-nez v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v5, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/2addr v3, v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_6
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public enableEditMode()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->dragAndDropHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->isEditModeEnabled:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersShaker:Lorg/telegram/ui/Components/StickersAlert$StickersShaker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->startShake()V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda36;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    new-array v7, v12, [Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object v2, v7, v13

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v11

    move/from16 v9, v22

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v2, v1, v10}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->getThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v15, v3, v13

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    move-object v14, v2

    move/from16 v21, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v24, v4, v12

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move/from16 v30, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->descriptionTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelTrendingDescription:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v4, v5

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v21, v22

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v25, v5, v6

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v30, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    iget v4, v0, Lorg/telegram/ui/Components/StickersAlert;->buttonTextColorKey:I

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v18, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v4, v6

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v30, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object v2, v11

    move/from16 v9, v22

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public loadStickerSet(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/StickersAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/messenger/MediaDataController;)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$16;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setClearsInputField(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->clearsInputField:Z

    return-void
.end method

.method public setCustomButtonDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->customButtonDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertCustomButtonDelegate;

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    return-void
.end method

.method public setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->onDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setShowTooltipWhenToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showTooltipWhenToggle:Z

    return-void
.end method

.method public show()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickersAlert;->updateColors(Z)V

    return-void
.end method

.method public updateColors(Z)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLinkSelection:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const v2, -0x20000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v2, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isAnimatingColor()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->animatingDescriptions:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public updateStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateDescription()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->checkPremiumStickers()V

    return-void
.end method

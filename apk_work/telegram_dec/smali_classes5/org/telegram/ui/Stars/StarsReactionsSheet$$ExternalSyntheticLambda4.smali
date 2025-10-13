.class public final synthetic Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/ChatActivity;

    iput p4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$4:Landroid/content/Context;

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$6:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/ChatActivity;

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$4:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$$ExternalSyntheticLambda4;->f$6:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->$r8$lambda$1zFVrFa1MWGXfcjyZPARvSWfMZI(Lorg/telegram/ui/Stars/StarsReactionsSheet;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

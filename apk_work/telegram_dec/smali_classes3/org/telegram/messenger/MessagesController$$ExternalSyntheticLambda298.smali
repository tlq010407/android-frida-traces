.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$4:[Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;[ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$4:[Z

    iput p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$4:[Z

    iget v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda298;->f$5:I

    move-object v6, p1

    check-cast v6, Ljava/lang/Long;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$xbzxK89yrZxFxdGmn4c-ZAUDB4M(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;[ZILjava/lang/Long;)V

    return-void
.end method

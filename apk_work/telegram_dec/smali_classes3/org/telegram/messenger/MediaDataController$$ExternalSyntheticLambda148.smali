.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$4:Z

    iput p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$4:Z

    iget v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda148;->f$5:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$3PG_hSxJCc7pNEgHkGUX2Xx8t5M(Lorg/telegram/messenger/MediaDataController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;ZI)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SlotsDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SlotsDrawable;ILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/SlotsDrawable;

    iput p2, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/SlotsDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/SlotsDrawable;->$r8$lambda$IpgK1I0hX9mLO-TKcVMykEKB8k4(Lorg/telegram/ui/Components/SlotsDrawable;ILorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

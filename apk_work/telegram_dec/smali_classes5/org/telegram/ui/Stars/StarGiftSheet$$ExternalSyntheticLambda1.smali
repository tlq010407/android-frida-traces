.class public final synthetic Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;[ZJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$1:[Z

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$1:[Z

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->$r8$lambda$CoWr9Xnx436WmQfv9oCyRclHPdk(Lorg/telegram/ui/Stars/StarGiftSheet;[ZJLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

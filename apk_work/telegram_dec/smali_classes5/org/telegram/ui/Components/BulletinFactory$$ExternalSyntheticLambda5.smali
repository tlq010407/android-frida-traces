.class public final synthetic Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Bulletin;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Bulletin;

    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/Bulletin;

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->$r8$lambda$bNvrD_IXAgHTRtL8BQwlhaZLiQI(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    return-void
.end method

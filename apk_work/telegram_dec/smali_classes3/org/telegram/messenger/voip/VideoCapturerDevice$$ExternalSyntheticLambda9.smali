.class public final synthetic Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;

    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->$r8$lambda$3_52mVYu9kFxf1ww_IPqEmTAycs(Lorg/telegram/messenger/voip/VideoCapturerDevice;Z)V

    return-void
.end method

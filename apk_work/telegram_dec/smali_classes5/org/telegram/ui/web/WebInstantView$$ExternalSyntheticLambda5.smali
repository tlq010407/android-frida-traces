.class public final synthetic Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/WebInstantView;

.field public final synthetic f$1:Lorg/telegram/ui/web/WebInstantView$WebPhoto;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/web/WebInstantView;

    iput-object p2, p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/web/WebInstantView;

    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/web/WebInstantView;->$r8$lambda$hFjnVezg1x57UM9BcT-jIWS8dlo(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    return-void
.end method

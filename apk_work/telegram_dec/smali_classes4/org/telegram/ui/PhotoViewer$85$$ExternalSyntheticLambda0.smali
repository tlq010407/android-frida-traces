.class public final synthetic Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$85;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$85;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PhotoViewer$85;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PhotoViewer$85;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$85$$ExternalSyntheticLambda0;->f$2:[I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$85;->$r8$lambda$fm5qVqS-RVfXLFiD6i4F8723CsE(Lorg/telegram/ui/PhotoViewer$85;Ljava/lang/Runnable;[I)V

    return-void
.end method

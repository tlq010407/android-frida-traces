.class public final synthetic Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Paint/Painting;

.field public final synthetic f$1:Lorg/telegram/ui/Components/Paint/Shape;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Paint/Painting;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/Paint/Shape;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Paint/Painting;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->$r8$lambda$6zDD4jlqPTunAMqdAHpiFV8uMrg(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    return-void
.end method

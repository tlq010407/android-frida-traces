.class public final synthetic Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocationController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/LocationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/messenger/LocationController;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocationController;->$r8$lambda$D0Lfh9XaiNeAf_QGgdQo7R90tII(Lorg/telegram/messenger/LocationController;Landroid/location/Location;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveStartedListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;

    invoke-static {v0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->$r8$lambda$zyYpMlLGFhTns4XdbrLTeQuVCxw(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;I)V

    return-void
.end method

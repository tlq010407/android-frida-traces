.class public final synthetic Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/HuaweiMap$OnMarkerClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

.field public final synthetic f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    return-void
.end method


# virtual methods
.method public final onMarkerClick(Lcom/huawei/hms/maps/model/Marker;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->$r8$lambda$VfdDvNoWdxPBdSRzpD3zgGDJMC4(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;Lcom/huawei/hms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method

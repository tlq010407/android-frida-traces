.class Lcom/huawei/hms/maps/model/Marker$1;
.super Lcom/huawei/hms/maps/internal/IAnimationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/model/Marker;->a(Lcom/huawei/hms/maps/model/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;

.field final synthetic b:Lcom/huawei/hms/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/model/Marker;Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/model/Marker$1;->b:Lcom/huawei/hms/maps/model/Marker;

    iput-object p2, p0, Lcom/huawei/hms/maps/model/Marker$1;->a:Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IAnimationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker$1;->a:Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/Marker$1;->a:Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method

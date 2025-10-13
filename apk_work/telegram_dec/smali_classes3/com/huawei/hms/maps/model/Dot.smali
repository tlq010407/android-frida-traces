.class public final Lcom/huawei/hms/maps/model/Dot;
.super Lcom/huawei/hms/maps/model/PatternItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/maps/model/PatternItem;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Type is Dot"

    return-object v0
.end method
